import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import SearchOutlinedIcon from "@mui/icons-material/SearchOutlined";

import {
  Box,
  Typography,
  List,
  ListItemButton,
  ListItemText,
  Divider,
  Tabs,
  Tab,
  Paper,
  Modal,
  Stack,
  Button,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  TablePagination,
  Chip,
  TextField,
  InputAdornment,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

function TabPanel({ children, value, index }) {
  return (
    <div hidden={value !== index}>
      {value === index && <Box sx={{ pt: 2 }}>{children}</Box>}
    </div>
  );
}

function formatBytes(bytes) {
  if (!bytes && bytes !== 0) return "-";
  if (bytes < 1024) return `${bytes} B`;
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)} KB`;
  return `${(bytes / (1024 * 1024)).toFixed(1)} MB`;
}

function filterRows(rows, search) {
  const q = search.toLowerCase().trim();
  if (!q) return rows;

  return rows.filter((row) =>
    JSON.stringify(row).toLowerCase().includes(q)
  );
}

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
      variant="filled"
    />
  );
}

function DetailItem({ label, value }) {
  return (
    <Box
      sx={{
        border: "1px solid #e5e7eb",
        borderRadius: 2,
        p: 1.5,
        backgroundColor: "#f9fafb",
      }}
    >
      <Typography sx={{ fontSize: "0.78rem", color: "#6b7280" }}>
        {label}
      </Typography>
      <Typography fontWeight={700}>{value || "-"}</Typography>
    </Box>
  );
}

function DetailBlock({ label, value }) {
  return (
    <Box
      sx={{
        border: "1px solid #e5e7eb",
        borderRadius: 2,
        p: 1.5,
        backgroundColor: "#f9fafb",
        mb: 1.5,
      }}
    >
      <Typography sx={{ fontSize: "0.78rem", color: "#6b7280", mb: 0.5 }}>
        {label}
      </Typography>
      <Typography>{value || "-"}</Typography>
    </Box>
  );
}

function LeaveDetailsModal({ open, onClose, row }) {
  if (!row) return null;

  return (
    <Modal open={open} onClose={onClose}>
      <Box
        sx={{
          width: { xs: "95%", md: 760 },
          maxHeight: "90vh",
          overflowY: "auto",
          bgcolor: "#fff",
          mx: "auto",
          my: "4vh",
          borderRadius: 3,
          boxShadow: 24,
          p: 3,
        }}
      >
        <Typography variant="h6" fontWeight={900} sx={{ mb: 2 }}>
          Leave Request Details
        </Typography>

        <Box
          sx={{
            display: "grid",
            gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" },
            gap: 2,
          }}
        >
          <DetailItem label="Employee" value={row.name} />
          <DetailItem label="Department" value={row.department} />
          <DetailItem label="Leave Type" value={row.type} />
          <DetailItem label="Status" value={row.status} />
          <DetailItem label="From" value={row.start} />
          <DetailItem label="To" value={row.end} />
          <DetailItem label="Days" value={row.days} />
          <DetailItem label="Oversee Member" value={row.oversee_member?.name || "-"} />
          <DetailItem label="Half Day Session" value={row.half_day_session || "-"} />
          <DetailItem label="Special Request" value={row.is_special_request ? "Yes" : "No"} />
        </Box>

        <Box sx={{ mt: 2 }}>
          <DetailBlock label="Reason" value={row.reason} />
          <DetailBlock label="Manager Comment" value={row.manager_comment} />
          <DetailBlock label="Reliever Comment" value={row.reliever_comment} />
          <DetailBlock label="Address" value={row.address} />
        </Box>

        <Box sx={{ mt: 3 }}>
          <Typography fontWeight={800} sx={{ mb: 1.5 }}>
            Documents
          </Typography>

          {row.documents?.length ? (
            <Stack spacing={1}>
              {row.documents.map((doc) => (
                <Box
                  key={doc.leave_request_document_id}
                  sx={{
                    border: "1px solid #e5e7eb",
                    borderRadius: 2,
                    p: 1.5,
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    gap: 2,
                    flexWrap: "wrap",
                  }}
                >
                  <Box>
                    <Typography fontWeight={700}>{doc.file_name}</Typography>
                    <Typography variant="caption" sx={{ color: "#6b7280" }}>
                      {doc.mime_type || "-"} • {formatBytes(doc.file_size_bytes)} •{" "}
                      {doc.uploaded_at || "-"}
                    </Typography>
                  </Box>

                  <Button
                    variant="outlined"
                    size="small"
                    component="a"
                    href={doc.url}
                    target="_blank"
                    rel="noopener noreferrer"
                  >
                    View
                  </Button>
                </Box>
              ))}
            </Stack>
          ) : (
            <Typography sx={{ color: "#6b7280" }}>No documents uploaded.</Typography>
          )}
        </Box>

        <Stack direction="row" justifyContent="flex-end" sx={{ mt: 3 }}>
          <Button variant="contained" onClick={onClose}>
            Close
          </Button>
        </Stack>
      </Box>
    </Modal>
  );
}

function PaginatedLeaveTable({ rows, onOpenModal }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(8);
  const [search, setSearch] = useState("");

  const filteredRows = useMemo(() => {
    return filterRows(rows, search);
  }, [rows, search]);

  const paginatedRows = useMemo(() => {
    const start = page * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, page, rowsPerPage]);

  return (
    <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
      <Box sx={{ p: 2 }}>
        <TextField
          fullWidth
          size="small"
          placeholder="Search leave records..."
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
      </Box>

      <TableContainer>
        <Table>
          <TableHead>
            <TableRow sx={{ backgroundColor: "#f9fafb" }}>
              <TableCell sx={{ fontWeight: 800 }}>Employee</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Department</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Leave Type</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Days</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Date Range</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Status</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Action</TableCell>
            </TableRow>
          </TableHead>

          <TableBody>
            {paginatedRows.length ? (
              paginatedRows.map((row) => (
                <TableRow key={row.leave_request_id} hover>
                  <TableCell>{row.name || "-"}</TableCell>
                  <TableCell>{row.department || "-"}</TableCell>
                  <TableCell>{row.type || "-"}</TableCell>
                  <TableCell>{row.days || "-"}</TableCell>
                  <TableCell>{row.dateRange || "-"}</TableCell>
                  <TableCell>
                    <StatusChip status={row.status} />
                  </TableCell>
                  <TableCell>
                    <Button variant="outlined" size="small" onClick={() => onOpenModal(row)}>
                      View Details
                    </Button>
                  </TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={7} align="center" sx={{ py: 4, color: "#6b7280" }}>
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
        page={page}
        rowsPerPage={rowsPerPage}
        onPageChange={(_, newPage) => setPage(newPage)}
        onRowsPerPageChange={(event) => {
          setRowsPerPage(parseInt(event.target.value, 10));
          setPage(0);
        }}
        rowsPerPageOptions={[5, 8, 10, 25, 50]}
      />
    </Paper>
  );
}

function PaginatedBalanceTable({ rows }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(8);
  const [search, setSearch] = useState("");

  const filteredRows = useMemo(() => {
    return filterRows(rows, search);
  }, [rows, search]);

  const paginatedRows = useMemo(() => {
    const start = page * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, page, rowsPerPage]);

  return (
    <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
      <Box sx={{ p: 2 }}>
        <TextField
          fullWidth
          size="small"
          placeholder="Search leave balances..."
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
      </Box>

      <TableContainer>
        <Table>
          <TableHead>
            <TableRow sx={{ backgroundColor: "#f9fafb" }}>
              <TableCell sx={{ fontWeight: 800 }}>Employee Code</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Employee Name</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Department</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Policy</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Entitlement</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Taken</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Remaining</TableCell>
            </TableRow>
          </TableHead>

          <TableBody>
            {paginatedRows.length ? (
              paginatedRows.map((row, index) => (
                <TableRow key={`${row.employee_id}-${row.policy_name}-${index}`} hover>
                  <TableCell>{row.employee_code || "-"}</TableCell>
                  <TableCell>{row.employee_name || "-"}</TableCell>
                  <TableCell>{row.department || "-"}</TableCell>
                  <TableCell>{row.policy_name || "-"}</TableCell>
                  <TableCell>{row.leave_entitlement ?? "-"}</TableCell>
                  <TableCell>{row.total_taken ?? 0}</TableCell>
                  <TableCell>{row.remaining ?? 0}</TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={7} align="center" sx={{ py: 4, color: "#6b7280" }}>
                  No leave balances found.
                </TableCell>
              </TableRow>
            )}
          </TableBody>
        </Table>
      </TableContainer>

      <TablePagination
        component="div"
        count={filteredRows.length}
        page={page}
        rowsPerPage={rowsPerPage}
        onPageChange={(_, newPage) => setPage(newPage)}
        onRowsPerPageChange={(event) => {
          setRowsPerPage(parseInt(event.target.value, 10));
          setPage(0);
        }}
        rowsPerPageOptions={[5, 8, 10, 25, 50]}
      />
    </Paper>
  );
}

export default function LeaveDashboard({
  auth,
  employeesOnLeave = [],
  pendingRequests = [],
  approvedRequests = [],
  rejectedRequests = [],
  employeeBalances = [],
  stats = {},
}) {
  const [tab, setTab] = useState(0);
  const [selectedRow, setSelectedRow] = useState(null);
  const [openModal, setOpenModal] = useState(false);

  const formatDateRange = (start, end) => {
    if (!start && !end) return "-";
    if (start && end) return start === end ? start : `${start} to ${end}`;
    return start || end;
  };

  const mapLeaveRows = (list) =>
    list.map((item) => ({
      ...item,
      dateRange: formatDateRange(item.start, item.end),
    }));

  const pendingData = useMemo(() => mapLeaveRows(pendingRequests), [pendingRequests]);
  const approvedData = useMemo(() => mapLeaveRows(approvedRequests), [approvedRequests]);
  const rejectedData = useMemo(() => mapLeaveRows(rejectedRequests), [rejectedRequests]);
  const onLeaveTodayData = useMemo(() => mapLeaveRows(employeesOnLeave), [employeesOnLeave]);

  const handleOpenModal = (row) => {
    setSelectedRow(row);
    setOpenModal(true);
  };

  const handleCloseModal = () => {
    setSelectedRow(null);
    setOpenModal(false);
  };

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Leave Dashboard" />

      <Box sx={{ display: "flex", minHeight: "100vh", backgroundColor: "#f5f7fa" }}>
        <Box
          sx={{
            width: SIDEBAR_WIDTH,
            backgroundColor: "#ffffff",
            borderRight: "1px solid #e5e7eb",
            p: 2,
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
              selected
              onClick={() => router.get("/hrms/leave-dashboard")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <DashboardOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText primary="Dashboard" primaryTypographyProps={{ fontWeight: 600 }} />
            </ListItemButton>
          </List>

          <Divider sx={{ my: 2 }} />

          <Typography fontWeight={900} sx={{ fontSize: "0.95rem", mb: 1 }}>
            SUMMARY
          </Typography>

          <Box sx={{ display: "grid", gap: 1.5 }}>
            {[
              { label: "On Leave Today", value: stats.onLeaveToday ?? 0, color: "#064c8d" },
              { label: "Pending Requests", value: stats.pendingRequests ?? 0, color: "#7f540a" },
              { label: "Approved", value: stats.approved ?? 0, color: "#16a34a" },
              { label: "Rejected", value: stats.rejected ?? 0, color: "#b91c1c" },
            ].map((item) => (
              <Box
                key={item.label}
                sx={{
                  backgroundColor: "#f9fafb",
                  border: "1px solid #e5e7eb",
                  borderRadius: 2,
                  p: 1.5,
                }}
              >
                <Typography sx={{ fontSize: "0.8rem", color: "#6b7280" }}>
                  {item.label}
                </Typography>
                <Typography fontWeight={900} sx={{ color: item.color, fontSize: "1.3rem" }}>
                  {item.value}
                </Typography>
              </Box>
            ))}
          </Box>
        </Box>

        <Box sx={{ flex: 1, p: { xs: 2, md: 4 } }}>
          <Typography variant="h4" fontWeight={900} sx={{ color: "#111827", mb: 3 }}>
            Leave Dashboard
          </Typography>

          <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
            <Tabs
              value={tab}
              onChange={(e, value) => setTab(value)}
              variant="scrollable"
              scrollButtons="auto"
            >
              <Tab label={`Pending (${pendingRequests.length})`} />
              <Tab label={`Approved (${approvedRequests.length})`} />
              <Tab label={`Rejected (${rejectedRequests.length})`} />
              <Tab label={`On Leave Today (${employeesOnLeave.length})`} />
              <Tab label={`Leave Balances (${employeeBalances.length})`} />
            </Tabs>

            <Box sx={{ p: 2 }}>
              <TabPanel value={tab} index={0}>
                <Typography fontWeight={900} sx={{ mb: 2 }}>
                  Pending Leave Requests
                </Typography>
                <PaginatedLeaveTable rows={pendingData} onOpenModal={handleOpenModal} />
              </TabPanel>

              <TabPanel value={tab} index={1}>
                <Typography fontWeight={900} sx={{ mb: 2 }}>
                  Approved Leave Requests
                </Typography>
                <PaginatedLeaveTable rows={approvedData} onOpenModal={handleOpenModal} />
              </TabPanel>

              <TabPanel value={tab} index={2}>
                <Typography fontWeight={900} sx={{ mb: 2 }}>
                  Rejected Leave Requests
                </Typography>
                <PaginatedLeaveTable rows={rejectedData} onOpenModal={handleOpenModal} />
              </TabPanel>

              <TabPanel value={tab} index={3}>
                <Typography fontWeight={900} sx={{ mb: 2 }}>
                  Employees On Leave Today
                </Typography>
                <PaginatedLeaveTable rows={onLeaveTodayData} onOpenModal={handleOpenModal} />
              </TabPanel>

              <TabPanel value={tab} index={4}>
                <Typography fontWeight={900} sx={{ mb: 2 }}>
                  Employee Leave Balances
                </Typography>
                <PaginatedBalanceTable rows={employeeBalances} />
              </TabPanel>
            </Box>
          </Paper>
        </Box>
      </Box>

      <LeaveDetailsModal open={openModal} onClose={handleCloseModal} row={selectedRow} />
    </AuthenticatedLayout>
  );
}