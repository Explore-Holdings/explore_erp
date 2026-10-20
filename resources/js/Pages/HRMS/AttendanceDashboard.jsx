import React, { useState, useMemo, useEffect } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router, usePage } from "@inertiajs/react";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import FileDownloadOutlinedIcon from "@mui/icons-material/FileDownloadOutlined";
import FilterAltOutlinedIcon from "@mui/icons-material/FilterAltOutlined";
import CalendarTodayOutlinedIcon from "@mui/icons-material/CalendarTodayOutlined";
import CheckCircleOutlineIcon from "@mui/icons-material/CheckCircleOutline";
import HighlightOffIcon from "@mui/icons-material/HighlightOff";
import axios from "axios";
import {
    Alert,
    Box,
    Button,
    ButtonGroup,
    Chip,
    CircularProgress,
    Dialog,
    DialogActions,
    DialogContent,
    DialogTitle,
    FormControl,
    FormControlLabel,
    Paper,
    Radio,
    RadioGroup,
    Snackbar,
    Stack,
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TablePagination,
    TableRow,
    TextField,
    Tooltip,
    Typography,
} from "@mui/material";

const displayValue = (value) => value || "—";

const formatTimestamp = (value) => {
    if (!value) return "—";
    const timestamp = String(value).replace("T", " ");
    return timestamp.replace(/\.\d+(?=Z$)/, "").replace(/Z$/, "");
};

const getTodayString = () => {
    const d = new Date();
    const year = d.getFullYear();
    const month = String(d.getMonth() + 1).padStart(2, "0");
    const day = String(d.getDate()).padStart(2, "0");
    return `${year}-${month}-${day}`;
};

const getThisMonthString = () => {
    const d = new Date();
    const year = d.getFullYear();
    const month = String(d.getMonth() + 1).padStart(2, "0");
    return `${year}-${month}`;
};

// Returns true if in_time is strictly after 09:05:00
const isAfterNineZeroFive = (timeStr) => {
    if (!timeStr) return false;
    const cleanStr = String(timeStr).trim();
    const isPM = /pm$/i.test(cleanStr);
    const isAM = /am$/i.test(cleanStr);
    const timeOnly = cleanStr.replace(/\s*(am|pm)$/i, "");
    const parts = timeOnly.split(":");
    if (parts.length < 2) return false;
    let hours = parseInt(parts[0], 10);
    const minutes = parseInt(parts[1], 10);
    const seconds = parts[2] ? parseInt(parts[2], 10) : 0;
    if (isPM && hours < 12) hours += 12;
    if (isAM && hours === 12) hours = 0;

    return hours > 9 || (hours === 9 && (minutes > 5 || (minutes === 5 && seconds > 0)));
};

