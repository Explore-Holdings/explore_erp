import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router, useForm } from "@inertiajs/react";
import { Autocomplete, Tabs, Tab } from "@mui/material";
import CheckCircleOutlineIcon from "@mui/icons-material/CheckCircleOutline";
import {
  AppBar,
  Box,
  Button,
  Container,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Divider,
  Drawer,
  IconButton,
  List,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  Stack,
  TextField,
  Toolbar,
  Typography,
  useMediaQuery,
  Tooltip,
  
} from "@mui/material";

import { DataGrid } from "@mui/x-data-grid";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import PeopleAltOutlinedIcon from "@mui/icons-material/PeopleAltOutlined";
import AddOutlinedIcon from "@mui/icons-material/AddOutlined";
import EditOutlinedIcon from "@mui/icons-material/EditOutlined";
import DeleteOutlineOutlinedIcon from "@mui/icons-material/DeleteOutlineOutlined";
import VisibilityOutlinedIcon from "@mui/icons-material/VisibilityOutlined";
import Menu from "@mui/material/Menu";
import MenuItem from "@mui/material/MenuItem";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import PersonOutlineOutlinedIcon from "@mui/icons-material/PersonOutlineOutlined";
import LogoutOutlinedIcon from "@mui/icons-material/LogoutOutlined";
import ApartmentOutlinedIcon from "@mui/icons-material/ApartmentOutlined";
import BadgeOutlinedIcon from "@mui/icons-material/BadgeOutlined";

const drawerWidth = 260;

const navItems = [
  { label: "HRMS Home", href: "/suite-services", icon: <HomeOutlinedIcon /> },
  { label: "Dashboard", href: "/hrms/emp-dashboard", icon: <DashboardOutlinedIcon /> },
  { label: "Employees", href: "/hrms/employees", icon: <PeopleAltOutlinedIcon /> },
  { label: "Departments", href: "/hrms/departments", icon: <ApartmentOutlinedIcon /> },
  { label: "Job Titles", href: "/hrms/job-titles", icon: <BadgeOutlinedIcon /> },
];

