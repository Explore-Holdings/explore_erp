import React, { useEffect, useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router, useForm } from "@inertiajs/react";

import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import GroupsOutlinedIcon from "@mui/icons-material/GroupsOutlined";
import SearchIcon from "@mui/icons-material/Search";
import toast, { Toaster } from "react-hot-toast";

import { DataGrid } from "@mui/x-data-grid";

import {
  Box,
  Typography,
  List,
  ListItemButton,
  ListItemText,
  Divider,
  Paper,
  Button,
  Stack,
  Modal,
  TextField,
  MenuItem,
  Tabs,
  Tab,
  Chip,
  Checkbox,
  Autocomplete,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

function TabPanel({ children, value, index }) {
  return (
    <div hidden={value !== index}>
      {value === index && <Box sx={{ pt: 2 }}>{children}</Box>}
    </div>
  );
}

function StatusChip({ status }) {
  const map = {
    scheduled: "warning",
    rescheduled: "info",
    ongoing: "info",
    completed: "success",
    cancelled: "error",
    pending: "warning",
    accepted: "success",
    declined: "error",
  };

  return (
    <Chip
      size="small"
      label={status || "-"}
      color={map[status] || "default"}
      sx={{ textTransform: "capitalize" }}
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

function MeetingDetailsModal({ open, onClose, row }) {
  if (!row) return null;

  return (
    <Modal open={open} onClose={onClose}>
      <Box
        sx={{
          width: { xs: "95%", md: 820 },
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
          Meeting Details
        </Typography>

        <Box
          sx={{
            display: "grid",
            gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" },
            gap: 2,
          }}
        >
          <DetailItem label="Title" value={row.title} />
          <DetailItem label="Type" value={row.type} />
          <DetailItem label="Date" value={row.meeting_date} />
          <DetailItem label="Start Time" value={row.start_time} />
          <DetailItem label="End Time" value={row.end_time} />
          <DetailItem label="Location Type" value={row.location_type} />
          <DetailItem label="Location" value={row.location} />
          <DetailItem
            label="Created By"
            value={row.created_by_name || row.created_by || "-"}
          />
          <DetailItem label="Meeting Status" value={row.status} />
        </Box>

        <Box
          sx={{
            mt: 2,
            border: "1px solid #e5e7eb",
            borderRadius: 2,
            p: 1.5,
            backgroundColor: "#f9fafb",
          }}
        >
          <Typography sx={{ fontSize: "0.78rem", color: "#6b7280", mb: 0.5 }}>
            Description
          </Typography>
          <Typography>{row.description || "-"}</Typography>
        </Box>

        <Box sx={{ mt: 3 }}>
          <Typography fontWeight={800} sx={{ mb: 1.5 }}>
            Members
          </Typography>

          {row.members?.length ? (
            <Stack spacing={1}>
              {row.members.map((member) => {
                const memberStatus =
                  row.response_status && !Array.isArray(row.response_status)
                    ? row.response_status[member.id]
                    : member.response_status || "pending";

                return (
                  <Box
                    key={member.id}
                    sx={{
                      border: "1px solid #e5e7eb",
                      borderRadius: 2,
                      p: 1.5,
                      backgroundColor: "#ffffff",
                      display: "flex",
                      justifyContent: "space-between",
                      alignItems: "center",
                      gap: 2,
                      flexWrap: "wrap",
                    }}
                  >
                    <Box>
                      <Typography fontWeight={700}>
                        {member.name || member.id}
                      </Typography>
                      <Typography variant="caption" sx={{ color: "#6b7280" }}>
                        {member.job_title || "-"} |{" "}
                        {member.department_name || "-"}
                      </Typography>
                    </Box>

                    <StatusChip status={memberStatus || "pending"} />
                  </Box>
                );
              })}
            </Stack>
          ) : (
            <Typography sx={{ color: "#6b7280" }}>
              No members selected.
            </Typography>
          )}
        </Box>

        <Box sx={{ mt: 3 }}>
          <Typography fontWeight={800} sx={{ mb: 1.5 }}>
            Attachments
          </Typography>

          {row.attachments?.length ? (
            <Stack spacing={1}>
              {row.attachments.map((file, index) => (
                <Box
                  key={index}
                  sx={{
                    border: "1px solid #e5e7eb",
                    borderRadius: 2,
                    p: 1.5,
                    backgroundColor: "#ffffff",
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    gap: 2,
                    flexWrap: "wrap",
                  }}
                >
                  <Box>
                    <Typography fontWeight={700}>
                      {file.file_name || `Attachment ${index + 1}`}
                    </Typography>
                    <Typography variant="caption" sx={{ color: "#6b7280" }}>
                      {file.mime_type || "-"}
                    </Typography>
                  </Box>

                  {file.file_path && (
                    <Button
                      variant="outlined"
                      size="small"
                      component="a"
                      href={`/storage/${file.file_path}`}
                      target="_blank"
                      rel="noopener noreferrer"
                    >
                      View
                    </Button>
                  )}
                </Box>
              ))}
            </Stack>
          ) : (
            <Typography sx={{ color: "#6b7280" }}>
              No attachments uploaded.
            </Typography>
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

function MeetingsTable({ rows = [], onOpenDetails, onEdit, onCancel }) {
  const [search, setSearch] = useState("");

  const filteredRows = useMemo(() => {
    const value = search.toLowerCase();

    return rows.filter((row) => {
      return (
        row.status?.toLowerCase().includes(value) ||
        row.title?.toLowerCase().includes(value) ||
        row.meeting_date?.toLowerCase().includes(value) ||
        row.start_time?.toLowerCase().includes(value) ||
        row.end_time?.toLowerCase().includes(value) ||
        row.location_type?.toLowerCase().includes(value) ||
        row.location?.toLowerCase().includes(value)
      );
    });
  }, [rows, search]);

  const columns = [
    {
      field: "status",
      headerName: "Status",
      flex: 1,
      minWidth: 140,
      renderCell: (params) => <StatusChip status={params.row.status} />,
    },
    {
      field: "title",
      headerName: "Title",
      flex: 1,
      minWidth: 160,
    },
    {
      field: "meeting_date",
      headerName: "Date",
      flex: 1,
      minWidth: 130,
    },
    {
      field: "time",
      headerName: "Time",
      flex: 1,
      minWidth: 160,
      valueGetter: (value, row) =>
        `${row?.start_time || "-"} - ${row?.end_time || "-"}`,
    },
    {
      field: "location_type",
      headerName: "Location Type",
      flex: 1,
      minWidth: 150,
    },
    {
      field: "location",
      headerName: "Location",
      flex: 1,
      minWidth: 180,
    },
    {
      field: "actions",
      headerName: "Actions",
      sortable: false,
      filterable: false,
      flex: 1,
      minWidth: 270,
      renderCell: (params) => (
        <Box
          sx={{
            display: "flex",
            alignItems: "center",
            gap: 1,
            width: "100%",
            height: "100%",
            overflow: "visible",
          }}
        >
          <Button
            variant="outlined"
            size="small"
            onClick={() => onOpenDetails(params.row)}
          >
            View
          </Button>

          {["scheduled", "rescheduled"].includes(params.row.status) && (
            <>
              <Button
                variant="contained"
                size="small"
                onClick={() => onEdit(params.row)}
              >
                Edit
              </Button>

              <Button
                variant="outlined"
                color="error"
                size="small"
                onClick={() => onCancel(params.row)}
              >
                Cancel
              </Button>
            </>
          )}
        </Box>
      ),
    }
  ];

  return (
    <Paper
      sx={{
        borderRadius: 3,
        border: "1px solid #e5e7eb",
        overflow: "hidden",
      }}
    >
      <Box
        sx={{
          p: 2,
          borderBottom: "1px solid #e5e7eb",
          display: "flex",
          justifyContent: "flex-end",
        }}
      >
        <TextField
          size="small"
          placeholder="Search meetings..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          InputProps={{
            startAdornment: <SearchIcon sx={{ mr: 1, color: "#6b7280" }} />,
          }}
          sx={{
            width: { xs: "100%", sm: 320 },
          }}
        />
      </Box>

      <Box sx={{ height: 500 }}>
        <DataGrid
          rows={filteredRows}
          columns={columns}
          getRowId={(row) => row.id}
          pageSizeOptions={[5, 10, 25, 50]}
          initialState={{
            pagination: {
              paginationModel: {
                pageSize: 10,
                page: 0,
              },
            },
          }}
          disableRowSelectionOnClick
          sx={{
            border: "none",
            "& .MuiDataGrid-columnHeaders": {
              backgroundColor: "#f9fafb",
              fontWeight: 800,
            },
          }}
        />
      </Box>
    </Paper>
  );
}

function CreateMeetingModal({
  open,
  onClose,
  employees = [],
  departments = [],
  editingMeeting = null,
}) {
  const today = new Date().toISOString().split("T")[0];
  const isEditMode = Boolean(editingMeeting);

  const { data, setData, post, processing, errors, reset } = useForm({
    _method: "",
    title: "",
    type: "meeting",
    description: "",
    meeting_date: today,
    start_time: "",
    end_time: "",
    location_type: "physical",
    location: "Meeting Room",
    member_selection_type: "selected",
    selected_department: "",
    members_ids: [],
    attachments: [],
  });

  useEffect(() => {
    if (!open) return;

    if (editingMeeting) {
      setData({
        _method: "PUT",
        title: editingMeeting.title || "",
        type: editingMeeting.type || "meeting",
        description: editingMeeting.description || "",
        meeting_date: editingMeeting.meeting_date || today,
        start_time: editingMeeting.start_time || "",
        end_time: editingMeeting.end_time || "",
        location_type: editingMeeting.location_type || "physical",
        location: editingMeeting.location || "",
        member_selection_type: "selected",
        selected_department: "",
        members_ids: editingMeeting.members_ids || [],
        attachments: [],
      });
    }
  }, [editingMeeting, open]);

  const isHod = (emp) =>
    String(emp.job_title || "").trim().toLowerCase() === "head of department";

  const hodMembers = useMemo(() => {
    return employees.filter((emp) => isHod(emp));
  }, [employees]);

  const staffMembers = useMemo(() => {
    return employees.filter((emp) => !isHod(emp));
  }, [employees]);

  const departmentMembers = useMemo(() => {
    if (!data.selected_department) return [];

    return employees.filter(
      (emp) => String(emp.department_id) === String(data.selected_department)
    );
  }, [employees, data.selected_department]);

  const selectedMembers = useMemo(() => {
    if (data.member_selection_type === "hod") return hodMembers;
    if (data.member_selection_type === "staff") return staffMembers;
    if (data.member_selection_type === "department") return departmentMembers;

    return employees.filter((emp) =>
      data.members_ids.map(String).includes(String(emp.id))
    );
  }, [
    employees,
    hodMembers,
    staffMembers,
    departmentMembers,
    data.member_selection_type,
    data.members_ids,
  ]);

  const updateMembersByType = (value) => {
    let memberIds = [];
    let selectedDepartment = "";

    if (value === "hod") {
      memberIds = hodMembers.map((emp) => emp.id);
    }

    if (value === "staff") {
      memberIds = staffMembers.map((emp) => emp.id);
    }

    setData({
      ...data,
      member_selection_type: value,
      selected_department: selectedDepartment,
      members_ids: memberIds,
    });
  };

  const handleDepartmentChange = (departmentId) => {
    const departmentEmployeeIds = employees
      .filter((emp) => String(emp.department_id) === String(departmentId))
      .map((emp) => emp.id);

    setData({
      ...data,
      selected_department: departmentId,
      members_ids: departmentEmployeeIds,
    });
  };

  const handleSelectedMembersChange = (selectedEmployees) => {
    setData(
      "members_ids",
      selectedEmployees.map((emp) => emp.id)
    );
  };

  const handleClose = () => {
    reset();

    setData({
      _method: "",
      title: "",
      type: "meeting",
      description: "",
      meeting_date: today,
      start_time: "",
      end_time: "",
      location_type: "physical",
      location: "Meeting Room",
      member_selection_type: "selected",
      selected_department: "",
      members_ids: [],
      attachments: [],
    });

    onClose();
  };

  const handleLocationTypeChange = (value) => {
    setData({
      ...data,
      location_type: value,
      location: value === "physical" ? "Meeting Room" : "",
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    const options = {
      forceFormData: true,
      preserveScroll: true,
      onSuccess: () => {
        toast.success(
          isEditMode
            ? "Meeting rescheduled successfully"
            : "Meeting created successfully"
        );
        handleClose();
      },
      onError: (errors) => {
        if (errors.time_conflict) {
          toast.error(errors.time_conflict);
        } else {
          toast.error("Failed to save meeting");
        }
      },
    };

    if (isEditMode) {
      post(`/hrms/meetings/${editingMeeting.id}`, options);
    } else {
      post("/hrms/meetings", options);
    }
  };

  return (
    <Modal open={open} onClose={handleClose}>
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
          {isEditMode ? "Edit / Reschedule Meeting" : "Create Meeting"}
        </Typography>

        <Box
          component="form"
          onSubmit={handleSubmit}
          sx={{
            display: "grid",
            gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" },
            gap: 2,
          }}
        >
          <TextField
            select
            label="Type"
            value={data.type}
            onChange={(e) => setData("type", e.target.value)}
            error={!!errors.type}
            helperText={errors.type}
            fullWidth
            required
          >
            <MenuItem value="meeting">Meeting</MenuItem>
            <MenuItem value="event">Event</MenuItem>
            <MenuItem value="training">Training</MenuItem>
          </TextField>

          <TextField
            label="Meeting Title"
            value={data.title}
            onChange={(e) => setData("title", e.target.value)}
            error={!!errors.title}
            helperText={errors.title}
            fullWidth
            required
          />

          <TextField
            label="Meeting Date"
            type="date"
            value={data.meeting_date}
            onChange={(e) => setData("meeting_date", e.target.value)}
            error={!!errors.meeting_date}
            helperText={errors.meeting_date}
            InputLabelProps={{ shrink: true }}
            inputProps={{ min: today }}
            fullWidth
            required
          />

          <TextField
            label="Description"
            value={data.description}
            onChange={(e) => setData("description", e.target.value)}
            error={!!errors.description}
            helperText={errors.description}
            multiline
            rows={3}
            fullWidth
            sx={{ gridColumn: { xs: "span 1", md: "span 2" } }}
          />

          <TextField
            label="Start Time"
            type="time"
            value={data.start_time}
            onChange={(e) => setData("start_time", e.target.value)}
            error={!!errors.start_time}
            helperText={errors.start_time}
            InputLabelProps={{ shrink: true }}
            fullWidth
            required
          />

          <TextField
            label="End Time"
            type="time"
            value={data.end_time}
            onChange={(e) => setData("end_time", e.target.value)}
            error={!!errors.end_time}
            helperText={errors.end_time}
            InputLabelProps={{ shrink: true }}
            fullWidth
            required
          />

          <TextField
            select
            label="Location Type"
            value={data.location_type}
            onChange={(e) => handleLocationTypeChange(e.target.value)}
            error={!!errors.location_type}
            helperText={errors.location_type}
            fullWidth
            required
          >
            <MenuItem value="physical">Physical</MenuItem>
            <MenuItem value="online">Online</MenuItem>
          </TextField>

          <TextField
            label={
              data.location_type === "physical" ? "Location" : "Meeting Link"
            }
            value={data.location}
            onChange={(e) => setData("location", e.target.value)}
            error={!!errors.location}
            helperText={errors.location}
            fullWidth
            required
          />

          <TextField
            select
            label="Member Selection"
            value={data.member_selection_type}
            onChange={(e) => updateMembersByType(e.target.value)}
            fullWidth
            sx={{ gridColumn: { xs: "span 1", md: "span 2" } }}
          >
            <MenuItem value="selected">Selected Members</MenuItem>
            <MenuItem value="hod">Head of Department</MenuItem>
            <MenuItem value="staff">Staff</MenuItem>
            <MenuItem value="department">Department</MenuItem>
          </TextField>

          {data.member_selection_type === "department" && (
            <TextField
              select
              label="Select Department"
              value={data.selected_department}
              onChange={(e) => handleDepartmentChange(e.target.value)}
              fullWidth
              required
              sx={{ gridColumn: { xs: "span 1", md: "span 2" } }}
            >
              {departments.map((department) => (
                <MenuItem key={department.id} value={department.id}>
                  {department.name}
                </MenuItem>
              ))}
            </TextField>
          )}

          {data.member_selection_type === "selected" && (
            <Autocomplete
              multiple
              options={employees}
              value={employees.filter((emp) =>
                data.members_ids.map(String).includes(String(emp.id))
              )}
              onChange={(event, selectedEmployees) =>
                handleSelectedMembersChange(selectedEmployees)
              }
              getOptionLabel={(option) =>
                `${option.name || "-"} - ${option.job_title || "-"} - ${
                  option.department_name || "-"
                }`
              }
              isOptionEqualToValue={(option, value) =>
                String(option.id) === String(value.id)
              }
              disableCloseOnSelect
              sx={{ gridColumn: { xs: "span 1", md: "span 2" } }}
              renderOption={(props, option, { selected }) => (
                <li {...props} key={option.id}>
                  <Checkbox checked={selected} sx={{ mr: 1 }} />
                  <Box>
                    <Typography fontWeight={700}>
                      {option.name || "-"}
                    </Typography>
                    <Typography variant="caption" sx={{ color: "#6b7280" }}>
                      {option.job_title || "-"} |{" "}
                      {option.department_name || "-"}
                    </Typography>
                  </Box>
                </li>
              )}
              renderInput={(params) => (
                <TextField
                  {...params}
                  label="Search and Select Members"
                  placeholder="Search members..."
                  error={!!errors.members_ids}
                  helperText={errors.members_ids}
                />
              )}
            />
          )}

          {data.member_selection_type !== "selected" && (
            <Box
              sx={{
                gridColumn: { xs: "span 1", md: "span 2" },
                border: "1px solid #e5e7eb",
                borderRadius: 2,
                p: 1.5,
                backgroundColor: "#f9fafb",
              }}
            >
              <Typography fontWeight={800} sx={{ mb: 1 }}>
                Selected Members ({selectedMembers.length})
              </Typography>

              {selectedMembers.length ? (
                <Stack direction="row" spacing={1} flexWrap="wrap" useFlexGap>
                  {selectedMembers.map((member) => (
                    <Chip
                      key={member.id}
                      label={`${member.name} - ${member.job_title || "-"} - ${
                        member.department_name || "-"
                      }`}
                      size="small"
                    />
                  ))}
                </Stack>
              ) : (
                <Typography sx={{ color: "#6b7280" }}>
                  No members found.
                </Typography>
              )}
            </Box>
          )}

          <TextField
            type="file"
            inputProps={{ multiple: true }}
            onChange={(e) => setData("attachments", Array.from(e.target.files))}
            error={!!errors.attachments}
            helperText={errors.attachments}
            fullWidth
            sx={{ gridColumn: { xs: "span 1", md: "span 2" } }}
          />

          <Stack
            direction="row"
            spacing={1.5}
            justifyContent="flex-end"
            sx={{ gridColumn: { xs: "span 1", md: "span 2" }, mt: 1 }}
          >
            <Button
              variant="outlined"
              onClick={handleClose}
              disabled={processing}
            >
              Cancel
            </Button>

            <Button type="submit" variant="contained" disabled={processing}>
              {processing
                ? "Saving..."
                : isEditMode
                ? "Reschedule Meeting"
                : "Save Meeting"}
            </Button>
          </Stack>
        </Box>
      </Box>
    </Modal>
  );
}

export default function Meeting({
  auth,
  meetings = [],
  employees = [],
  departments = [],
}) {
  const [tab, setTab] = useState(0);
  const [openCreateModal, setOpenCreateModal] = useState(false);
  const [detailsOpen, setDetailsOpen] = useState(false);
  const [selectedMeeting, setSelectedMeeting] = useState(null);
  const [editingMeeting, setEditingMeeting] = useState(null);

  const scheduledMeetings = useMemo(
    () =>
      meetings.filter((item) =>
        ["scheduled", "rescheduled"].includes(item.status)
      ),
    [meetings]
  );

  const ongoingMeetings = useMemo(
    () => meetings.filter((item) => item.status === "ongoing"),
    [meetings]
  );

  const completedMeetings = useMemo(
    () => meetings.filter((item) => item.status === "completed"),
    [meetings]
  );

  const cancelledMeetings = useMemo(
    () => meetings.filter((item) => item.status === "cancelled"),
    [meetings]
  );

  const handleOpenDetails = (row) => {
    setSelectedMeeting(row);
    setDetailsOpen(true);
  };

  const handleCloseDetails = () => {
    setSelectedMeeting(null);
    setDetailsOpen(false);
  };

  const handleEditMeeting = (meeting) => {
    setEditingMeeting(meeting);
    setOpenCreateModal(true);
  };

  const handleCancelMeeting = (meeting) => {
    if (!confirm("Are you sure you want to cancel this meeting?")) return;

    router.patch(
      `/hrms/meetings/${meeting.id}/cancel`,
      {},
      {
        preserveScroll: true,
        onSuccess: () => {
          toast.success("Meeting cancelled successfully");
        },
        onError: () => {
          toast.error("Failed to cancel meeting");
        },
      }
    );
  };

  const handleCloseMeetingModal = () => {
    setEditingMeeting(null);
    setOpenCreateModal(false);
  };

  return (
    <AuthenticatedLayout user={auth.user}>
      <Toaster position="top-right" />
      <Head title="Meetings" />

      <Box
        sx={{
          display: "flex",
          minHeight: "100vh",
          backgroundColor: "#f5f7fa",
        }}
      >
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
              <ListItemText
                primary="HRMS Home"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>

            <ListItemButton
              onClick={() => router.get("/hrms/meeting-dashboard")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <DashboardOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText
                primary="Dashboard"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>

            <ListItemButton
              selected
              onClick={() => router.get("/hrms/meetings")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <GroupsOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText
                primary="Meetings"
                primaryTypographyProps={{ fontWeight: 600 }}
              />
            </ListItemButton>
          </List>

          <Divider sx={{ my: 2 }} />
        </Box>

        <Box sx={{ flex: 1, p: { xs: 2, md: 4 } }}>
          <Typography
            variant="h4"
            fontWeight={900}
            sx={{ color: "#111827", mb: 3 }}
          >
            Meetings
          </Typography>

          <Paper
            sx={{
              borderRadius: 3,
              border: "1px solid #e5e7eb",
              overflow: "hidden",
            }}
          >
            <Box sx={{ p: 3, borderBottom: "1px solid #e5e7eb" }}>
              <Stack
                direction={{ xs: "column", sm: "row" }}
                justifyContent="space-between"
                alignItems={{ xs: "flex-start", sm: "center" }}
                spacing={2}
              >
                <Box>
                  <Typography variant="h6" fontWeight={800}>
                    Meeting Management
                  </Typography>
                  <Typography sx={{ color: "#6b7280" }}>
                    Create, manage, and track meetings here.
                  </Typography>
                </Box>

                <Button
                  variant="contained"
                  sx={{ textTransform: "none", fontWeight: 700 }}
                  onClick={() => {
                    setEditingMeeting(null);
                    setOpenCreateModal(true);
                  }}
                >
                  Create Meeting
                </Button>
              </Stack>
            </Box>

            <Tabs
              value={tab}
              onChange={(e, value) => setTab(value)}
              variant="scrollable"
              scrollButtons="auto"
            >
              <Tab label={`Scheduled (${scheduledMeetings.length})`} />
              <Tab label={`Ongoing (${ongoingMeetings.length})`} />
              <Tab label={`Completed (${completedMeetings.length})`} />
              <Tab label={`Cancelled (${cancelledMeetings.length})`} />
            </Tabs>

            <Box sx={{ p: 2 }}>
              <TabPanel value={tab} index={0}>
                <MeetingsTable
                  rows={scheduledMeetings}
                  onOpenDetails={handleOpenDetails}
                  onEdit={handleEditMeeting}
                  onCancel={handleCancelMeeting}
                />
              </TabPanel>

              <TabPanel value={tab} index={1}>
                <MeetingsTable
                  rows={ongoingMeetings}
                  onOpenDetails={handleOpenDetails}
                  onEdit={handleEditMeeting}
                  onCancel={handleCancelMeeting}
                />
              </TabPanel>

              <TabPanel value={tab} index={2}>
                <MeetingsTable
                  rows={completedMeetings}
                  onOpenDetails={handleOpenDetails}
                  onEdit={handleEditMeeting}
                  onCancel={handleCancelMeeting}
                />
              </TabPanel>

              <TabPanel value={tab} index={3}>
                <MeetingsTable
                  rows={cancelledMeetings}
                  onOpenDetails={handleOpenDetails}
                  onEdit={handleEditMeeting}
                  onCancel={handleCancelMeeting}
                />
              </TabPanel>
            </Box>
          </Paper>
        </Box>
      </Box>

      <CreateMeetingModal
        open={openCreateModal}
        onClose={handleCloseMeetingModal}
        employees={employees}
        departments={departments}
        editingMeeting={editingMeeting}
      />

      <MeetingDetailsModal
        open={detailsOpen}
        onClose={handleCloseDetails}
        row={selectedMeeting}
      />
    </AuthenticatedLayout>
  );
}