export default function AttendanceDashboard({ auth, attendance = [], latestEffectiveDate = null }) {
    const { flash = {} } = usePage().props;

    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(10);

    // Local attendance records for instant optimistic updates
    const [records, setRecords] = useState(attendance);
    const [updatingId, setUpdatingId] = useState(null);
    const [statusToast, setStatusToast] = useState(null);

    // Simple confirmation modal state
    const [confirmModal, setConfirmModal] = useState({
        open: false,
        row: null,
        action: null, // 'justify' | 'reject'
    });

    const handleRequestConfirm = (row, action) => {
        setConfirmModal({
            open: true,
            row,
            action,
        });
    };

    const handleCloseConfirm = () => {
        setConfirmModal({
            open: false,
            row: null,
            action: null,
        });
    };

    const handleConfirmAction = () => {
        if (confirmModal.row && confirmModal.action) {
            handleUpdateStatus(confirmModal.row.id, confirmModal.action);
        }
        handleCloseConfirm();
    };

    useEffect(() => {
        setRecords(attendance);
    }, [attendance]);

    // Dashboard on-screen filter state
    const [filterType, setFilterType] = useState("all"); // 'all' | 'today' | 'this_month' | 'custom'
    const [customStart, setCustomStart] = useState("");
    const [customEnd, setCustomEnd] = useState("");

    // Export dialog state
    const [exportOpen, setExportOpen] = useState(false);
    const [exportFilter, setExportFilter] = useState("today");
    const [exportStart, setExportStart] = useState("");
    const [exportEnd, setExportEnd] = useState("");

    const todayStr = useMemo(() => getTodayString(), []);
    const thisMonthStr = useMemo(() => getThisMonthString(), []);

    // Filtered records for the on-screen table
    const filteredAttendance = useMemo(() => {
        return records.filter((row) => {
            if (!row.effective_date) return filterType === "all";

            if (filterType === "today") {
                return row.effective_date === todayStr;
            }

            if (filterType === "this_month") {
                return row.effective_date.startsWith(thisMonthStr);
            }

            if (filterType === "custom") {
                if (customStart && row.effective_date < customStart) return false;
                if (customEnd && row.effective_date > customEnd) return false;
                return true;
            }

            return true;
        });
    }, [records, filterType, customStart, customEnd, todayStr, thisMonthStr]);

    const handleUpdateStatus = async (id, newStatus) => {
        setUpdatingId(id);
        const formattedStatus = newStatus.toLowerCase() === "justify" ? "Justified" : "Rejected";

        try {
            const res = await axios.patch(`/attendance-dashboard/${id}/status`, {
                status: formattedStatus,
            });
            const updatedByName = res?.data?.updated_by || auth?.user?.name || "You";
            setRecords((prev) =>
                prev.map((r) =>
                    r.id === id ? { ...r, status: formattedStatus, updated_by: updatedByName } : r
                )
            );
            setStatusToast({ type: "success", message: `Record marked as ${formattedStatus}` });
        } catch (error) {
            console.error("Axios status update failed, fallback to Inertia:", error);
            const fallbackName = auth?.user?.name || "You";
            router.patch(
                `/attendance-dashboard/${id}/status`,
                { status: formattedStatus },
                {
                    preserveScroll: true,
                    onSuccess: () => {
                        setRecords((prev) =>
                            prev.map((r) =>
                                r.id === id ? { ...r, status: formattedStatus, updated_by: fallbackName } : r
                            )
                        );
                        setStatusToast({ type: "success", message: `Record marked as ${formattedStatus}` });
                    },
                    onError: () => {
                        setStatusToast({ type: "error", message: "Failed to update attendance status" });
                    },
                }
            );
        } finally {
            setUpdatingId(null);
        }
    };

    const visibleRows = filteredAttendance.slice(page * rowsPerPage, (page + 1) * rowsPerPage);

    const handleOpenExport = () => {
        // Sync export modal defaults with currently active filter
        if (filterType === "custom") {
            setExportFilter("custom");
            setExportStart(customStart);
            setExportEnd(customEnd);
        } else if (filterType === "this_month") {
            setExportFilter("this_month");
        } else if (filterType === "today") {
            setExportFilter("today");
        } else {
            setExportFilter("today");
        }
        setExportOpen(true);
    };

    const handleDownloadExport = () => {
        const params = new URLSearchParams();
        params.append("filter", exportFilter);
        if (exportFilter === "custom") {
            if (exportStart) params.append("start_date", exportStart);
            if (exportEnd) params.append("end_date", exportEnd);
        }

        const basePath = window.location.pathname.includes("/hrms/")
            ? "/hrms/attendance-dashboard/export"
            : "/attendance-dashboard/export";

        const downloadUrl = `${basePath}?${params.toString()}`;
        const link = document.createElement("a");
        link.href = downloadUrl;
        link.setAttribute("download", "");
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
        setExportOpen(false);
    };

    return (
        <AuthenticatedLayout user={auth?.user}>
            <Head title="Employee Attendance" />

            <Box sx={{ minHeight: "100vh", backgroundColor: "#f5f7fa", p: { xs: 2, sm: 3, lg: 4 } }}>
                <Stack direction={{ xs: "column", sm: "row" }} justifyContent="space-between" spacing={2} sx={{ mb: 3 }}>
                    <Box>
                        <Typography variant="h5" fontWeight={900} sx={{ color: "#111827" }}>
                            Employee Attendance
                        </Typography>
                        <Typography variant="body2" sx={{ color: "#6b7280" }}>
                            View, filter, and export employee attendance records
                        </Typography>
                    </Box>
                    <Stack direction={{ xs: "column", sm: "row" }} spacing={1}>
                        <Button
                            variant="contained"
                            startIcon={<FileDownloadOutlinedIcon />}
                            onClick={handleOpenExport}
                            sx={{ textTransform: "none", fontWeight: 800, backgroundColor: "#1e293b", "&:hover": { backgroundColor: "#0f172a" } }}
                        >
                            Export CSV
                        </Button>
                        <Button
                            variant="outlined"
                            startIcon={<ArrowBackIcon />}
                            onClick={() => router.get("/suite-services")}
                            sx={{ textTransform: "none", fontWeight: 700 }}
                        >
                            HRMS Home
                        </Button>
                    </Stack>
                </Stack>

                {flash.success && <Alert severity="success" sx={{ mb: 2 }}>{flash.success}</Alert>}

                {/* Filter Controls Bar */}
                <Paper sx={{ p: 2, mb: 2.5, border: "1px solid #e5e7eb", borderRadius: 2 }}>
                    <Stack
                        direction={{ xs: "column", md: "row" }}
                        justifyContent="space-between"
                        alignItems={{ xs: "stretch", md: "center" }}
                        spacing={2}
                    >
                        {/* Quick filter pills */}
                        <Stack direction={{ xs: "column", sm: "row" }} spacing={1} alignItems={{ xs: "stretch", sm: "center" }}>
                            <Typography variant="body2" sx={{ fontWeight: 800, color: "#374151", mr: 1, display: "flex", alignItems: "center", gap: 0.5 }}>
                                <FilterAltOutlinedIcon fontSize="small" /> Filter:
                            </Typography>
                            <ButtonGroup size="small" variant="outlined" sx={{ flexWrap: "wrap" }}>
                                <Button
                                    variant={filterType === "all" ? "contained" : "outlined"}
                                    onClick={() => {
                                        setFilterType("all");
                                        setPage(0);
                                    }}
                                    sx={{ textTransform: "none", fontWeight: 700 }}
                                >
                                    All
                                </Button>
                                <Button
                                    variant={filterType === "today" ? "contained" : "outlined"}
                                    onClick={() => {
                                        setFilterType("today");
                                        setPage(0);
                                    }}
                                    sx={{ textTransform: "none", fontWeight: 700 }}
                                >
                                    Today
                                </Button>
                                <Button
                                    variant={filterType === "this_month" ? "contained" : "outlined"}
                                    onClick={() => {
                                        setFilterType("this_month");
                                        setPage(0);
                                    }}
                                    sx={{ textTransform: "none", fontWeight: 700 }}
                                >
                                    This Month
                                </Button>
                                <Button
                                    variant={filterType === "custom" ? "contained" : "outlined"}
                                    onClick={() => {
                                        setFilterType("custom");
                                        setPage(0);
                                    }}
                                    sx={{ textTransform: "none", fontWeight: 700 }}
                                >
                                    Custom Range
                                </Button>
                            </ButtonGroup>
                        </Stack>

                        {/* Meta info: Latest date & count */}
                        <Stack direction="row" spacing={1} alignItems="center">
                            <Chip
                                size="small"
                                icon={<CalendarTodayOutlinedIcon style={{ fontSize: 14 }} />}
                                label={`Latest: ${displayValue(latestEffectiveDate)}`}
                                sx={{ fontWeight: 700, backgroundColor: "#f1f5f9" }}
                            />
                            <Chip
                                size="small"
                                label={`${filteredAttendance.length} record(s)`}
                                color={filteredAttendance.length > 0 ? "primary" : "default"}
                                sx={{ fontWeight: 700 }}
                            />
                        </Stack>
                    </Stack>

                    {/* Date inputs when Custom Range is active */}
                    {filterType === "custom" && (
                        <Stack
                            direction={{ xs: "column", sm: "row" }}
                            spacing={2}
                            alignItems={{ xs: "stretch", sm: "center" }}
                            sx={{ mt: 2, pt: 2, borderTop: "1px dashed #e2e8f0" }}
                        >
                            <TextField
                                type="date"
                                size="small"
                                label="From Date"
                                value={customStart}
                                onChange={(e) => {
                                    setCustomStart(e.target.value);
                                    setPage(0);
                                }}
                                InputLabelProps={{ shrink: true }}
                            />
                            <TextField
                                type="date"
                                size="small"
                                label="To Date"
                                value={customEnd}
                                onChange={(e) => {
                                    setCustomEnd(e.target.value);
                                    setPage(0);
                                }}
                                InputLabelProps={{ shrink: true }}
                            />
                            {(customStart || customEnd) && (
                                <Button
                                    size="small"
                                    onClick={() => {
                                        setCustomStart("");
                                        setCustomEnd("");
                                    }}
                                    sx={{ textTransform: "none", color: "#64748b" }}
                                >
                                    Clear Dates
                                </Button>
                            )}
                        </Stack>
                    )}
                </Paper>

                {/* Records Table */}
                <Paper sx={{ border: "1px solid #e5e7eb", borderRadius: 2, overflow: "hidden" }}>
                    <TableContainer sx={{ overflowX: "auto" }}>
                        <Table size="small">
                            <TableHead>
                                <TableRow sx={{ backgroundColor: "#f8fafc" }}>
                                    <TableCell sx={{ fontWeight: 900 }}>Employee Code</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Employee Name</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>In Time</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Out Time</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Effective Date</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Late Reason</TableCell>
                                    <TableCell sx={{ fontWeight: 900, minWidth: 170 }}>Status</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Updated By</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Created At</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Updated At</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {!filteredAttendance.length ? (
                                    <TableRow>
                                        <TableCell colSpan={10} align="center" sx={{ py: 6, color: "#64748b" }}>
                                            No attendance records found for the selected filter.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    visibleRows.map((row) => {
                                        const late = isAfterNineZeroFive(row.in_time);
                                        const isUpdating = updatingId === row.id;

                                        return (
                                            <TableRow key={row.id} hover>
                                                <TableCell sx={{ fontWeight: 800 }}>{displayValue(row.employee_code)}</TableCell>
                                                <TableCell>{displayValue(row.employee_name)}</TableCell>
                                                <TableCell>
                                                    <Stack direction="row" spacing={0.75} alignItems="center">
                                                        <Typography
                                                            variant="body2"
                                                            sx={{
                                                                fontWeight: late ? 700 : 400,
                                                                color: late ? "#b91c1c" : "inherit",
                                                            }}
                                                        >
                                                            {displayValue(row.in_time)}
                                                        </Typography>
                                                        {late && (
                                                            <Chip
                                                                size="small"
                                                                label="Late"
                                                                sx={{
                                                                    height: 18,
                                                                    fontSize: "0.65rem",
                                                                    fontWeight: 800,
                                                                    bgcolor: "#fee2e2",
                                                                    color: "#991b1b",
                                                                }}
                                                            />
                                                        )}
                                                    </Stack>
                                                </TableCell>
                                                <TableCell>{displayValue(row.out_time)}</TableCell>
                                                <TableCell>{displayValue(row.effective_date)}</TableCell>
                                                <TableCell sx={{ color: row.late_reason ? "#b91c1c" : "inherit" }}>
                                                    {displayValue(row.late_reason)}
                                                </TableCell>
                                                <TableCell>
                                                    {isUpdating ? (
                                                        <Stack direction="row" spacing={1} alignItems="center">
                                                            <CircularProgress size={16} />
                                                            <Typography variant="caption" sx={{ color: "#64748b" }}>
                                                                Updating...
                                                            </Typography>
                                                        </Stack>
                                                    ) : row.status ? (
                                                        <Chip
                                                            size="small"
                                                            label={row.status}
                                                            color={
                                                                row.status.toLowerCase() === "justified" || row.status.toLowerCase() === "justify"
                                                                    ? "success"
                                                                    : row.status.toLowerCase() === "rejected" || row.status.toLowerCase() === "reject"
                                                                    ? "error"
                                                                    : "default"
                                                            }
                                                            sx={{ fontWeight: 800, fontSize: "0.75rem" }}
                                                        />
                                                    ) : late ? (
                                                        <Stack direction="row" spacing={1} alignItems="center">
                                                            <Button
                                                                size="small"
                                                                variant="contained"
                                                                color="success"
                                                                onClick={() => handleRequestConfirm(row, "justify")}
                                                                sx={{
                                                                    textTransform: "none",
                                                                    fontWeight: 700,
                                                                    fontSize: "0.75rem",
                                                                    px: 1.25,
                                                                    py: 0.25,
                                                                    minWidth: "auto",
                                                                    boxShadow: "none",
                                                                }}
                                                            >
                                                                Justify
                                                            </Button>
                                                            <Button
                                                                size="small"
                                                                variant="outlined"
                                                                color="error"
                                                                onClick={() => handleRequestConfirm(row, "reject")}
                                                                sx={{
                                                                    textTransform: "none",
                                                                    fontWeight: 700,
                                                                    fontSize: "0.75rem",
                                                                    px: 1.25,
                                                                    py: 0.25,
                                                                    minWidth: "auto",
                                                                }}
                                                            >
                                                                Reject
                                                            </Button>
                                                        </Stack>
                                                    ) : (
                                                        <Chip
                                                            size="small"
                                                            label="On Time"
                                                            sx={{
                                                                bgcolor: "#ecfdf5",
                                                                color: "#065f46",
                                                                fontWeight: 700,
                                                                fontSize: "0.75rem",
                                                                border: "1px solid #a7f3d0",
                                                            }}
                                                        />
                                                    )}
                                                </TableCell>
                                                <TableCell>{displayValue(row.updated_by)}</TableCell>
                                                <TableCell>{formatTimestamp(row.created_at)}</TableCell>
                                                <TableCell>{formatTimestamp(row.updated_at)}</TableCell>
                                            </TableRow>
                                        );
                                    })
                                )}
                            </TableBody>
                        </Table>
                    </TableContainer>
                    <TablePagination
                        component="div"
                        count={filteredAttendance.length}
                        page={page}
                        onPageChange={(_, nextPage) => setPage(nextPage)}
                        rowsPerPage={rowsPerPage}
                        onRowsPerPageChange={(event) => {
                            setRowsPerPage(Number(event.target.value));
                            setPage(0);
                        }}
                        rowsPerPageOptions={[10, 25, 50, 100]}
                    />
                </Paper>

                {/* Export Dialog */}
                <Dialog open={exportOpen} onClose={() => setExportOpen(false)} fullWidth maxWidth="sm">
                    <DialogTitle sx={{ fontWeight: 900, pb: 1 }}>Export Attendance Records</DialogTitle>
                    <DialogContent>
                        <Typography variant="body2" sx={{ color: "#64748b", mb: 2 }}>
                            Choose the date range to export as a CSV spreadsheet.
                        </Typography>

                        <FormControl component="fieldset" fullWidth sx={{ mb: 2 }}>
                            <RadioGroup
                                value={exportFilter}
                                onChange={(e) => setExportFilter(e.target.value)}
                            >
                                <FormControlLabel
                                    value="today"
                                    control={<Radio />}
                                    label={`Today (${todayStr})`}
                                    sx={{ py: 0.5 }}
                                />
                                <FormControlLabel
                                    value="this_month"
                                    control={<Radio />}
                                    label="This Month"
                                    sx={{ py: 0.5 }}
                                />
                                <FormControlLabel
                                    value="custom"
                                    control={<Radio />}
                                    label="Custom Date Range"
                                    sx={{ py: 0.5 }}
                                />
                                <FormControlLabel
                                    value="all"
                                    control={<Radio />}
                                    label="All Records"
                                    sx={{ py: 0.5 }}
                                />
                            </RadioGroup>
                        </FormControl>

                        {exportFilter === "custom" && (
                            <Stack direction={{ xs: "column", sm: "row" }} spacing={2} sx={{ mt: 1, p: 2, bgcolor: "#f8fafc", borderRadius: 1.5, border: "1px solid #e2e8f0" }}>
                                <TextField
                                    type="date"
                                    size="small"
                                    label="Start Date"
                                    fullWidth
                                    value={exportStart}
                                    onChange={(e) => setExportStart(e.target.value)}
                                    InputLabelProps={{ shrink: true }}
                                />
                                <TextField
                                    type="date"
                                    size="small"
                                    label="End Date"
                                    fullWidth
                                    value={exportEnd}
                                    onChange={(e) => setExportEnd(e.target.value)}
                                    InputLabelProps={{ shrink: true }}
                                />
                            </Stack>
                        )}
                    </DialogContent>
                    <DialogActions sx={{ px: 3, pb: 2.5 }}>
                        <Button onClick={() => setExportOpen(false)} sx={{ textTransform: "none" }}>
                            Cancel
                        </Button>
                        <Button
                            variant="contained"
                            startIcon={<FileDownloadOutlinedIcon />}
                            onClick={handleDownloadExport}
                            sx={{
                                textTransform: "none",
                                fontWeight: 800,
                                backgroundColor: "#1e293b",
                                "&:hover": { backgroundColor: "#0f172a" },
                            }}
                        >
                            Download CSV
                        </Button>
                    </DialogActions>
                </Dialog>

                {/* Simple Confirmation Dialog */}
                <Dialog
                    open={confirmModal.open}
                    onClose={handleCloseConfirm}
                    maxWidth="xs"
                    fullWidth
                    PaperProps={{
                        sx: { borderRadius: 2.5, p: 1 },
                    }}
                >
                    <DialogTitle sx={{ fontWeight: 800, pb: 1, fontSize: "1.1rem" }}>
                        Confirm Action
                    </DialogTitle>
                    <DialogContent>
                        <Typography variant="body1" sx={{ color: "#374151" }}>
                            Are you sure you want to mark this record as{" "}
                            <strong>
                                {confirmModal.action === "justify" ? "Justified" : "Rejected"}
                            </strong>
                            {confirmModal.row && (
                                <>
                                    {" "}for{" "}
                                    <strong>
                                        {confirmModal.row.employee_name || confirmModal.row.employee_code}
                                    </strong>
                                </>
                            )}
                            ?
                        </Typography>
                    </DialogContent>
                    <DialogActions sx={{ px: 3, pb: 1.5, pt: 1 }}>
                        <Button
                            onClick={handleCloseConfirm}
                            sx={{ textTransform: "none", color: "#64748b", fontWeight: 700 }}
                        >
                            Cancel
                        </Button>
                        <Button
                            variant="contained"
                            color={confirmModal.action === "justify" ? "success" : "error"}
                            onClick={handleConfirmAction}
                            sx={{ textTransform: "none", fontWeight: 700, px: 2.5 }}
                        >
                            Yes
                        </Button>
                    </DialogActions>
                </Dialog>

                {/* Status Update Toast */}
                {statusToast && (
                    <Snackbar
                        open={Boolean(statusToast)}
                        autoHideDuration={3000}
                        onClose={() => setStatusToast(null)}
                        anchorOrigin={{ vertical: "bottom", horizontal: "right" }}
                    >
                        <Alert
                            severity={statusToast.type || "success"}
                            onClose={() => setStatusToast(null)}
                            sx={{ width: "100%", boxShadow: 3 }}
                        >
                            {statusToast.message}
                        </Alert>
                    </Snackbar>
                )}
            </Box>
        </AuthenticatedLayout>
    );
}