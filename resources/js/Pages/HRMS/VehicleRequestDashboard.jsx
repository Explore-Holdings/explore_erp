import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, router } from "@inertiajs/react";

import CalendarTodayIcon from "@mui/icons-material/CalendarToday";
import HourglassEmptyOutlinedIcon from "@mui/icons-material/HourglassEmptyOutlined";
import CheckCircleOutlinedIcon from "@mui/icons-material/CheckCircleOutlined";
import DirectionsCarOutlinedIcon from "@mui/icons-material/DirectionsCarOutlined";
import PlayCircleOutlineOutlinedIcon from "@mui/icons-material/PlayCircleOutlineOutlined";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import SwapHorizIcon from "@mui/icons-material/SwapHoriz";

import {
  Box,
  Stack,
  Typography,
  Divider,
  Card,
  CardContent,
  Chip,
  Grid,
  Button,
  Paper,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Table,
  TableHead,
  TableBody,
  TableRow,
  TableCell,
  TableContainer,
  TextField,
  Tabs,
  Tab,
  List,
  ListItemButton,
  ListItemText,
  Alert,
} from "@mui/material";

const SIDEBAR_WIDTH = 240;

const formatDate = (d) =>
  d
    ? new Date(d).toLocaleDateString("en-US", {
        year: "numeric",
        month: "short",
        day: "numeric",
      })
    : "";

const getDateDisplay = (r) => {
  const start = formatDate(r.start_date);
  if (r.is_one_day) return start;
  const end = formatDate(r.end_date);
  return `${start} to ${end}`;
};

// ── Stat Card ──────────────────────────────────────────────────────────────────
const StatCard = ({ icon: Icon, label, value }) => (
  <Card sx={{ borderRadius: 2, border: "1px solid #e5e7eb", width: "100%" }}>
    <CardContent>
      <Stack direction="row" spacing={2} alignItems="center">
        <Box
          sx={{
            width: 44,
            height: 44,
            borderRadius: 2,
            display: "grid",
            placeItems: "center",
            bgcolor: "#f1f5f9",
            color: "#111827",
          }}
        >
          <Icon />
        </Box>
        <Box>
          <Typography variant="body2" sx={{ color: "#6b7280" }}>
            {label}
          </Typography>
          <Typography variant="h5" fontWeight={800} sx={{ color: "#111827" }}>
            {value}
          </Typography>
        </Box>
      </Stack>
    </CardContent>
  </Card>
);

// ── Status styles ──────────────────────────────────────────────────────────────
const statusStyles = {
  assigned:    { label: "Assigned",    bg: "#f1f5f9", color: "#334155" },
  start_trip:  { label: "Start Trip",  bg: "#e0f2fe", color: "#075985" },
  in_progress: { label: "In Progress", bg: "#fef9c3", color: "#854d0e" },
  completed:   { label: "Completed",   bg: "#ecfdf5", color: "#047857" },
  pending:     { label: "Pending",     bg: "#ecfdf5", color: "#346902" },
  approved:    { label: "Approved",    bg: "#ecfdf5", color: "#8f0081" },
  rejected:    { label: "Rejected",    bg: "#fdecea", color: "#8f0000" },
};

// ── Key-value Row ──────────────────────────────────────────────────────────────
const Row = ({ label, value }) => (
  <Stack direction="row" justifyContent="space-between" spacing={2}>
    <Typography variant="body2" sx={{ color: "#6b7280", minWidth: 170 }}>
      {label}
    </Typography>
    <Typography
      variant="body2"
      fontWeight={700}
      sx={{ color: "#111827", textAlign: "right" }}
    >
      {value}
    </Typography>
  </Stack>
);

