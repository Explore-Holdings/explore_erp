import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";
import DirectionsCarOutlinedIcon from "@mui/icons-material/DirectionsCarOutlined";
import ArrowBackIcon from "@mui/icons-material/ArrowBack";
import OpenInNewIcon from "@mui/icons-material/OpenInNew";
import SearchIcon from "@mui/icons-material/Search";
import {
  Box,
  Button,
  Chip,
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
  TableRow,
  TextField,
  Typography,
  TablePagination,
} from "@mui/material";

const statusStyles = {
  pending: { backgroundColor: "#fef3c7", color: "#92400e" },
  approved: { backgroundColor: "#dcfce7", color: "#166534" },
  rejected: { backgroundColor: "#fee2e2", color: "#991b1b" },
  completed: { backgroundColor: "#dbeafe", color: "#1e40af" },
};

const displayValue = (value) => value || "—";

const invoiceUrl = (path) => {
  if (!path) return "";
  if (/^https?:\/\//i.test(path) || path.startsWith("/")) return path;
  return `/storage/${path.replace(/^storage\//, "")}`;
};

export default function PersonalVehicleRequests({ auth, requests = [] }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [invoiceDialogOpen, setInvoiceDialogOpen] = useState(false);
  const [selectedRequest, setSelectedRequest] = useState(null);
  const [invoiceNumber, setInvoiceNumber] = useState("");
  const [search, setSearch] = useState("");
  const filteredRequests = requests.filter((request) => {
    const searchText = [
      request.employee_name,
      request.vehicle_no,
      request.invoice_no,
      request.status,
    ].filter(Boolean).join(" ").toLowerCase();

    return searchText.includes(search.trim().toLowerCase());
  });
  const visibleRequests = filteredRequests.slice(page * rowsPerPage, (page + 1) * rowsPerPage);

  const handleSearchChange = (event) => {
    setSearch(event.target.value);
    setPage(0);
  };

  const openInvoiceDialog = (request) => {
    setSelectedRequest(request);
    setInvoiceNumber(request.invoice_no || "");
    setInvoiceDialogOpen(true);
  };

  const closeInvoiceDialog = () => {
    setInvoiceDialogOpen(false);
    setSelectedRequest(null);
    setInvoiceNumber("");
  };

  const saveInvoice = () => {
    if (!selectedRequest || !invoiceNumber.trim()) return;

    router.patch(`/hrms/personal-vehicle-requests/${selectedRequest.request_id}/invoice`, {
      invoice_no: invoiceNumber.trim(),
    }, {
      preserveScroll: true,
      onSuccess: closeInvoiceDialog,
    });
  };

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Personal Vehicle Requests" />

      <Box sx={{ minHeight: "100vh", backgroundColor: "#f5f7fa", p: { xs: 2, sm: 3, lg: 4 } }}>
        <Stack direction={{ xs: "column", sm: "row" }} justifyContent="space-between" spacing={2} sx={{ mb: 3 }}>
          <Stack direction="row" spacing={1.5} alignItems="center">
            <DirectionsCarOutlinedIcon sx={{ color: "#374151", fontSize: 32 }} />
            <Box>
              <Typography variant="h5" fontWeight={900} sx={{ color: "#111827" }}>
                Personal Vehicle Requests
              </Typography>
              <Typography variant="body2" sx={{ color: "#6b7280" }}>
                Employee personal vehicle request history
              </Typography>
            </Box>
          </Stack>

          <Button
            variant="outlined"
            startIcon={<ArrowBackIcon />}
            onClick={() => router.get("/hrms/vehicle-request-dashboard")}
            sx={{ alignSelf: { xs: "stretch", sm: "center" }, textTransform: "none", fontWeight: 700 }}
          >
            Vehicle Dashboard
          </Button>
        </Stack>

        <TextField
          size="small"
          value={search}
          onChange={handleSearchChange}
          placeholder="Search employee, vehicle, invoice, or status"
          InputProps={{ startAdornment: <SearchIcon sx={{ mr: 1, color: "#64748b" }} /> }}
          sx={{ width: { xs: "100%", sm: 380 }, mb: 2 }}
        />

        <Paper sx={{ border: "1px solid #e5e7eb", borderRadius: 2, overflow: "hidden" }}>
          <TableContainer sx={{ overflowX: "auto" }}>
            <Table size="small">
              <TableHead>
                <TableRow sx={{ backgroundColor: "#f8fafc" }}>
                  <TableCell sx={{ fontWeight: 900 }}>Employee Name</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>Vehicle No.</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>From</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>To</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>Status</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>Requested On</TableCell>
                  <TableCell sx={{ fontWeight: 900 }}>Invoice</TableCell>
                </TableRow>
              </TableHead>

              <TableBody>
                {!filteredRequests.length ? (
                  <TableRow>
                    <TableCell colSpan={7} align="center" sx={{ py: 5, color: "#64748b" }}>
                      {search ? "No matching personal vehicle requests found." : "No personal vehicle requests found."}
                    </TableCell>
                  </TableRow>
                ) : (
                  visibleRequests.map((request) => {
                    const status = String(request.status || "").toLowerCase();
                    const style = statusStyles[status] || { backgroundColor: "#f1f5f9", color: "#334155" };

                    return (
                      <TableRow key={request.request_id} hover>
                        <TableCell sx={{ fontWeight: 800 }}>{displayValue(request.employee_name)}</TableCell>
                        <TableCell>{displayValue(request.vehicle_no)}</TableCell>
                        <TableCell>{displayValue(request.from_date)}</TableCell>
                        <TableCell>{displayValue(request.to_date)}</TableCell>
                        <TableCell>
                          <Chip
                            size="small"
                            label={displayValue(request.status)}
                            sx={{ ...style, fontWeight: 800, textTransform: "capitalize" }}
                          />
                        </TableCell>
                        <TableCell>{displayValue(request.created_at)}</TableCell>
                        <TableCell>
                          {request.invoice_pdf_path ? (
                            <Stack direction="row" spacing={1} alignItems="center">
                              <Button
                                component="a"
                                href={invoiceUrl(request.invoice_pdf_path)}
                                target="_blank"
                                rel="noopener noreferrer"
                                size="small"
                                variant="outlined"
                                startIcon={<OpenInNewIcon />}
                                sx={{ textTransform: "none", whiteSpace: "nowrap" }}
                              >
                                View Invoice
                              </Button>
                              <Button
                                size="small"
                                variant="contained"
                                onClick={() => openInvoiceDialog(request)}
                                disabled={String(request.invoice_status || "").toUpperCase() === "CONFIRMED"}
                                sx={{ textTransform: "none", whiteSpace: "nowrap" }}
                              >
                                {String(request.invoice_status || "").toUpperCase() === "CONFIRMED" ? "Confirmed" : "Confirm"}
                              </Button>
                              {/* <Typography variant="caption" sx={{ color: "#64748b" }}>
                                {displayValue(request.invoice_no)}
                              </Typography> */}
                            </Stack>
                          ) : (
                            <Typography variant="body2" sx={{ color: "#94a3b8" }}>
                              No Invoice
                            </Typography>
                          )}
                        </TableCell>
                      </TableRow>
                    );
                  })
                )}
              </TableBody>
            </Table>
          </TableContainer>
          <TablePagination
            component="div"
            count={filteredRequests.length}
            page={page}
            onPageChange={(_, nextPage) => setPage(nextPage)}
            rowsPerPage={rowsPerPage}
            onRowsPerPageChange={(event) => {
              setRowsPerPage(Number(event.target.value));
              setPage(0);
            }}
            rowsPerPageOptions={[5, 10, 25, 50]}
          />
        </Paper>

            <Dialog open={invoiceDialogOpen} onClose={closeInvoiceDialog} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Confirm Invoice</DialogTitle>
                <DialogContent>
                    <Typography variant="body2" sx={{ color: "#64748b", mb: 2 }}>
                        Type <strong>"Invoice"</strong> to confirm.
                    </Typography>
                    <TextField
                    autoFocus
                    fullWidth
                    label="Invoice"
                    placeholder="Type invoice"
                    value={invoiceNumber}
                    onChange={(event) => setInvoiceNumber(event.target.value)}
                    inputProps={{ maxLength: 60 }}
                    />
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={closeInvoiceDialog} sx={{ textTransform: "none" }}>
                    Cancel
                    </Button>
                    <Button
                    variant="contained"
                    onClick={saveInvoice}
                    disabled={!invoiceNumber.trim()}
                    sx={{ textTransform: "none" }}
                    >
                    Confirm
                    </Button>
                </DialogActions>
            </Dialog>
        </Box>
    </AuthenticatedLayout>
  );
}