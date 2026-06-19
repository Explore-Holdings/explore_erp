import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import SearchOutlinedIcon from "@mui/icons-material/SearchOutlined";
import ChevronLeftIcon from "@mui/icons-material/ChevronLeft";

import {
  Box,
  Button,
  Typography,
  List,
  ListItemButton,
  ListItemText,
  Divider,
  Paper,
  Stack,
  TextField,
  InputAdornment,
  TablePagination,
  Chip,
  Table,
  TableContainer,
  TableHead,
  TableBody,
  TableRow,
  TableCell,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Select,
  MenuItem,
  FormControl,
  InputLabel,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

function StatusChip({ status }) {
  const colorMap = {
    Pending: "warning",
    Approved: "success",
    Rejected: "error",
  };

  return (
    <Chip
      label={status || "-"}
      color={colorMap[status] || "default"}
      size="small"
    />
  );
}

function LeaveRequestTable({ rows }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [search, setSearch] = useState("");
  const [departmentFilter, setDepartmentFilter] = useState("");
  const [selectedRequest, setSelectedRequest] = useState(null);

  const safeRows = Array.isArray(rows) ? rows : [];

  const departments = useMemo(() => {
    return [...new Set(safeRows.map((row) => row.department).filter(Boolean))];
  }, [safeRows]);

  const filteredRows = useMemo(() => {
    const q = search.toLowerCase().trim();

    return safeRows.filter((row) => {
      const matchesDepartment = departmentFilter
        ? row.department === departmentFilter
        : true;

      if (!matchesDepartment) return false;

      if (!q) return true;

      const searchableText = [
        row.name,
        row.employee_id,
        row.department,
        row.type,
        row.days,
        row.dateRange,
        row.reason,
        row.status,
        row.oversee_member?.name,
        row.manager_comment,
        row.reliever_comment,
        row.address,
      ]
        .filter(Boolean)
        .join(" ")
        .toLowerCase();

      return searchableText.includes(q);
    });
  }, [safeRows, search, departmentFilter]);

  const totalPages = Math.ceil(filteredRows.length / rowsPerPage);
  const currentPage = totalPages === 0 ? 0 : Math.min(page, totalPages - 1);

  const paginatedRows = useMemo(() => {
    const start = currentPage * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, currentPage, rowsPerPage]);

  const openRequest = (request) => setSelectedRequest(request);
  const closeRequest = () => setSelectedRequest(null);

  return (
    <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
      <Box sx={{ p: 2, display: "grid", gap: 2, gridTemplateColumns: { xs: "1fr", md: "2fr 1fr" } }}>
        <TextField
          fullWidth
          size="small"
          placeholder="Search leave requests..."
          value={search}
          onChange={(e) => {
            setSearch(e.target.value);
            setPage(0);
          }}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <SearchOutlinedIcon fontSize="small" />
              </InputAdornment>
            ),
          }}
        />

        <FormControl fullWidth size="small">
          <InputLabel id="department-filter-label">Department</InputLabel>
          <Select
            labelId="department-filter-label"
            label="Department"
            value={departmentFilter}
            onChange={(e) => {
              setDepartmentFilter(e.target.value);
              setPage(0);
            }}
          >
            <MenuItem value="">All Departments</MenuItem>
            {departments.map((department) => (
              <MenuItem key={department} value={department}>
                {department}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </Box>

      <TableContainer sx={{ maxHeight: "70vh" }}>
        <Table stickyHeader size="small">
          <TableHead>
            <TableRow sx={{ backgroundColor: "#f9fafb" }}>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Employee Name
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Department
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Leave Type
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Date Range
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Days
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Reason
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Status
              </TableCell>
              <TableCell sx={{ fontWeight: 800, backgroundColor: "#f9fafb" }}>
                Actions
              </TableCell>
            </TableRow>
          </TableHead>

          <TableBody>
            {paginatedRows.length ? (
              paginatedRows.map((row) => (
                <TableRow key={row.leave_request_id} hover>
                  <TableCell sx={{ fontWeight: 600 }}>{row.name || "-"}</TableCell>
                  <TableCell>{row.department || "-"}</TableCell>
                  <TableCell>{row.type || "-"}</TableCell>
                  <TableCell>{row.dateRange || "-"}</TableCell>
                  <TableCell>{row.days || "-"}</TableCell>
                  <TableCell sx={{ maxWidth: 200, wordBreak: "break-word" }}>
                    {row.reason || "-"}
                  </TableCell>
                  <TableCell>
                    <StatusChip status={row.status} />
                  </TableCell>
                  <TableCell>
                    <Button size="small" variant="contained" onClick={() => openRequest(row)}>
                      View
                    </Button>
                  </TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={9} align="center" sx={{ py: 5, color: "#6b7280" }}>
                  No records found.
                </TableCell>
              </TableRow>
            )}
          </TableBody>
        </Table>
      </TableContainer>

      <TablePagination
        component="div"
        count={filteredRows.length}
        page={currentPage}
        rowsPerPage={rowsPerPage}
        onPageChange={(_, newPage) => setPage(newPage)}
        onRowsPerPageChange={(event) => {
          setRowsPerPage(parseInt(event.target.value, 10));
          setPage(0);
        }}
        rowsPerPageOptions={[5, 10, 25, 50]}
      />

      <Dialog open={Boolean(selectedRequest)} onClose={closeRequest} fullWidth maxWidth="md">
        <DialogTitle>Leave Request Details</DialogTitle>
        <DialogContent dividers>
          {selectedRequest ? (
            <Box sx={{ display: "grid", gap: 2 }}>
              <Box sx={{ display: "grid", gap: 2, gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" } }}>
                <Paper sx={{ p: 2, borderRadius: 3, bgcolor: "#f9fafb" }}>
                  <Typography variant="subtitle2" sx={{ color: "#374151", mb: 1, fontWeight: 700 }}>
                    Employee & Request
                  </Typography>
                  <Stack spacing={1}>
                    <Typography><strong>Name:</strong> {selectedRequest.name || "-"}</Typography>
                    <Typography><strong>Employee ID:</strong> {selectedRequest.employee_id || "-"}</Typography>
                    <Typography><strong>Department:</strong> {selectedRequest.department || "-"}</Typography>
                    <Typography><strong>Leave Type:</strong> {selectedRequest.type || "-"}</Typography>
                    <Typography><strong>Date Range:</strong> {selectedRequest.dateRange || "-"}</Typography>
                    <Typography><strong>Days:</strong> {selectedRequest.days || "-"}</Typography>
                    <Typography><strong>Requested At:</strong> {selectedRequest.requested_at || "-"}</Typography>
                    <Typography><strong>Status:</strong> <StatusChip status={selectedRequest.status} /></Typography>
                  </Stack>
                </Paper>

                <Paper sx={{ p: 2, borderRadius: 3, bgcolor: "#f9fafb" }}>
                  <Typography variant="subtitle2" sx={{ color: "#374151", mb: 1, fontWeight: 700 }}>
                    Approval & Comments
                  </Typography>
                  <Stack spacing={1}>
                    <Typography><strong>Oversee Member:</strong> {selectedRequest.oversee_member?.name || "-"}</Typography>
                    <Typography><strong>Manager Comment:</strong> {selectedRequest.manager_comment || "-"}</Typography>
                    <Typography><strong>Reliever Comment:</strong> {selectedRequest.reliever_comment || "-"}</Typography>
                    <Typography><strong>Address:</strong> {selectedRequest.address || "-"}</Typography>
                    <Typography><strong>Special Request:</strong> {selectedRequest.is_special_request ? "Yes" : "No"}</Typography>
                    <Typography><strong>Half Day Session:</strong> {selectedRequest.half_day_session ? "Yes" : "No"}</Typography>
                  </Stack>
                </Paper>
              </Box>

              <Paper sx={{ p: 2, borderRadius: 3, bgcolor: "#f9fafb" }}>
                <Typography variant="subtitle2" sx={{ color: "#374151", mb: 1, fontWeight: 700 }}>
                  Reason & Documents
                </Typography>
                <Stack spacing={2}>
                  <Typography><strong>Reason:</strong> {selectedRequest.reason || "-"}</Typography>
                  {selectedRequest.documents?.length ? (
                    <Stack direction="row" spacing={1} useFlexGap flexWrap="wrap">
                      {selectedRequest.documents.map((doc) => (
                        <Button
                          key={doc.leave_request_document_id}
                          variant="outlined"
                          size="small"
                          component="a"
                          href={doc.url}
                          target="_blank"
                          rel="noopener noreferrer"
                        >
                          {doc.file_name || "View Document"}
                        </Button>
                      ))}
                    </Stack>
                  ) : (
                    <Typography color="text.secondary">No documents uploaded.</Typography>
                  )}
                </Stack>
              </Paper>
            </Box>
          ) : null}
        </DialogContent>
        <DialogActions>
          <Button onClick={closeRequest}>Close</Button>
        </DialogActions>
      </Dialog>
    </Paper>
  );
}

export default function ApprovedLeaveRequestsPage({ auth, approvedRequests = [] }) {
  const mapLeaveRows = (list) =>
    list.map((item) => ({
      ...item,
      dateRange: item.start === item.end ? item.start : `${item.start} to ${item.end}`,
    }));

  const approvedData = useMemo(() => mapLeaveRows(approvedRequests), [approvedRequests]);

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Approved Leave Requests" />

      <Box sx={{ display: "flex", minHeight: "100vh", backgroundColor: "#f5f7fa" }}>
        <Box
          sx={{
            width: SIDEBAR_WIDTH,
            backgroundColor: "#ffffff",
            borderRight: "1px solid #e5e7eb",
            p: 2,
            overflowY: "auto",
            maxHeight: "100vh",
          }}
        >
          <Typography fontWeight={900} sx={{ mb: 2 }}>
            HRMS
          </Typography>

          <Divider sx={{ mb: 2 }} />

          <List disablePadding>
            <ListItemButton
              onClick={() => router.get("/suite-services")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <HomeOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText primary="HRMS Home" primaryTypographyProps={{ fontWeight: 600 }} />
            </ListItemButton>

            <ListItemButton
              onClick={() => router.get("/hrms/leave-dashboard")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <DashboardOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText primary="Dashboard" primaryTypographyProps={{ fontWeight: 600 }} />
            </ListItemButton>

            <Divider sx={{ my: 1.5 }} />

            <Typography sx={{ fontSize: "0.75rem", color: "#6b7280", fontWeight: 700, px: 1.5, mb: 1 }}>
              LEAVE REQUESTS
            </Typography>

            <ListItemButton
              onClick={() => router.get("/hrms/leave/on-leave-today")}
              sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
            >
              <ListItemText primary="On Leave Today" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>

            <ListItemButton
              onClick={() => router.get("/hrms/leave/pending")}
              sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
            >
              <ListItemText primary="Pending Requests" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>

            <ListItemButton
              selected
              onClick={() => router.get("/hrms/leave/approved")}
              sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
            >
              <ListItemText primary="Approved Requests" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>

            <ListItemButton
              onClick={() => router.get("/hrms/leave/rejected")}
              sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
            >
              <ListItemText primary="Rejected Requests" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>
          </List>
        </Box>

        <Box sx={{ flex: 1, p: { xs: 2, md: 4 } }}>
          <Button
            startIcon={<ChevronLeftIcon />}
            onClick={() => router.get("/hrms/leave-dashboard")}
            sx={{ mb: 2, textTransform: "none", fontWeight: 600 }}
          >
            Back to Dashboard
          </Button>

          <Typography variant="h4" fontWeight={900} sx={{ color: "#111827", mb: 3 }}>
            Approved Leave Requests
          </Typography>

          <LeaveRequestTable rows={approvedData} />
        </Box>
      </Box>
    </AuthenticatedLayout>
  );
}