// ── Image Preview Dialog ───────────────────────────────────────────────────────
const ImagePreviewDialog = ({ open, onClose, src, title = "Preview" }) => (
  <Dialog open={open} onClose={onClose} maxWidth="md" fullWidth>
    <DialogTitle sx={{ fontWeight: 900 }}>{title}</DialogTitle>
    <DialogContent dividers>
      {!src ? (
        <Typography>No image</Typography>
      ) : (
        <Box
          component="img"
          src={src}
          alt={title}
          sx={{
            width: "100%",
            height: "auto",
            borderRadius: 2,
            border: "1px solid #e5e7eb",
            objectFit: "contain",
          }}
        />
      )}
    </DialogContent>
    <DialogActions>
      <Button onClick={onClose} sx={{ textTransform: "none" }}>Close</Button>
    </DialogActions>
  </Dialog>
);

// ── Details Dialog ─────────────────────────────────────────────────────────────
const DetailsDialog = ({ open, onClose, data, statusLabel }) => {
  if (!data) return null;
  const dateDisplay = getDateDisplay(data);

  return (
    <Dialog open={open} onClose={onClose} fullWidth maxWidth="sm">
      <DialogTitle sx={{ fontWeight: 900 }}>
        {data.vehicle_no || "Vehicle"} — {statusLabel}
      </DialogTitle>
      <DialogContent dividers>
        <Stack spacing={1.25}>
          <Row label="Employee"          value={data.employee_name || data.chauffer_name || "—"} />
          <Row label="Trip Code"         value={data.trip_code || "—"} />
          <Row label="Type"              value={(data.type || "—").toUpperCase()} />
          <Row label="Passengers"        value={data.passenger_count ?? "—"} />
          <Row label="Start Destination" value={data.start_destinations || "—"} />
          <Row label="End Destination"   value={data.destinations || "—"} />
          <Row label="Date"              value={dateDisplay} />
          {data.created_at && (
            <Row label="Requested On" value={formatDate(data.created_at)} />
          )}
          {data.reject_reason && (
            <Row label="Reject Reason" value={data.reject_reason} />
          )}
        </Stack>
      </DialogContent>
      <DialogActions>
        <Button onClick={onClose} sx={{ textTransform: "none" }}>Close</Button>
      </DialogActions>
    </Dialog>
  );
};

