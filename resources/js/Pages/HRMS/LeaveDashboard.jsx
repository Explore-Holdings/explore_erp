import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import SearchOutlinedIcon from "@mui/icons-material/SearchOutlined";
import CloseIcon from "@mui/icons-material/Close";

import {
  Box,
  Button,
  Typography,
  List,
  ListItemButton,
  ListItemText,
  Divider,
  Paper,
  Modal,
  Stack,
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
  IconButton,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

function filterRows(rows, search) {
  const q = search.toLowerCase().trim();
  if (!q) return rows;
  return rows.filter((row) => JSON.stringify(row).toLowerCase().includes(q));
}

function downloadExcel(filename, employees) {
  if (!employees.length) return;

  const allLeaveTypes = [
    ...new Set(
      employees.flatMap((employee) =>
        employee.leaveTypes.map((leave) => leave.policy_name)
      )
    ),
  ];

  const headers = [
    "Employee Code",
    "Employee Name",
    "Department",
    ...allLeaveTypes.flatMap((type) => [
      `${type} Entitled`,
      `${type} Taken`,
      `${type} Remaining`,
    ]),
  ];

  const rows = employees.map((employee) => {
    const leaveMap = {};

    employee.leaveTypes.forEach((leave) => {
      leaveMap[leave.policy_name] = leave;
    });

    return [
      employee.employee_code || "-",
      employee.employee_name || "-",
      employee.department || "-",
      ...allLeaveTypes.flatMap((type) => {
        const leave = leaveMap[type];

        return [
          leave?.entitled ?? 0,
          leave?.taken ?? 0,
          leave?.remaining ?? 0,
        ];
      }),
    ];
  });

  const html = `
    <html>
      <head>
        <meta charset="UTF-8" />
      </head>
      <body>
        <table border="1">
          <thead>
            <tr style="background-color:#064c8d;color:white;font-weight:bold;">
              ${headers.map((header) => `<th>${header}</th>`).join("")}
            </tr>
          </thead>
          <tbody>
            ${rows
              .map(
                (row, index) => `
                  <tr style="background-color:${index % 2 === 0 ? "#f9fafb" : "#ffffff"};">
                    ${row
                      .map((cell, cellIndex) => {
                        let bg = "#ffffff";

                        if (headers[cellIndex]?.includes("Entitled")) bg = "#dbeafe";
                        if (headers[cellIndex]?.includes("Taken")) bg = "#fef3c7";
                        if (headers[cellIndex]?.includes("Remaining")) bg = "#dcfce7";

                        return `<td style="padding:6px;background-color:${bg};">${cell}</td>`;
                      })
                      .join("")}
                  </tr>
                `
              )
              .join("")}
          </tbody>
        </table>
      </body>
    </html>
  `;

  const blob = new Blob([html], {
    type: "application/vnd.ms-excel;charset=utf-8;",
  });

  const link = document.createElement("a");
  const url = URL.createObjectURL(blob);

  link.href = url;
  link.setAttribute("download", filename);
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);

  URL.revokeObjectURL(url);
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
    />
  );
}

function formatDateRange(start, end) {
  if (!start && !end) return "-";
  if (start && end) return start === end ? start : `${start} to ${end}`;
  return start || end;
}

