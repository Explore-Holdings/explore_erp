import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router, usePage } from "@inertiajs/react";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import CloudUploadOutlinedIcon from "@mui/icons-material/CloudUploadOutlined";
import {
    Alert,
    Box,
    Button,
    Dialog,
    DialogActions,
    DialogContent,
    DialogTitle,
    Paper,
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

export default function AttendanceDashboard({ auth, attendance = [], latestEffectiveDate = null }) {
    const { errors = {}, flash = {} } = usePage().props;
    const [page, setPage] = useState(0);
    const [rowsPerPage, setRowsPerPage] = useState(10);
    const [importOpen, setImportOpen] = useState(false);
    const [file, setFile] = useState(null);
    const [effectiveDate, setEffectiveDate] = useState("");
    const [importing, setImporting] = useState(false);

    const filteredAttendance = effectiveDate
        ? attendance.filter((row) => row.effective_date === effectiveDate)
        : attendance;
    const visibleRows = filteredAttendance.slice(page * rowsPerPage, (page + 1) * rowsPerPage);

    const closeImport = () => {
        setImportOpen(false);
        setFile(null);
    };

    const importCsv = () => {
        if (!file) return;

        const formData = new FormData();
        formData.append("file", file);

        router.post("/hrms/attendance-dashboard/import", formData, {
        forceFormData: true,
        preserveScroll: true,
        onStart: () => setImporting(true),
        onSuccess: closeImport,
        onFinish: () => setImporting(false),
        });
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
                Attendance records imported from CSV files
                </Typography>
            </Box>
            <Stack direction={{ xs: "column", sm: "row" }} spacing={1}>
                <Button
                variant="contained"
                startIcon={<CloudUploadOutlinedIcon />}
                onClick={() => setImportOpen(true)}
                disabled={importing}
                sx={{ textTransform: "none", fontWeight: 800 }}
                >
                Import CSV
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
            {errors.file && <Alert severity="error" sx={{ mb: 2 }}>{errors.file}</Alert>}

            <Stack direction={{ xs: "column", sm: "row" }} spacing={2} alignItems={{ xs: "stretch", sm: "center" }} sx={{ mb: 2 }}>
            <TextField
                type="date"
                size="small"
                label="Effective Date"
                value={effectiveDate}
                onChange={(event) => {
                setEffectiveDate(event.target.value);
                setPage(0);
                }}
                InputLabelProps={{ shrink: true }}
            />
            <Typography variant="body2" sx={{ color: "#475569", fontWeight: 700 }}>
                Latest Effective Date: {displayValue(latestEffectiveDate)}
            </Typography>
            {effectiveDate && (
                <Button
                size="small"
                onClick={() => setEffectiveDate("")}
                sx={{ alignSelf: { xs: "flex-start", sm: "center" }, textTransform: "none" }}
                >
                Clear Date
                </Button>
            )}
            </Stack>

            <Paper sx={{ border: "1px solid #e5e7eb", borderRadius: 2, overflow: "hidden" }}>
            <TableContainer sx={{ overflowX: "auto" }}>
                <Table size="small">
                <TableHead>
                    <TableRow sx={{ backgroundColor: "#f8fafc" }}>
                    {/* <TableCell sx={{ fontWeight: 900 }}>ID</TableCell> */}
                    <TableCell sx={{ fontWeight: 900 }}>EPF Number</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Employee Name</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>In Time</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Out Time</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Effective Date</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Created At</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Updated At</TableCell>
                    </TableRow>
                </TableHead>
                <TableBody>
                    {!filteredAttendance.length ? (
                    <TableRow>
                        <TableCell colSpan={8} align="center" sx={{ py: 5, color: "#64748b" }}>
                        {effectiveDate ? "No attendance records found for this date." : "No attendance records found."}
                        </TableCell>
                    </TableRow>
                    ) : (
                    visibleRows.map((row) => (
                        <TableRow key={row.id} hover>
                        {/* <TableCell>{displayValue(row.id)}</TableCell> */}
                        <TableCell sx={{ fontWeight: 800 }}>{displayValue(row.epf)}</TableCell>
                        <TableCell>{displayValue(row.employee_name)}</TableCell>
                        <TableCell>{displayValue(row.in_time)}</TableCell>
                        <TableCell>{displayValue(row.out_time)}</TableCell>
                        <TableCell>{displayValue(row.effective_date)}</TableCell>
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

            <Dialog open={importOpen} onClose={closeImport} fullWidth maxWidth="sm">
            <DialogTitle sx={{ fontWeight: 900 }}>Import Attendance CSV</DialogTitle>
            <DialogContent>
                {/* <Typography variant="body2" sx={{ color: "#64748b", mb: 2 }}>
                Select a CSV with columns: id, epf, in_time, out_time, effective_date, created_at, updated_at.
                </Typography> */}
                <Button component="label" variant="outlined" fullWidth disabled={importing} sx={{ py: 2, textTransform: "none" }}>
                {file ? file.name : "Choose CSV file"}
                <input
                    hidden
                    type="file"
                    accept=".csv,text/csv"
                    onChange={(event) => setFile(event.target.files?.[0] || null)}
                />
                </Button>
            </DialogContent>
            <DialogActions sx={{ px: 3, pb: 2 }}>
                <Button onClick={closeImport} disabled={importing} sx={{ textTransform: "none" }}>Cancel</Button>
                <Button variant="contained" onClick={importCsv} disabled={!file || importing} sx={{ textTransform: "none" }}>
                {importing ? "Importing..." : "Import"}
                </Button>
            </DialogActions>
            </Dialog>
        </Box>
        </AuthenticatedLayout>
    );
}