// ── Vehicle Change Dialog ──────────────────────────────────────────────────────
const VehicleChangeDialog = ({ open, onClose, data }) => {
  const [previewOpen, setPreviewOpen]   = useState(false);
  const [previewSrc, setPreviewSrc]     = useState("");
  const [previewTitle, setPreviewTitle] = useState("");

  const openPreview = (src, title) => {
    setPreviewSrc(src);
    setPreviewTitle(title);
    setPreviewOpen(true);
  };

  if (!data) return null;

  const td = data.trip_details;

  return (
    <>
      <Dialog open={open} onClose={onClose} maxWidth="md" fullWidth>
        <DialogTitle sx={{ fontWeight: 900, display: "flex", alignItems: "center", gap: 1 }}>
          <SwapHorizIcon sx={{ color: "#d97706" }} />
          Vehicle Change Details
        </DialogTitle>

        <DialogContent dividers>
          <Stack spacing={2}>

            {/* Original → Changed banner */}
            <Box
              sx={{
                display: "flex",
                alignItems: "center",
                gap: 2,
                p: 2,
                borderRadius: 2,
                bgcolor: "#fffbeb",
                border: "1px solid #fde68a",
              }}
            >
              {/* Original vehicle */}
              <Box sx={{ textAlign: "center", flex: 1 }}>
                <Typography variant="caption" sx={{ color: "#6b7280", fontWeight: 700, textTransform: "uppercase" }}>
                  Original Vehicle
                </Typography>
                <Typography variant="h6" fontWeight={900} sx={{ color: "#111827" }}>
                  {data.vehicle_no || "—"}
                </Typography>
              </Box>

              <SwapHorizIcon sx={{ color: "#d97706", fontSize: 32 }} />

              {/* Changed vehicle */}
              <Box sx={{ textAlign: "center", flex: 1 }}>
                <Typography variant="caption" sx={{ color: "#6b7280", fontWeight: 700, textTransform: "uppercase" }}>
                  Changed Vehicle
                </Typography>
                <Typography variant="h6" fontWeight={900} sx={{ color: "#d97706" }}>
                  {td?.change_vehicle_no || "—"}
                </Typography>
              </Box>
            </Box>

            <Divider />

            {/* Change info rows */}
            <Row label="Change Date/Time"         value={td?.change_vehicle_datetime || "—"} />
            <Row label="Start Odometer (Changed)" value={td?.change_vehicle_start_odometer ?? "—"} />
            <Row label="End Odometer (Changed)"   value={td?.change_vehicle_end_odometer ?? "—"} />
            <Row label="Start Fuel % (Changed)"   value={td?.change_vehicle_start_fuel ?? "—"} />
            <Row label="End Fuel % (Changed)"     value={td?.change_vehicle_end_fuel ?? "—"} />
            {td?.change_vehicle_remark && (
              <Row label="Remark" value={td.change_vehicle_remark} />
            )}

            <Divider />

            {/* Photos */}
            <Typography fontWeight={900} sx={{ color: "#111827" }}>
              Changed Vehicle Photos
            </Typography>

            <Stack direction={{ xs: "column", sm: "row" }} spacing={2}>
              {/* Start photo */}
              <Box sx={{ flex: 1 }}>
                <Typography variant="body2" fontWeight={700} sx={{ mb: 1, color: "#374151" }}>
                  Start Odometer Photo
                </Typography>
                {td?.change_vehicle_start_photo ? (
                  <Box
                    component="img"
                    src={td.change_vehicle_start_photo}
                    alt="Change Start Odometer"
                    onClick={() => openPreview(td.change_vehicle_start_photo, "Start Odometer Photo (Changed Vehicle)")}
                    sx={{
                      width: "100%",
                      maxWidth: 260,
                      height: 160,
                      borderRadius: 2,
                      border: "1px solid #e5e7eb",
                      objectFit: "cover",
                      cursor: "pointer",
                      "&:hover": { opacity: 0.85 },
                    }}
                  />
                ) : (
                  <Typography sx={{ color: "#9ca3af" }}>No image</Typography>
                )}
              </Box>

              {/* End photo */}
              <Box sx={{ flex: 1 }}>
                <Typography variant="body2" fontWeight={700} sx={{ mb: 1, color: "#374151" }}>
                  End Odometer Photo
                </Typography>
                {td?.change_vehicle_end_photo ? (
                  <Box
                    component="img"
                    src={td.change_vehicle_end_photo}
                    alt="Change End Odometer"
                    onClick={() => openPreview(td.change_vehicle_end_photo, "End Odometer Photo (Changed Vehicle)")}
                    sx={{
                      width: "100%",
                      maxWidth: 260,
                      height: 160,
                      borderRadius: 2,
                      border: "1px solid #e5e7eb",
                      objectFit: "cover",
                      cursor: "pointer",
                      "&:hover": { opacity: 0.85 },
                    }}
                  />
                ) : (
                  <Typography sx={{ color: "#9ca3af" }}>No image</Typography>
                )}
              </Box>
            </Stack>

          </Stack>
        </DialogContent>

        <DialogActions>
          <Button onClick={onClose} sx={{ textTransform: "none" }}>Close</Button>
        </DialogActions>
      </Dialog>

      <ImagePreviewDialog
        open={previewOpen}
        onClose={() => setPreviewOpen(false)}
        src={previewSrc}
        title={previewTitle}
      />
    </>
  );
};

