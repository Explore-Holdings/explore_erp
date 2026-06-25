import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import {
  Box,
  Button,
  Chip,
  Container,
  Dialog,
  DialogContent,
  DialogTitle,
  Divider,
  IconButton,
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
  FormControl,
  InputLabel,
  MenuItem,
  Select
} from "@mui/material";
import FileDownloadIcon from "@mui/icons-material/FileDownload";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import VisibilityIcon from "@mui/icons-material/Visibility";
import CloseIcon from "@mui/icons-material/Close";

function StatusChip({ status }) {
  const normalized = (status || "").toLowerCase();

  const config = {
    pending: { bg: "#fff7ed", color: "#c2410c", border: "#fdba74" },
    approved: { bg: "#ecfdf5", color: "#15803d", border: "#86efac" },
    rejected: { bg: "#fef2f2", color: "#dc2626", border: "#fca5a5" },
    checked_out: { bg: "#eff6ff", color: "#1d4ed8", border: "#93c5fd" },
    completed: { bg: "#f0fdf4", color: "#166534", border: "#4ade80" },
  };



  const current = config[normalized] || {
    bg: "#f3f4f6",
    color: "#374151",
    border: "#d1d5db",
  };

  return (
    <Chip
      label={status || "-"}
      size="small"
      sx={{ backgroundColor: current.bg, color: current.color, border: `1px solid ${current.border}`, fontWeight: 800, minWidth: 110, }}
    />
  );
}

function DetailItem({ label, value }) {
  return (
    <Box sx={{ p: 1.5, border: "1px solid #e5e7eb", borderRadius: 2 }}>
      <Typography sx={{ fontSize: "0.75rem", color: "#6b7280" }}>
        {label}
      </Typography>
      <Typography fontWeight={700}>{value || "-"}</Typography>
    </Box>
  );
}