export default function Employees({ auth, employees, isAdmin  = [] }) {

  const baseColumns = [
    { field: "employee_code", headerName: "EMP Code", flex: 1, minWidth: 160 },

    {
      field: "name",
      headerName: "Employee Name",
      flex: 1.2,
      minWidth: 220,
      valueGetter: (value, row) => `${row?.preferred_name ?? ""}`.trim(),
    },

    { field: "department", headerName: "Department", flex: 1, minWidth: 160 },

    { field: "employment_level", headerName: "Status", flex: 0.8, minWidth: 130 },
  ];
  
  const isMdUp = useMediaQuery("(min-width:900px)");
  const [mobileOpen, setMobileOpen] = useState(false);
  const [userMenuAnchor, setUserMenuAnchor] = useState(null);
  const userMenuOpen = Boolean(userMenuAnchor);

  const [openMakeAvailableConfirm, setOpenMakeAvailableConfirm] = useState(false);
  const [availableTarget, setAvailableTarget] = useState(null);

  const [tabValue, setTabValue] = useState(0);

  const [openUnavailable, setOpenUnavailable] = useState(false);
  const [selectedEmployees, setSelectedEmployees] = useState([]);
  const [employeeDetails, setEmployeeDetails] = useState({});

  const openUserMenu = (e) => setUserMenuAnchor(e.currentTarget);
  const closeUserMenu = () => setUserMenuAnchor(null);

  // dialogs
  const [openForm, setOpenForm] = useState(false);
  const [mode, setMode] = useState("create"); 

  // delete
  const [openDelete, setOpenDelete] = useState(false);
  const [deleteTarget, setDeleteTarget] = useState(null);

  const availableEmployees = useMemo(() => {
    return employees.filter(emp => emp.availability_status !== "unavailable");
  }, [employees]);

  const availableList = useMemo(() => {
    return employees.filter(e => (e.availability_status ?? "available") !== "unavailable");
  }, [employees]);

  const unavailableList = useMemo(() => {
    return employees.filter(e => e.availability_status === "unavailable");
  }, [employees]);

  // Inertia form
  const { data, setData, post, put, processing, reset, errors } = useForm({
    id: null,
    employee_code: "",
    preferred_name : "",
    work_email: "",
    department: "",
  });

  const handleEmployeeChange = (event, value) => {
    setSelectedEmployees(value);

    // Initialize fields for each employee
    const updatedDetails = {};
    value.forEach(emp => {
      updatedDetails[emp.id] = employeeDetails[emp.id] || {
        unavailable_from: "",
        unavailable_to: "",
        unavailable_reason: "",
      };
    });

    setEmployeeDetails(updatedDetails);
  };

  const handleDetailChange = (id, field, value) => {
    setEmployeeDetails(prev => ({
      ...prev,
      [id]: {
        ...prev[id],
        [field]: value,
      },
    }));
  };

  const toggleMobile = () => setMobileOpen((v) => !v);

  const openCreate = () => {
    setMode("create");
    reset();
    setData({
      id: null,
      employee_code: "",
      last_name: "",
      work_email: "",
      department: "",
      status: "Active",
    });
  };

  const goCreate = () => {
    router.get("/hrms/employees/create");
  };

  const openEdit = (row) => router.get(`/hrms/employees/${row.id}/edit`);

  const saveForm = () => {
    if (!data.employee_code || !data.last_name) return;

    if (mode === "create") {
      post("/hrms/employees", {
        preserveScroll: true,
        onSuccess: () => {
          setOpenForm(false);
          reset();
        },
      });
    } else {
      put(`/hrms/employees/${data.id}`, {
        preserveScroll: true,
        onSuccess: () => {
          setOpenForm(false);
          reset();
        },
      });
    }
  };

  const askDelete = (row) => {
    setDeleteTarget(row);
    setOpenDelete(true);
  };

  const saveUnavailableBulk = () => {
    const payload = selectedEmployees.map(emp => ({
      employee_id: emp.id,
      ...employeeDetails[emp.id],
    }));

    router.post("/hrms/employees/unavailable-bulk", { employees: payload }, {
      onSuccess: () => {
        setOpenUnavailable(false);
        setSelectedEmployees([]);
        setEmployeeDetails({});
      }
    });
  };

  const confirmDelete = () => {
    if (!deleteTarget) return;

    router.delete(`/hrms/employees/${deleteTarget.id}`, {
      preserveScroll: true,
      onSuccess: () => {
        setOpenDelete(false);
        setDeleteTarget(null);
      },
    });
  };

  const columns = useMemo(() => {
    const isUnavailableTab = tabValue === 1;

    const actionColumn = {
      field: "actions",
      headerName: "Actions",
      sortable: false,
      filterable: false,
      minWidth: 280,
      align: "center",
      headerAlign: "center",

      renderCell: (params) => {
        const isUnavailable = params.row.availability_status === "unavailable";

        return (
          <Stack direction="row" spacing={0.5} alignItems="center">
            <Tooltip title="View">
              <IconButton
                size="small"
                onClick={() => router.get(`/hrms/employees/${params.row.id}`)}
                sx={{ color: "#0c7a2b" }}
              >
                <VisibilityOutlinedIcon />
              </IconButton>
            </Tooltip>

            {/* ❌ Hide edit in unavailable tab */}
            {!isUnavailableTab && !isUnavailable && (
              <Tooltip title="Edit">
                <IconButton
                  size="small"
                  onClick={() => openEdit(params.row)}
                  sx={{ color: "#074e96" }}
                >
                  <EditOutlinedIcon />
                </IconButton>
              </Tooltip>
            )}

            {/* ✅ Mark Available only in unavailable tab */}
            {isUnavailable && isUnavailableTab && (
              <Tooltip title="Mark as Available">
                <IconButton
                  size="small"
                  onClick={() => {
                    setAvailableTarget(params.row);
                    setOpenMakeAvailableConfirm(true);
                  }}
                  sx={{ color: "#0c7a2b" }}
                >
                  <CheckCircleOutlineIcon />
                </IconButton>
              </Tooltip>
            )}

            {isAdmin && (
              <Tooltip title="Delete">
                <IconButton
                  size="small"
                  onClick={() => askDelete(params.row)}
                  sx={{ color: "#8a0606" }}
                >
                  <DeleteOutlineOutlinedIcon />
                </IconButton>
              </Tooltip>
            )}
          </Stack>
        );
      },
    };

    // ✅ final columns list
    const cols = [...baseColumns];

    if (isUnavailableTab) {
      cols.push({
        field: "unavailable_reason",
        headerName: "Unavailable Reason",
        flex: 1.5,
        minWidth: 220,
        renderCell: (params) => (
          <Typography sx={{ color: "#555", fontSize: 13 }}>
            {params.row.unavailable_reason || "-"}
          </Typography>
        ),
      });
    }

    cols.push(actionColumn);

    return cols;
  }, [tabValue, isAdmin]);

  const Sidebar = (
    <Box sx={{ height: "100%", display: "flex", flexDirection: "column" }}>
      <Box sx={{ px: 2, py: 2 }}>
        <Typography fontWeight={900} sx={{ color: "#0B1C2D" }}>
          HRMS
        </Typography>
        <Typography variant="body2" color="text.secondary">
          Modules
        </Typography>
      </Box>

      <Divider />

      <List sx={{ px: 1 }}>
        {navItems.map((item) => (
          <ListItemButton
            key={item.href}
            component={Link}
            href={item.href}
            sx={{
              borderRadius: 2,
              mb: 0.5,
              border: "1px solid transparent",
              "&:hover": { borderColor: "#0B1C2D" },
            }}
          >
            <ListItemIcon sx={{ minWidth: 40, color: "#0B1C2D" }}>{item.icon}</ListItemIcon>
            <ListItemText primary={item.label} />
          </ListItemButton>
        ))}
      </List>

      <Box sx={{ flex: 1 }} />
        <Box sx={{ p: 2, borderTop: "1px solid", borderColor: "divider" }}>
        {/* clickable user row */}
        <Button
            onClick={openUserMenu}
            fullWidth
            sx={{
            justifyContent: "space-between",
            textTransform: "none",
            color: "#0B1C2D",
            px: 1,
            py: 1,
            borderRadius: 2,
            "&:hover": { backgroundColor: "rgba(11, 28, 45, 0.06)" },
            }}
            endIcon={<KeyboardArrowDownIcon />}
        >
            <Box sx={{ textAlign: "left" }}>
            <Typography fontWeight={700} sx={{ lineHeight: 1.1 }}>
                {auth?.user?.name ?? "User"}
            </Typography>
            <Typography variant="caption" color="text.secondary" sx={{ lineHeight: 1.1 }}>
                {auth?.user?.email ?? ""}
            </Typography>
            </Box>
        </Button>

        {/* dropdown */}
        <Menu
            anchorEl={userMenuAnchor}
            open={userMenuOpen}
            onClose={closeUserMenu}
            anchorOrigin={{ vertical: "top", horizontal: "left" }}
            transformOrigin={{ vertical: "bottom", horizontal: "left" }}
            PaperProps={{ sx: { borderRadius: 2, minWidth: 200 } }}
        >
            <MenuItem
            component={Link}
            href={route("profile.edit")}
            onClick={closeUserMenu}
            >
            <ListItemIcon sx={{ minWidth: 36 }}>
                <PersonOutlineOutlinedIcon fontSize="small" />
            </ListItemIcon>
            Profile
            </MenuItem>

             <MenuItem
                onClick={() => {
                    closeUserMenu();
                    router.post(route("logout"));
                }}
                >
                <ListItemIcon sx={{ minWidth: 36 }}>
                    <LogoutOutlinedIcon fontSize="small" />
                </ListItemIcon>
                Log Out
            </MenuItem>


        </Menu>
        </Box>
    </Box>
  );

  columns.filter(col => {
    if (tabValue === 1) return true; // unavailable tab
    return col.field !== "unavailable_reason";
  })

  return (
    <AuthenticatedLayout user={auth.user}>
      <Head title="Employees" />

      <Box sx={{ display: "flex" }}>
        {/* Top AppBar (mobile) */}
        <AppBar
          position="fixed"
          elevation={0}
          sx={{
            zIndex: (theme) => theme.zIndex.drawer + 1,
            borderBottom: "1px solid",
            borderColor: "divider",
            backgroundColor: "white",
            color: "#0B1C2D",
          }}
        >
          <Toolbar>
            {!isMdUp && (
              <IconButton edge="start" onClick={toggleMobile} sx={{ mr: 1, color: "#0B1C2D" }}>
                {/* <MenuIcon /> */}
              </IconButton>
            )}
            <Typography fontWeight={900}>Employees</Typography>

            <Box sx={{ flex: 1 }} />

            <Button
              variant="contained"
              startIcon={<AddOutlinedIcon />}
              onClick={goCreate}
              sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}
            >
              Create
            </Button>

            <Button
              variant="contained"
              startIcon={<AddOutlinedIcon />}
              onClick={() => setOpenUnavailable(true)}
              sx={{ backgroundColor: "#033f7b", "&:hover": { backgroundColor: "#063868" }, ml: 2 }}
            >
              Mark Employees Unavailable
            </Button>
          </Toolbar>
        </AppBar>

        {/* Sidebar */}
        <Box component="nav" sx={{ width: { md: drawerWidth }, flexShrink: { md: 0 } }}>
          {!isMdUp && (
            <Drawer
              variant="temporary"
              open={mobileOpen}
              onClose={toggleMobile}
              ModalProps={{ keepMounted: true }}
              sx={{ "& .MuiDrawer-paper": { width: drawerWidth } }}
            >
              {Sidebar}
            </Drawer>
          )}

          {isMdUp && (
            <Drawer
              variant="permanent"
              open
              sx={{ "& .MuiDrawer-paper": { width: drawerWidth, boxSizing: "border-box" } }}
            >
              {Sidebar}
            </Drawer>
          )}
        </Box>

        {/* Main content (FULL WIDTH) */}
        <Box
          component="main"
          sx={{
            flexGrow: 1,
            width: { md: `calc(100% - ${drawerWidth}px)` },
            pt: 5,
            pb: 3,
          }}
        >
          <Container maxWidth={false} disableGutters sx={{ px: { xs: 2, md: 3 } }}>
            <Box
              sx={{
                border: "2px solid #0B1C2D",
                // borderRadius: 3,
                overflow: "hidden",
                width: "100%",
              }}
            >
              <Box sx={{ height: "calc(100vh - 170px)", backgroundColor: "white" }}>
                <Box sx={{ borderBottom: 1, borderColor: "divider", px: 2, pt: 1 }}>
                  <Tabs
                    value={tabValue}
                    onChange={(e, newValue) => setTabValue(newValue)}
                  >
                    <Tab label={`Available Employees (${availableList.length})`} />
                    <Tab label={`Unavailable Employees (${unavailableList.length})`} />
                  </Tabs>
                </Box>

                <DataGrid
                  rows={tabValue === 0 ? availableList : unavailableList}
                  columns={columns}
                  disableRowSelectionOnClick
                  checkboxSelection
                  pagination
                  pageSizeOptions={[10, 25, 50, 100]}
                  initialState={{ pagination: { paginationModel: { pageSize: 25, page: 0 } } }}
                  showToolbar
                  slotProps={{
                  toolbar: {
                      showQuickFilter: true,
                      quickFilterProps: { debounceMs: 300 },
                    },
                }}

                    sx={{
                      "& .MuiDataGrid-columnHeaders": {
                        backgroundColor: "rgba(11, 28, 45, 0.06)",
                        borderBottom: "2px solid #0B1C2D",
                      },
                      "& .MuiDataGrid-columnHeaderTitle": {
                        fontWeight: 900,
                        color: "#0B1C2D",
                      },
                      "& .MuiDataGrid-cell": {
                        alignItems: "center",
                        display: "flex",
                      },
                    }}
                  />
              </Box>

              <Dialog
                open={openUnavailable}
                onClose={() => setOpenUnavailable(false)}
                fullWidth
                maxWidth="lg"
                PaperProps={{
                  sx: { minHeight: "70vh" }
                }}
              >
                <DialogTitle>Mark Employees as Unavailable</DialogTitle>

                <DialogContent>
                  <Box sx={{ mt: 2 }}>
                    <Autocomplete
                      multiple
                      options={availableEmployees}
                      getOptionLabel={(option) => option.preferred_name || ""}
                      value={selectedEmployees}
                      onChange={handleEmployeeChange}
                      renderInput={(params) => (
                        <TextField {...params} label="Select Employees" />
                      )}
                    />

                    {/* ✅ 2 by 2 layout */}
                    <Box
                      sx={{
                        display: "grid",
                        gridTemplateColumns: { xs: "1fr", md: "1fr 1fr" },
                        gap: 2,
                        mt: 3,
                      }}
                    >
                      {selectedEmployees.map((emp) => (
                        <Box
                          key={emp.id}
                          sx={{
                            border: "1px solid #ddd",
                            p: 2,
                            borderRadius: 2,
                            backgroundColor: "#fafafa",
                          }}
                        >
                          {/* Employee Name */}
                          <Typography fontWeight="bold">
                            {emp.preferred_name}
                          </Typography>

                          <Stack spacing={2} mt={2}>
                            <TextField
                              label="Reason"
                              multiline
                              rows={2}
                              value={employeeDetails[emp.id]?.unavailable_reason || ""}
                              onChange={(e) =>
                                handleDetailChange(emp.id, "unavailable_reason", e.target.value)
                              }
                              fullWidth
                            />
                          </Stack>
                        </Box>
                      ))}
                    </Box>
                  </Box>
                </DialogContent>

                <DialogActions>
                  <Button onClick={() => setOpenUnavailable(false)}>
                    Cancel
                  </Button>

                  <Button
                    variant="contained"
                    onClick={saveUnavailableBulk}
                    sx={{
                      backgroundColor: "#0B1C2D",
                      "&:hover": { backgroundColor: "#0F2A44" }
                    }}
                  >
                    Save
                  </Button>
                </DialogActions>
              </Dialog>
              
            </Box>
          </Container>
        </Box>

        {/* Delete confirm */}
        <Dialog open={openDelete} onClose={() => setOpenDelete(false)} fullWidth maxWidth="xs">
          <DialogTitle sx={{ fontWeight: 900 }}>Remove Employee</DialogTitle>
          <DialogContent>
            <Typography>
              Are you sure you want to remove <b>{deleteTarget?.employee_code ?? ""}</b>?
            </Typography>
          </DialogContent>
          <DialogActions sx={{ px: 3, pb: 2 }}>
            <Button onClick={() => setOpenDelete(false)}>Cancel</Button>
            <Button
              variant="contained"
              onClick={confirmDelete}
              sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}
            >
              Remove
            </Button>
          </DialogActions>
        </Dialog>

        {/* Mark Available confirm */}
        <Dialog
          open={openMakeAvailableConfirm}
          onClose={() => setOpenMakeAvailableConfirm(false)}
          fullWidth
          maxWidth="xs"
        >
          <DialogTitle sx={{ fontWeight: 900 }}>
            Mark Employee as Available
          </DialogTitle>

          <DialogContent>
            <Typography>
              Are you sure you want to mark{" "}
              <b>{availableTarget?.preferred_name}</b> as available again?
            </Typography>
          </DialogContent>

          <DialogActions sx={{ px: 3, pb: 2 }}>
            <Button onClick={() => setOpenMakeAvailableConfirm(false)}>
              Cancel
            </Button>

            <Button
              variant="contained"
              sx={{
                backgroundColor: "#0B1C2D",
                "&:hover": { backgroundColor: "#0F2A44" },
              }}
              onClick={() => {
                router.post("/hrms/employees/mark-available", {
                  employee_id: availableTarget.id,
                });

                setOpenMakeAvailableConfirm(false);
                setAvailableTarget(null);
              }}
            >
              Yes, Mark Available
            </Button>
          </DialogActions>
        </Dialog>

      </Box>
    </AuthenticatedLayout>
  );
}