// ── Odometer Dialog ────────────────────────────────────────────────────────────
const OdometerDialog = ({ open, onClose, data }) => {
  const [previewOpen, setPreviewOpen]   = useState(false);
  const [previewSrc, setPreviewSrc]     = useState("");
  const [previewTitle, setPreviewTitle] = useState("");

  const openPreview = (src, title) => {
    setPreviewSrc(src);
    setPreviewTitle(title);
    setPreviewOpen(true);
  };

  if (!data) {
    return (
      <>
        <Dialog open={open} onClose={onClose} maxWidth="sm" fullWidth>
          <DialogTitle sx={{ fontWeight: 900 }}>Odometer Details</DialogTitle>
          <DialogContent dividers>
            <Typography>No odometer details available.</Typography>
          </DialogContent>
          <DialogActions>
            <Button onClick={onClose} sx={{ textTransform: "none" }}>Close</Button>
          </DialogActions>
        </Dialog>
        <ImagePreviewDialog open={previewOpen} onClose={() => setPreviewOpen(false)} src={previewSrc} title={previewTitle} />
      </>
    );
  }

  return (
    <>
      <Dialog open={open} onClose={onClose} maxWidth="md" fullWidth>
        <DialogTitle sx={{ fontWeight: 900 }}>Odometer Details</DialogTitle>

        <DialogContent dividers>
          <Stack spacing={2}>
            <Row label="Trip ID"          value={data.trip_detail_id ?? "—"} />
            <Row label="Start DateTime"   value={data.trip_start_datetime ?? "—"} />
            <Row label="End DateTime"     value={data.trip_end_datetime || "—"} />
            <Row label="Start Odometer"   value={data.trip_start_odometer ?? "—"} />
            <Row label="End Odometer"     value={data.trip_end_odometer ?? "—"} />
            <Row label="Start Fuel %"     value={data.start_trip_fuel ?? "—"} />
            <Row label="End Fuel %"       value={data.end_trip_fuel ?? "—"} />
            {data.start_remark && <Row label="Start Remark" value={data.start_remark} />}
            {data.end_remark   && <Row label="End Remark"   value={data.end_remark} />}

            {/* Vehicle Changed notice inside odometer dialog */}
            {data.change_vehicle_no && (
              <Alert
                severity="warning"
                icon={<SwapHorizIcon />}
                sx={{ fontWeight: 700 }}
              >
                Vehicle was changed to&nbsp;
                <strong>{data.change_vehicle_no}</strong>
                {data.change_vehicle_datetime && (
                  <> on {data.change_vehicle_datetime}</>
                )}
              </Alert>
            )}

            <Stack direction={{ xs: "column", sm: "row" }} spacing={2} sx={{ mt: 1 }}>
              <Box sx={{ flex: 1 }}>
                <Typography fontWeight={900} sx={{ mb: 1, color: "#111827" }}>
                  Start Odometer Photo
                </Typography>
                {data.trip_start_odometer_photo ? (
                  <Box
                    component="img"
                    src={data.trip_start_odometer_photo}
                    alt="Start Odometer"
                    onClick={() => openPreview(data.trip_start_odometer_photo, "Start Odometer Photo")}
                    sx={{
                      width: "100%", maxWidth: 260, height: 160, borderRadius: 2,
                      border: "1px solid #e5e7eb", objectFit: "cover", cursor: "pointer",
                      "&:hover": { opacity: 0.9 },
                    }}
                  />
                ) : (
                  <Typography sx={{ color: "#6b7280" }}>No image</Typography>
                )}
              </Box>

              <Box sx={{ flex: 1 }}>
                <Typography fontWeight={900} sx={{ mb: 1, color: "#111827" }}>
                  End Odometer Photo
                </Typography>
                {data.trip_end_odometer_photo ? (
                  <Box
                    component="img"
                    src={data.trip_end_odometer_photo}
                    alt="End Odometer"
                    onClick={() => openPreview(data.trip_end_odometer_photo, "End Odometer Photo")}
                    sx={{
                      width: "100%", maxWidth: 260, height: 160, borderRadius: 2,
                      border: "1px solid #e5e7eb", objectFit: "cover", cursor: "pointer",
                      "&:hover": { opacity: 0.9 },
                    }}
                  />
                ) : (
                  <Typography sx={{ color: "#6b7280" }}>No image</Typography>
                )}
              </Box>
            </Stack>
          </Stack>
        </DialogContent>

        <DialogActions>
          <Button onClick={onClose} sx={{ textTransform: "none" }}>Close</Button>
        </DialogActions>
      </Dialog>

      <ImagePreviewDialog
        open={previewOpen}
        onClose={() => setPreviewOpen(false)}
        src={previewSrc}
        title={previewTitle}
      />
    </>
  );
};