function GatePassModal({ open, onClose, row }) {
  if (!row) return null;

  return (
    <Dialog open={open} onClose={onClose} fullWidth maxWidth="md">
      <DialogTitle sx={{ display: "flex", justifyContent: "space-between" }}>
        <Typography fontWeight={900}>Gate Pass Details</Typography>
        <IconButton onClick={onClose}>
          <CloseIcon />
        </IconButton>
      </DialogTitle>

      <Divider />

      <DialogContent>
        <Box
          sx={{ display: "grid", gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" }, gap: 1.5, }} >
            <DetailItem label="Employee Name" value={row.employee_name} />
            <DetailItem label="Reason" value={row.reason} />
            <DetailItem label="Gate Pass Date" value={row.gate_pass_date} />
            <DetailItem label="Out Time" value={row.out_time} />
            <DetailItem label="Return Time" value={row.return_time} />
            <DetailItem label="Vehicle No" value={row.vehicle_no} />
            <DetailItem label="Gate Pass Code" value={row.gate_pass_code} />
            <DetailItem label="Status" value={row.status} />
            <DetailItem label="Checked Out At" value={row.checked_out_at} />
            <DetailItem label="Checked Out By" value={ row.checked_out_by_name ? `${row.checked_out_by_name} ` : "-" } />
            <DetailItem label="Checked In At" value={row.checked_in_at} />
            <DetailItem label="Checked In By" value={ row.checked_in_by_name ? `${row.checked_in_by_name} ` : "-" } />
            <DetailItem label="Created At" value={row.created_at} />
        </Box>

        <Box sx={{ mt: 2 }}>
            <Typography
                sx={{ fontSize: "0.8rem", color: "#6b7280", mb: 1, fontWeight: 700, }} >
                Companion Employees
            </Typography>

            {row.companion_employees?.length ? (
                <Box
                sx={{ display: "grid", gridTemplateColumns: { xs: "1fr", sm: "1fr 1fr", md: "1fr 1fr 1fr", },
                    gap: 1.5,
                }}
                >
                {row.companion_employees.map((employee, index) => (
                    <Box
                    key={index}
                    sx={{
                        p: 1.5,
                        borderRadius: 2,
                        border: "1px solid #e5e7eb",
                        backgroundColor: "#f9fafb",
                    }}
                    >
                    <Typography
                        fontWeight={800}
                        sx={{
                        display: "flex",
                        alignItems: "center",
                        gap: 1,
                        }}
                    >
                        • {employee.name || "-"}
                    </Typography>

                    <Typography
                        sx={{
                        fontSize: "0.8rem",
                        color: "#6b7280",
                        mt: 0.5,
                        }}
                    >
                        {employee.department || "-"}
                    </Typography>
                    </Box>
                ))}
                </Box>
            ) : (
                <Typography color="text.secondary">-</Typography>
            )}
        </Box>

        <Box sx={{ mt: 2, display: "grid", gap: 1.5 }}>
          <DetailItem label="Manager Comment" value={row.manager_comment} />
          <DetailItem label="Reject Reason" value={row.reject_reason} />
          <DetailItem label="Remark" value={row.remark} />
        </Box>
      </DialogContent>
    </Dialog>
  );
}

export default function GatePassRequests({ auth, gatePassRequests = [] }) {
  const [search, setSearch] = useState("");
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [selectedRow, setSelectedRow] = useState(null);
  const [filter, setFilter] = useState("today");

  const rows = useMemo(() => {
    return Array.isArray(gatePassRequests) ? gatePassRequests : [];
  }, [gatePassRequests]);

  const filteredRows = useMemo(() => {
    const q = search.toLowerCase().trim();
    if (!q) return rows;

    return rows.filter((row) =>
      JSON.stringify(row).toLowerCase().includes(q)
    );
  }, [rows, search]);

  const paginatedRows = useMemo(() => {
    const start = page * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, page, rowsPerPage]);

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Gate Pass Requests" />

      <Container maxWidth="xl" sx={{ py: 4 }}>
        <Stack spacing={2}>
          <Stack direction="row" alignItems="center">
            <Button
              startIcon={<ArrowBackIcon />}
              onClick={() => router.get("/suite-services")}
            >
              Back
            </Button>

            <Typography
              variant="h5"
              fontWeight={900}
              sx={{ flex: 1, textAlign: "center" }}
            >
              Gate Pass Requests
            </Typography>
          </Stack>

          <Paper sx={{ p: 2, borderRadius: 2 }}>
           <Stack
                direction={{ xs: "column", md: "row" }}
                spacing={2}
                alignItems="center"
            >
                <TextField
                    fullWidth
                    label="Search"
                    value={search}
                    onChange={(e) => {
                        setSearch(e.target.value);
                        setPage(0);
                    }}
                />

                <FormControl sx={{ minWidth: 180 }}>
                    <InputLabel>Filter</InputLabel>

                    <Select
                        value={filter}
                        label="Filter"
                        onChange={(e) => setFilter(e.target.value)}
                    >
                        <MenuItem value="today">Today</MenuItem>
                        <MenuItem value="week">This Week</MenuItem>
                        <MenuItem value="month">This Month</MenuItem>
                        <MenuItem value="year">This Year</MenuItem>
                    </Select>
                </FormControl>

               <Button
                  variant="contained"
                  color="success"
                  startIcon={<FileDownloadIcon />}
                  onClick={() =>
                      window.open(
                          `/gate-pass-requests/export?filter=${filter}`,
                          "_blank"
                      )
                  }
              >
                  CSV
              </Button>
            </Stack>
          </Paper>

          <TableContainer component={Paper} sx={{ borderRadius: 2 }}>
            <Table>
              <TableHead>
                <TableRow sx={{ backgroundColor: "#f5f5f5" }}>
                  <TableCell sx={{ fontWeight: 800 }}>#</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Employee</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Gate Pass Date</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Out Time</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Return Time</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Trip Code</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Status</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Reason</TableCell>
                  <TableCell sx={{ fontWeight: 800 }}>Remark</TableCell>
                  <TableCell sx={{ fontWeight: 800 }} align="center">
                    Action
                  </TableCell>
                </TableRow>
              </TableHead>

              <TableBody>
                {paginatedRows.length ? (
                  paginatedRows.map((row) => (
                    <TableRow key={row.id} hover>
                      <TableCell>{row.id}</TableCell>

                      <TableCell>
                        <Typography fontWeight={700}>
                          {row.employee_name || "-"}
                        </Typography>
                      </TableCell>

                      <TableCell>{row.gate_pass_date || "-"}</TableCell>
                      <TableCell>{row.out_time || "-"}</TableCell>
                      <TableCell>{row.return_time || "-"}</TableCell>
                      <TableCell>{row.gate_pass_code || "-"}</TableCell>

                      <TableCell>
                        <StatusChip status={row.status} />
                      </TableCell>

                      <TableCell>{row.reason || "-"}</TableCell>
                      <TableCell>{row.remark || "-"}</TableCell>

                      <TableCell align="center">
                        <Button
                          size="small"
                          variant="outlined"
                          startIcon={<VisibilityIcon />}
                          onClick={() => setSelectedRow(row)}
                        >
                          View
                        </Button>
                      </TableCell>
                    </TableRow>
                  ))
                ) : (
                  <TableRow>
                    <TableCell colSpan={10} align="center" sx={{ py: 4 }}>
                      No gate pass requests found.
                    </TableCell>
                  </TableRow>
                )}
              </TableBody>
            </Table>

            <TablePagination
              component="div"
              count={filteredRows.length}
              page={page}
              rowsPerPage={rowsPerPage}
              onPageChange={(_, newPage) => setPage(newPage)}
              onRowsPerPageChange={(e) => {
                setRowsPerPage(parseInt(e.target.value, 10));
                setPage(0);
              }}
              rowsPerPageOptions={[5, 10, 25, 50, 100]}
            />
          </TableContainer>
        </Stack>
      </Container>

      <GatePassModal
        open={!!selectedRow}
        row={selectedRow}
        onClose={() => setSelectedRow(null)}
      />
    </AuthenticatedLayout>
  );
}