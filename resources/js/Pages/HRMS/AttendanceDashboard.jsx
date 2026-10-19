import React, { useState, useMemo } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router, usePage } from "@inertiajs/react";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import FileDownloadOutlinedIcon from "@mui/icons-material/FileDownloadOutlined";
import FilterAltOutlinedIcon from "@mui/icons-material/FilterAltOutlined";
import CalendarTodayOutlinedIcon from "@mui/icons-material/CalendarTodayOutlined";
import {
    Alert,
    Box,
    Button,
    ButtonGroup,
    Chip,
    Dialog,
    DialogActions,
    DialogContent,
    DialogTitle,
    FormControl,
    FormControlLabel,
    Paper,
    Radio,
    RadioGroup,
    Stack,
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TablePagination,
    TableRow,
    TextField,
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

export default function AttendanceDashboard({ auth, attendance = [], latestEffectiveDate = null }) {
    const { flash = {} } = usePage().props;

    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(10);

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
        return attendance.filter((row) => {
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
    }, [attendance, filterType, customStart, customEnd, todayStr, thisMonthStr]);

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
                                    <TableCell sx={{ fontWeight: 900 }}>Created At</TableCell>
                                    <TableCell sx={{ fontWeight: 900 }}>Updated At</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {!filteredAttendance.length ? (
                                    <TableRow>
                                        <TableCell colSpan={8} align="center" sx={{ py: 6, color: "#64748b" }}>
                                            No attendance records found for the selected filter.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    visibleRows.map((row) => (
                                        <TableRow key={row.id} hover>
                                            <TableCell sx={{ fontWeight: 800 }}>{displayValue(row.employee_code)}</TableCell>
                                            <TableCell>{displayValue(row.employee_name)}</TableCell>
                                            <TableCell>{displayValue(row.in_time)}</TableCell>
                                            <TableCell>{displayValue(row.out_time)}</TableCell>
                                            <TableCell>{displayValue(row.effective_date)}</TableCell>
                                            <TableCell sx={{ color: row.late_reason ? "#b91c1c" : "inherit" }}>
                                                {displayValue(row.late_reason)}
                                            </TableCell>
                                            <TableCell>{formatTimestamp(row.created_at)}</TableCell>
                                            <TableCell>{formatTimestamp(row.updated_at)}</TableCell>
                                        </TableRow>
                                    ))
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
            </Box>
        </AuthenticatedLayout>
    );
}