// ── Status key helper ──────────────────────────────────────────────────────────
const statusToKey = (s) => (s ? String(s).toLowerCase() : "assigned");

// ══════════════════════════════════════════════════════════════════════════════
// MAIN PAGE
// ══════════════════════════════════════════════════════════════════════════════
export default function VehicleRequestDashboard({
  auth,
  vehiclesToBeOutToday = [],
  assignedRequests = [],
  startTripRequests = [],
  inProgressRequests = [],
  completedRequests = [],
  allRequests = [],
  searchedVehicle = "",
  currentTrips = [],
  pastTrips = [],
}) {
  const handleExport = () => {
    const params = new URLSearchParams();
    params.append("status", statusTabs[tabValue]);
    if (typeFilter) params.append("type", typeFilter);
    if (q.trim()) params.append("q", q.trim());
    window.open(`/vehicle-requests/dashboard/export?${params.toString()}`, "_blank");
  };

  // ── Dialog states ──
  const [open, setOpen]                           = useState(false);
  const [selected, setSelected]                   = useState(null);
  const [selectedStatusLabel, setSelectedStatusLabel] = useState("");

  const [odoOpen, setOdoOpen]   = useState(false);
  const [odoData, setOdoData]   = useState(null);

  // ── NEW: vehicle change dialog state ──
  const [vcOpen, setVcOpen]     = useState(false);
  const [vcData, setVcData]     = useState(null);   // full row so we have vehicle_no too

  // ── Filters ──
  const [tabValue, setTabValue] = useState(0);
  const [q, setQ]               = useState("");
  const [typeFilter, setTypeFilter] = useState("");

  const statusTabs = [
    "ALL", "OUT_TODAY", "ASSIGNED", "START_TRIP",
    "IN_PROGRESS", "COMPLETED", "PENDING", "APPROVED", "REJECTED", "INCOMPLETE_TRIP","CHANGED_VEHICLES",
  ];

  const requestTypes = useMemo(() => {
    const types = new Set();
    allRequests.forEach((r) => { if (r.type) types.add(r.type.toLowerCase()); });
    return [...types].sort();
  }, [allRequests]);

  const changedVehicles = useMemo(() => {
    return allRequests.filter((r) => !!r.trip_details?.change_vehicle_no);
  }, [allRequests]);

  const incompleteTrips = useMemo(() => {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    return allRequests.filter((r) => {
      if (String(r.status || "").toLowerCase() !== "in_progress") return false;
      if (!r.end_date) return false;
      const endDate = new Date(r.end_date);
      endDate.setHours(0, 0, 0, 0);
      return endDate < today;
    });
  }, [allRequests]);

  const activeInProgressCount = useMemo(() => {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    return inProgressRequests.filter((r) => {
      if (!r.end_date) return true;
      const endDate = new Date(r.end_date);
      endDate.setHours(0, 0, 0, 0);
      return endDate >= today;
    }).length;
  }, [inProgressRequests]);

  // ── Handlers ──
  const onOdometerView = (item) => {
    setOdoData(item.trip_details || null);
    setOdoOpen(true);
  };

  const onView = (item) => {
    const sKey = statusToKey(item.status);
    const label = statusStyles[sKey]?.label || "Assigned";
    setSelected(item);
    setSelectedStatusLabel(label);
    setOpen(true);
  };

  // NEW: open vehicle change modal
  const onVehicleChangeView = (item) => {
    setVcData(item);
    setVcOpen(true);
  };

  const filtered = useMemo(() => {
    const needle = q.trim().toLowerCase();
    const statusFilter = statusTabs[tabValue];
    const today = new Date();
    today.setHours(0, 0, 0, 0);

    return allRequests
      .filter((r) => {
        if (statusFilter === "ALL") return true;

        if (statusFilter === "OUT_TODAY") {
          if (!r.start_date) return false;
          const startDate = new Date(r.start_date);
          startDate.setHours(0, 0, 0, 0);
          return startDate.getTime() === today.getTime();
        }

        if (statusFilter === "IN_PROGRESS") {
          if (String(r.status || "").toLowerCase() !== "in_progress") return false;
          if (r.end_date) {
            const endDate = new Date(r.end_date);
            endDate.setHours(0, 0, 0, 0);
            if (endDate < today) return false;
          }
          return true;
        }

        if (statusFilter === "INCOMPLETE_TRIP") {
          if (String(r.status || "").toLowerCase() !== "in_progress") return false;
          if (!r.end_date) return false;
          const endDate = new Date(r.end_date);
          endDate.setHours(0, 0, 0, 0);
          return endDate < today;
        }

        // ── NEW ──
        if (statusFilter === "CHANGED_VEHICLES") {
          return !!r.trip_details?.change_vehicle_no;
        }

        return String(r.status || "").toUpperCase() === statusFilter;
      })
      .filter((r) => {
        if (!typeFilter) return true;
        return String(r.type || "").toLowerCase() === typeFilter;
      })
      .filter((r) => {
        if (!needle) return true;
        const fields = [
          r.vehicle_no,
          r.trip_code,
          r.type,
          r.employee_name,
          r.chauffer_name,
          r.destinations,
          r.trip_details?.change_vehicle_no,  // ← also search changed vehicle no
        ]
          .filter(Boolean)
          .join(" ")
          .toLowerCase();
        return fields.includes(needle);
      })
      .sort((a, b) => {
        const da = a.start_date ? new Date(a.start_date).getTime() : 0;
        const db = b.start_date ? new Date(b.start_date).getTime() : 0;
        return db - da;
      });
  }, [allRequests, tabValue, q, typeFilter]);

  // ════════════════════════════════════════════════════════════════════════════
  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Vehicle Request Dashboard" />

      <Box sx={{ display: "flex", minHeight: "100vh", backgroundColor: "#f5f7fa" }}>

        {/* ── SIDEBAR ── */}
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
          <Typography fontWeight={900} sx={{ mb: 2 }}>Vehicle Requests</Typography>
          <Divider sx={{ mb: 2 }} />

          <List disablePadding>
            <ListItemButton onClick={() => router.get("/suite-services")} sx={{ borderRadius: 2, mb: 0.5 }}>
              <HomeOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText primary="HRMS Home" primaryTypographyProps={{ fontWeight: 600 }} />
            </ListItemButton>

            <ListItemButton
              selected={typeFilter === "personal"}
              onClick={() => setTypeFilter("personal")}
              sx={{ borderRadius: 2, mb: 0.5 }}
            >
              <DirectionsCarOutlinedIcon sx={{ mr: 1.5, color: "#374151" }} />
              <ListItemText primary="Personal Vehicle Requests" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>

            <Divider sx={{ my: 1.5 }} />

            <Typography sx={{ fontSize: "0.75rem", color: "#6b7280", fontWeight: 700, px: 1.5, mb: 1 }}>
              TRIP TYPES
            </Typography>

            <ListItemButton
              selected={typeFilter === ""}
              onClick={() => setTypeFilter("")}
              sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
            >
              <ListItemText primary="All Trip Types" primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }} />
            </ListItemButton>

            {requestTypes.map((type) => (
              <ListItemButton
                key={type}
                selected={typeFilter === type}
                onClick={() => setTypeFilter(type)}
                sx={{ borderRadius: 2, mb: 0.5, pl: 3 }}
              >
                <ListItemText
                  primary={type.charAt(0).toUpperCase() + type.slice(1)}
                  primaryTypographyProps={{ fontWeight: 600, fontSize: "0.9rem" }}
                />
              </ListItemButton>
            ))}
          </List>
        </Box>

        {/* ── MAIN CONTENT ── */}
        <Box sx={{ flex: 1, p: { xs: 2, sm: 3, lg: 4 }, overflowY: "auto" }}>

          {/* Header */}
          <Box sx={{ mb: 3 }}>
            <Typography variant="h5" fontWeight={900} sx={{ color: "#111827" }}>
              Vehicle Request Dashboard
            </Typography>
          </Box>

          {/* Stats */}
          <Grid container spacing={2} sx={{ mb: 3 }}>
            {[
              { tab: "OUT_TODAY",       icon: CalendarTodayIcon,              label: "Out Today",         value: vehiclesToBeOutToday.length },
              { tab: "ASSIGNED",        icon: HourglassEmptyOutlinedIcon,     label: "Assigned",          value: assignedRequests.length },
              { tab: "START_TRIP",      icon: PlayCircleOutlineOutlinedIcon,  label: "Start Trip",        value: startTripRequests.length },
              { tab: "IN_PROGRESS",     icon: DirectionsCarOutlinedIcon,      label: "In Progress",       value: activeInProgressCount },
              { tab: "INCOMPLETE_TRIP", icon: CheckCircleOutlinedIcon,        label: "Incomplete Trips",  value: incompleteTrips.length },
              { tab: "CHANGED_VEHICLES", icon: SwapHorizIcon,                 label: "Changed Vehicles",   value: changedVehicles.length }, 

            ].map(({ tab, icon, label, value }) => (
              <Grid item xs={12} sm={6} lg={3} key={tab}>
                <Box
                  onClick={() => setTabValue(statusTabs.indexOf(tab))}
                  sx={{
                    cursor: "pointer",
                    transition: "all 0.3s ease",
                    "&:hover": { transform: "translateY(-4px)", boxShadow: "0 10px 20px rgba(0,0,0,0.1)" },
                  }}
                >
                  <StatCard icon={icon} label={label} value={value} />
                </Box>
              </Grid>
            ))}
          </Grid>

          {/* Table */}
          <Paper sx={{ p: 2, borderRadius: 2, border: "1px solid #e5e7eb" }}>
            <Stack
              direction={{ xs: "column", md: "row" }}
              spacing={2}
              justifyContent="space-between"
              alignItems={{ xs: "stretch", md: "center" }}
              sx={{ mb: 2 }}
            >
              <Stack direction="row" spacing={1} alignItems="center">
                <DirectionsCarOutlinedIcon sx={{ color: "#6b7280" }} />
                <Typography variant="subtitle1" fontWeight={900} sx={{ color: "#111827" }}>
                  All Requests
                </Typography>
                <Chip size="small" label={`${filtered.length}`} sx={{ bgcolor: "#f1f5f9" }} />
              </Stack>

              <Stack direction={{ xs: "column", sm: "row" }} spacing={1}>
                <TextField
                  size="small"
                  value={q}
                  onChange={(e) => setQ(e.target.value)}
                  placeholder="Filter by vehicle / employee / trip code..."
                  sx={{ width: { xs: "100%", sm: 320 } }}
                />
                <Button
                  variant="contained"
                  onClick={handleExport}
                  sx={{ textTransform: "none", fontWeight: 800 }}
                >
                  Export CSV
                </Button>
              </Stack>
            </Stack>

            <Tabs
              value={tabValue}
              onChange={(_, newValue) => setTabValue(newValue)}
              sx={{
                borderBottom: "2px solid #e5e7eb",
                mb: 2,
                "& .MuiTab-root": { textTransform: "none", fontWeight: 700, fontSize: "0.95rem" },
              }}
            >
              {statusTabs.map((status) => (
                <Tab key={status} label={status.replace(/_/g, " ")} />
              ))}
            </Tabs>

            <TableContainer>
              <Table size="small">
                <TableHead>
                  <TableRow>
                    <TableCell sx={{ fontWeight: 900 }}>Vehicle</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Trip Code</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Employee / Chauffer</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Type</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Date</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Attempts</TableCell>
                    <TableCell sx={{ fontWeight: 900 }}>Status</TableCell>
                    <TableCell align="right" sx={{ fontWeight: 900 }}>Action</TableCell>
                  </TableRow>
                </TableHead>

                <TableBody>
                  {!filtered.length ? (
                    <TableRow>
                      <TableCell colSpan={8}>
                        <Box sx={{ py: 4, textAlign: "center", color: "#64748b" }}>
                          No results found.
                        </Box>
                      </TableCell>
                    </TableRow>
                  ) : (
                    filtered.map((r) => {
                      const sKey = statusToKey(r.status);
                      const isIncompleteTab = statusTabs[tabValue] === "INCOMPLETE_TRIP";
                      const s = isIncompleteTab
                        ? { label: "Incomplete", bg: "#fee2e2", color: "#991b1b" }
                        : statusStyles[sKey] || statusStyles.assigned;

                      // ── has vehicle change? ──
                      const hasVehicleChange = !!r.trip_details?.change_vehicle_no;

                      return (
                        <TableRow key={r.vehicle_request_id} hover>
                          {/* Vehicle — show changed badge if applicable */}
                          <TableCell sx={{ fontWeight: 800, color: "#111827" }}>
                            <Stack direction="row" spacing={1} alignItems="center">
                              <span>{r.vehicle_no || "—"}</span>
                              {hasVehicleChange && (
                                <Chip
                                  size="small"
                                  icon={<SwapHorizIcon sx={{ fontSize: 14 }} />}
                                  label="Vehicle Changed"
                                  sx={{
                                    bgcolor: "#fffbeb",
                                    color: "#92400e",
                                    border: "1px solid #fde68a",
                                    fontWeight: 700,
                                    fontSize: "0.68rem",
                                    height: 20,
                                    "& .MuiChip-icon": { color: "#d97706" },
                                  }}
                                />
                              )}
                            </Stack>
                          </TableCell>

                          <TableCell sx={{ color: "#374151" }}>{r.trip_code || "—"}</TableCell>

                          <TableCell sx={{ color: "#374151" }}>
                            {r.employee_name || r.chauffer_name || "Employee"}
                          </TableCell>

                          <TableCell sx={{ color: "#374151" }}>
                            {(r.type || "—").toUpperCase()}
                          </TableCell>

                          <TableCell sx={{ color: "#374151" }}>{getDateDisplay(r)}</TableCell>

                          <TableCell sx={{ color: "#374151" }}>{r.attempts_count ?? "—"}</TableCell>

                          <TableCell>
                            <Chip
                              size="small"
                              label={s.label}
                              sx={{ bgcolor: s.bg, color: s.color, fontWeight: 800, borderRadius: 1 }}
                            />
                          </TableCell>

                          {/* Actions */}
                          <TableCell align="right">
                            <Stack direction="row" spacing={1} justifyContent="flex-end" flexWrap="wrap">
                              <Button
                                size="small"
                                variant="outlined"
                                onClick={() => onView(r)}
                                sx={{ textTransform: "none", fontWeight: 800 }}
                              >
                                View
                              </Button>

                              <Button
                                size="small"
                                variant="contained"
                                color="secondary"
                                onClick={() => onOdometerView(r)}
                                sx={{ textTransform: "none", fontWeight: 800 }}
                              >
                                Odometer
                              </Button>

                              {/* ── NEW: Vehicle Change button ── */}
                              {hasVehicleChange && (
                                <Button
                                  size="small"
                                  variant="contained"
                                  onClick={() => onVehicleChangeView(r)}
                                  sx={{
                                    textTransform: "none",
                                    fontWeight: 800,
                                    bgcolor: "#d97706",
                                    "&:hover": { bgcolor: "#b45309" },
                                  }}
                                  startIcon={<SwapHorizIcon />}
                                >
                                  Changed
                                </Button>
                              )}
                            </Stack>
                          </TableCell>
                        </TableRow>
                      );
                    })
                  )}
                </TableBody>
              </Table>
            </TableContainer>
          </Paper>

          {/* ── MODALS ── */}
          <DetailsDialog
            open={open}
            onClose={() => setOpen(false)}
            data={selected}
            statusLabel={selectedStatusLabel}
          />

          <OdometerDialog
            open={odoOpen}
            onClose={() => setOdoOpen(false)}
            data={odoData}
          />

          {/* NEW: Vehicle Change Modal */}
          <VehicleChangeDialog
            open={vcOpen}
            onClose={() => setVcOpen(false)}
            data={vcData}
          />

        </Box>
      </Box>
    </AuthenticatedLayout>
  );
}