function LeaveRequestTable({ rows }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(6);
  const [search, setSearch] = useState("");

  const safeRows = Array.isArray(rows) ? rows : [];

  const filteredRows = useMemo(() => {
    const q = search.toLowerCase().trim();

    if (!q) return safeRows;

    return safeRows.filter((row) => {
      const searchableText = [
        row.name,
        row.employee_id,
        row.department,
        row.type,
        row.days,
        row.dateRange,
        row.status,
        row.reason,
        row.oversee_member?.name,
        row.manager_comment,
        row.reliever_comment,
        row.address,
        row.half_day_session,
        row.requested_at,
        row.is_special_request ? "yes special request" : "no",
        ...(row.documents || []).map((doc) => doc.file_name),
      ]
        .filter(Boolean)
        .join(" ")
        .toLowerCase();

      return searchableText.includes(q);
    });
  }, [safeRows, search]);

  const totalPages = Math.ceil(filteredRows.length / rowsPerPage);
  const currentPage = totalPages === 0 ? 0 : Math.min(page, totalPages - 1);

  const paginatedRows = useMemo(() => {
    const start = currentPage * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, currentPage, rowsPerPage]);

  return (
    <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
      <Box sx={{ p: 2 }}>
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
      </Box>

      <Box sx={{ p: 2, display: "grid", gap: 2 }}>
        {paginatedRows.length ? (
          paginatedRows.map((row) => (
            <Paper
              key={row.leave_request_id}
              sx={{
                p: 2,
                borderRadius: 3,
                border: "1px solid #e5e7eb",
                backgroundColor: "#f9fafb",
              }}
            >
              <Stack
                direction={{ xs: "column", md: "row" }}
                justifyContent="space-between"
                spacing={2}
              >
                <Box>
                  <Typography fontWeight={900} sx={{ fontSize: "1.05rem" }}>
                    {row.name || "-"}
                  </Typography>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.85rem" }}>
                    {row.department || "-"} • Employee ID: {row.employee_id || "-"}
                  </Typography>
                </Box>

                <StatusChip status={row.status} />
              </Stack>

              <Divider sx={{ my: 2 }} />

              <Box
                sx={{
                  display: "grid",
                  gridTemplateColumns: {
                    xs: "1fr",
                    md: "1fr 1fr 1fr 1fr",
                  },
                  gap: 1.5,
                  mb: 2,
                }}
              >
                <Box>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Leave Type
                  </Typography>
                  <Typography fontWeight={800}>{row.type || "-"}</Typography>
                </Box>

                <Box>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Date Range
                  </Typography>
                  <Typography fontWeight={800}>{row.dateRange || "-"}</Typography>
                </Box>

                <Box>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Days
                  </Typography>
                  <Typography fontWeight={800}>{row.days || "-"}</Typography>
                </Box>

                <Box>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Requested At
                  </Typography>
                  <Typography fontWeight={800}>{row.requested_at || "-"}</Typography>
                </Box>
              </Box>

              <Box
                sx={{
                  display: "grid",
                  gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" },
                  gap: 1.5,
                }}
              >
                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Reason
                  </Typography>
                  <Typography>{row.reason || "-"}</Typography>
                </Box>

                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Oversee Member
                  </Typography>
                  <Typography>{row.oversee_member?.name || "-"}</Typography>
                </Box>

                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Manager Comment
                  </Typography>
                  <Typography>{row.manager_comment || "-"}</Typography>
                </Box>

                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Reliever Comment
                  </Typography>
                  <Typography>{row.reliever_comment || "-"}</Typography>
                </Box>

                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Address
                  </Typography>
                  <Typography>{row.address || "-"}</Typography>
                </Box>

                <Box sx={{ p: 1.5, borderRadius: 2, backgroundColor: "#fff" }}>
                  <Typography sx={{ color: "#6b7280", fontSize: "0.75rem" }}>
                    Extra Info
                  </Typography>
                  <Typography>
                    Special Request: {row.is_special_request ? "Yes" : "No"}
                  </Typography>
                </Box>
              </Box>

              <Box sx={{ mt: 2 }}>
                <Typography fontWeight={800} sx={{ mb: 1 }}>
                  Documents
                </Typography>

                {row.documents?.length ? (
                  <Stack direction="row" spacing={1} useFlexGap flexWrap="wrap">
                    {row.documents.map((doc) => (
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
                  <Typography sx={{ color: "#6b7280", fontSize: "0.85rem" }}>
                    No documents uploaded.
                  </Typography>
                )}
              </Box>
            </Paper>
          ))
        ) : (
          <Typography align="center" sx={{ py: 4, color: "#6b7280" }}>
            No records found.
          </Typography>
        )}
      </Box>

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
        rowsPerPageOptions={[3, 6, 10, 25]}
      />
    </Paper>
  );
}

function RequestModal({ open, onClose, title, rows }) {
  return (
    <Modal open={open} onClose={onClose}>
      <Box
        sx={{
          width: { xs: "95%", md: "90%" },
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
        <Stack direction="row" justifyContent="space-between" alignItems="center" sx={{ mb: 2 }}>
          <Typography variant="h6" fontWeight={900}>
            {title}
          </Typography>

          <IconButton onClick={onClose}>
            <CloseIcon />
          </IconButton>
        </Stack>

        <LeaveRequestTable key={title} rows={rows} />
      </Box>
    </Modal>
  );
}

function EmployeeLeaveBalanceTable({ rows }) {
  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [search, setSearch] = useState("");

  const groupedRows = useMemo(() => {
    const map = {};

    rows.forEach((row) => {
      if (!map[row.employee_id]) {
        map[row.employee_id] = {
          employee_id: row.employee_id,
          employee_code: row.employee_code,
          employee_name: row.employee_name,
          department: row.department,
          leaveTypes: [],
        };
      }

      map[row.employee_id].leaveTypes.push({
        policy_name: row.policy_name,
        entitled: row.leave_entitlement ?? 0,
        taken: row.total_taken ?? 0,
        remaining: row.remaining ?? 0,
      });
    });

    return Object.values(map);
  }, [rows]);

  const filteredRows = useMemo(() => filterRows(groupedRows, search), [groupedRows, search]);

  const paginatedRows = useMemo(() => {
    const start = page * rowsPerPage;
    return filteredRows.slice(start, start + rowsPerPage);
  }, [filteredRows, page, rowsPerPage]);

  const exportRows = filteredRows.flatMap((employee) =>
    employee.leaveTypes.map((leave) => ({
      employee_code: employee.employee_code,
      employee_name: employee.employee_name,
      department: employee.department,
      policy_name: leave.policy_name,
      leave_entitlement: leave.entitled,
      total_taken: leave.taken,
      remaining: leave.remaining,
    }))
  );

  return (
    <Paper sx={{ borderRadius: 3, border: "1px solid #e5e7eb", overflow: "hidden" }}>
      <Box
        sx={{
          p: 2,
          display: "flex",
          gap: 1.5,
          flexDirection: { xs: "column", md: "row" },
        }}
      >
        <TextField
          fullWidth
          size="small"
          placeholder="Search employees, departments or leave types..."
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

        <Button
          variant="contained"
          onClick={() => downloadExcel("employee-leave-balances.xls", filteredRows)}
          sx={{
            minWidth: 140,
            fontWeight: 800,
            textTransform: "none",
          }}
        >
          Export CSV
        </Button>
      </Box>

      <TableContainer sx={{ maxHeight: "70vh" }}>
        <Table stickyHeader>
          <TableHead>
            <TableRow sx={{ backgroundColor: "#f9fafb" }}>
              <TableCell sx={{ fontWeight: 800, width: 140 }}>Employee Code</TableCell>
              <TableCell sx={{ fontWeight: 800, width: 180 }}>Employee Name</TableCell>
              <TableCell sx={{ fontWeight: 800, width: 220 }}>Department</TableCell>
              <TableCell sx={{ fontWeight: 800 }}>Leave Types</TableCell>
            </TableRow>
          </TableHead>

          <TableBody>
            {paginatedRows.length ? (
              paginatedRows.map((employee) => (
                <TableRow key={employee.employee_id} hover>
                  <TableCell>{employee.employee_code || "-"}</TableCell>

                  <TableCell sx={{ fontWeight: 700 }}>
                    {employee.employee_name || "-"}
                  </TableCell>

                  <TableCell>{employee.department || "-"}</TableCell>

                  <TableCell>
                    <Box
                      sx={{
                        display: "flex",
                        flexWrap: "wrap",
                        gap: 1,
                      }}
                    >
                      {employee.leaveTypes.map((leave, index) => (
                        <Box
                          key={`${leave.policy_name}-${index}`}
                          sx={{
                            minWidth: 260,
                            flex: "1 1 260px",
                            maxWidth: 330,
                            border: "1px solid #e5e7eb",
                            borderRadius: 2,
                            backgroundColor: "#f9fafb",
                            p: 1.2,
                          }}
                        >
                          <Typography
                            fontWeight={900}
                            sx={{
                              mb: 1,
                              fontSize: "0.9rem",
                            }}
                          >
                            {leave.policy_name || "-"}
                          </Typography>

                          <Stack
                            direction="row"
                            spacing={1}
                            useFlexGap
                            flexWrap="wrap"
                          >
                            <Chip
                              label={`Entitled: ${leave.entitled}`}
                              color="primary"
                              size="small"
                              variant="outlined"
                              sx={{ minWidth: 90 }}
                            />

                            <Chip
                              label={`Taken: ${leave.taken}`}
                              color="warning"
                              size="small"
                              sx={{ minWidth: 90 }}
                            />

                            <Chip
                              label={`Remaining: ${leave.remaining}`}
                              color="success"
                              size="small"
                              sx={{ minWidth: 105 }}
                            />
                          </Stack>
                        </Box>
                      ))}
                    </Box>
                  </TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={4} align="center" sx={{ py: 5, color: "#6b7280" }}>
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
        rowsPerPageOptions={[10, 25, 50, 100]}
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
  const [modalData, setModalData] = useState({
    open: false,
    title: "",
    rows: [],
  });

  const mapLeaveRows = (list) =>
    list.map((item) => ({
      ...item,
      dateRange: formatDateRange(item.start, item.end),
    }));

  const pendingData = useMemo(() => mapLeaveRows(pendingRequests), [pendingRequests]);
  const approvedData = useMemo(() => mapLeaveRows(approvedRequests), [approvedRequests]);
  const rejectedData = useMemo(() => mapLeaveRows(rejectedRequests), [rejectedRequests]);
  const onLeaveTodayData = useMemo(() => mapLeaveRows(employeesOnLeave), [employeesOnLeave]);

  const openRequestModal = (title, rows) => {
    setModalData({
      open: true,
      title,
      rows,
    });
  };

  const closeRequestModal = () => {
    setModalData({
      open: false,
      title: "",
      rows: [],
    });
  };

  const summaryCards = [
    {
      label: "On Leave Today",
      value: stats.onLeaveToday ?? 0,
      color: "#064c8d",
      rows: onLeaveTodayData,
    },
    {
      label: "Pending Leave Requests",
      value: stats.pendingRequests ?? 0,
      color: "#7f540a",
      rows: pendingData,
    },
    {
      label: "Approved Leave Requests",
      value: stats.approved ?? 0,
      color: "#16a34a",
      rows: approvedData,
    },
    {
      label: "Rejected Leave Requests",
      value: stats.rejected ?? 0,
      color: "#b91c1c",
      rows: rejectedData,
    },
  ];

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
        </Box>

        <Box sx={{ flex: 1, p: { xs: 2, md: 4 } }}>
          <Typography variant="h4" fontWeight={900} sx={{ color: "#111827", mb: 3 }}>
            Leave Dashboard
          </Typography>

          <Box
            sx={{
              display: "grid",
              gridTemplateColumns: {
                xs: "1fr",
                sm: "1fr 1fr",
                lg: "1fr 1fr 1fr 1fr",
              },
              gap: 2,
              mb: 3,
            }}
          >
            {summaryCards.map((card) => (
              <Paper
                key={card.label}
                onClick={() => openRequestModal(card.label, card.rows)}
                sx={{
                  p: 2,
                  borderRadius: 3,
                  border: "1px solid #e5e7eb",
                  cursor: "pointer",
                  transition: "0.2s",
                  "&:hover": {
                    transform: "translateY(-3px)",
                    boxShadow: 4,
                  },
                }}
              >
                <Typography sx={{ color: "#6b7280", fontSize: "0.85rem" }}>
                  {card.label}
                </Typography>

                <Typography fontWeight={900} sx={{ color: card.color, fontSize: "2rem" }}>
                  {card.value}
                </Typography>

                <Typography sx={{ color: "#6b7280", fontSize: "0.78rem" }}>
                  Click to view details
                </Typography>
              </Paper>
            ))}
          </Box>

          <Paper
            sx={{
              p: 3,
              borderRadius: 3,
              border: "1px solid #e5e7eb",
            }}
          >
            <Typography variant="h6" fontWeight={900} sx={{ mb: 2 }}>
              Employee Leave Balances
            </Typography>

            <EmployeeLeaveBalanceTable rows={employeeBalances} />
          </Paper>
        </Box>
      </Box>

      <RequestModal
        open={modalData.open}
        onClose={closeRequestModal}
        title={modalData.title}
        rows={modalData.rows}
      />
    </AuthenticatedLayout>
  );
}