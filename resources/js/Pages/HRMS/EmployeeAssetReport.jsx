import React, { useState, useMemo } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router } from "@inertiajs/react";
import {
    AppBar, Autocomplete, Avatar, Box, Button, Card, CardContent,
    Chip, Container, Divider, Drawer, Grid, IconButton, List,
    ListItemButton, ListItemIcon, ListItemText, Menu, MenuItem as MuiMenuItem,
    Paper, Stack, Tab, Tabs, TextField, Toolbar, Tooltip,
    Typography, useMediaQuery,
} from "@mui/material";
import { DataGrid } from "@mui/x-data-grid";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import InventoryOutlinedIcon from "@mui/icons-material/InventoryOutlined";
import AssignmentOutlinedIcon from "@mui/icons-material/AssignmentOutlined";
import PersonOutlineOutlinedIcon from "@mui/icons-material/PersonOutlineOutlined";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import LogoutOutlinedIcon from "@mui/icons-material/LogoutOutlined";
import ArrowBackOutlinedIcon from "@mui/icons-material/ArrowBackOutlined";
import SearchIcon from "@mui/icons-material/Search";

const drawerWidth = 260;

const navItems = [
    { label: "Home",                   href: "/suites",                icon: <HomeOutlinedIcon /> },
    { label: "HR Suite",               href: "/suite-services?type=hr",icon: <PersonOutlineOutlinedIcon /> },
    { label: "Asset Issuance",         href: "/stocks/asset-issuance", icon: <AssignmentOutlinedIcon /> },
    { label: "Employee Asset Report",  href: "/hrms/employee-assets",  icon: <InventoryOutlinedIcon />, active: true },
];

const STATUS_CHIP = {
    issued:   { label: "Currently Issued", color: "primary",   bg: "#eff6ff", border: "#93c5fd" },
    returned: { label: "Returned",         color: "success",   bg: "#f0fdf4", border: "#86efac" },
    lost:     { label: "Lost",             color: "error",     bg: "#fef2f2", border: "#fca5a5" },
};

export default function EmployeeAssetReport({
    auth = {},
    employees = [],
    selectedEmployee = null,
    issuances = [],
    stats = { total: 0, issued: 0, returned: 0, lost: 0 },
    initialEmployeeId = null,
}) {
    const isMdUp = useMediaQuery("(min-width:900px)");
    const [mobileOpen, setMobileOpen]         = useState(false);
    const [userMenuAnchor, setUserMenuAnchor] = useState(null);
    const userMenuOpen = Boolean(userMenuAnchor);

    const [tabFilter, setTabFilter] = useState("all");

    // Match currently selected employee in the Autocomplete
    const currentEmployeeObj = useMemo(() => {
        if (!selectedEmployee) return null;
        return employees.find(e => e.employee_id === selectedEmployee.employee_id) || {
            employee_id: selectedEmployee.employee_id,
            preferred_name: selectedEmployee.preferred_name,
            department: selectedEmployee.department,
        };
    }, [selectedEmployee, employees]);

    const handleSelectEmployee = (emp) => {
        if (emp && emp.employee_id) {
            router.get(
                route("hrms.employee-assets"),
                { employee_id: emp.employee_id },
                { preserveState: true, replace: true }
            );
        } else {
            router.get(
                route("hrms.employee-assets"),
                {},
                { preserveState: true, replace: true }
            );
        }
    };

    const toggleMobile  = () => setMobileOpen(v => !v);
    const openUserMenu  = (e) => setUserMenuAnchor(e.currentTarget);
    const closeUserMenu = () => setUserMenuAnchor(null);

    // Filter issuances based on selected tab
    const filteredIssuances = useMemo(() => {
        if (tabFilter === "all") return issuances;
        return issuances.filter(i => i.status === tabFilter);
    }, [issuances, tabFilter]);

    // Columns for issuance records
    const issuanceColumns = [
        {
            field: "item_name",
            headerName: "Item Name",
            flex: 1.3,
            minWidth: 170,
            renderCell: (params) => (
                <Box sx={{ display: "flex", alignItems: "center", gap: 1 }}>
                    <Box sx={{
                        width: 8, height: 8, borderRadius: "50%",
                        backgroundColor: params.row.status === "issued" ? "#1976d2" : (params.row.status === "returned" ? "#2e7d32" : "#d32f2f")
                    }} />
                    <Typography fontWeight={700} fontSize={14} sx={{ color: "#0B1C2D" }}>
                        {params.value}
                    </Typography>
                </Box>
            ),
        },
        {
            field: "quantity",
            headerName: "Qty",
            flex: 0.5,
            minWidth: 70,
            renderCell: (params) => (
                <Chip label={params.value} size="small"
                    sx={{ fontWeight: 800, backgroundColor: "#0B1C2D", color: "white", minWidth: 32 }} />
            ),
        },
        {
            field: "status",
            headerName: "Status",
            flex: 0.9,
            minWidth: 130,
            renderCell: (params) => {
                const cfg = STATUS_CHIP[params.value] || { label: params.value, color: "default" };
                return (
                    <Chip
                        label={cfg.label}
                        color={cfg.color}
                        size="small"
                        variant="outlined"
                        sx={{ fontWeight: 700 }}
                    />
                );
            },
        },
        {
            field: "issued_by",
            headerName: "Issued By",
            flex: 1.2,
            minWidth: 160,
            renderCell: (params) => (
                <Box>
                    <Typography fontSize={13} fontWeight={700} sx={{ color: "#0B1C2D", lineHeight: 1.2 }}>
                        {params.value}
                    </Typography>
                    <Typography fontSize={11} color="text.secondary">
                        {params.row.issued_department || "—"}
                    </Typography>
                </Box>
            ),
        },
        {
            field: "issued_at",
            headerName: "Issued At",
            flex: 1,
            minWidth: 140,
            valueGetter: (_, row) => row.issued_at || "—",
        },
        {
            field: "returned_at",
            headerName: "Returned At",
            flex: 1,
            minWidth: 140,
            renderCell: (params) => (
                <Typography fontSize={13} color={params.value ? "text.primary" : "text.secondary"}>
                    {params.value || "—"}
                </Typography>
            ),
        },
        {
            field: "purpose",
            headerName: "Notes / Purpose",
            flex: 1.4,
            minWidth: 180,
            renderCell: (params) => (
                <Typography fontSize={12} color="text.secondary" noWrap title={params.value || ""}>
                    {params.value || "—"}
                </Typography>
            ),
        },
    ];

    // Columns for the employee directory (when no employee selected)
    const directoryColumns = [
        {
            field: "preferred_name",
            headerName: "Employee",
            flex: 1.5,
            minWidth: 200,
            renderCell: (params) => (
                <Box sx={{ display: "flex", alignItems: "center", gap: 1.5 }}>
                    <Avatar sx={{ width: 34, height: 34, bgcolor: "#0B1C2D", fontSize: 13, fontWeight: 700 }}>
                        {(params.row.preferred_name || "E").charAt(0).toUpperCase()}
                    </Avatar>
                    <Typography fontWeight={700} fontSize={14} sx={{ color: "#0B1C2D" }}>
                        {params.row.preferred_name}
                    </Typography>
                </Box>
            ),
        },
        {
            field: "department",
            headerName: "Department",
            flex: 1.3,
            minWidth: 160,
        },
        {
            field: "active_assets_count",
            headerName: "Holding",
            flex: 0.7,
            minWidth: 90,
            renderCell: (params) => (
                <Chip
                    label={params.value}
                    size="small"
                    color={params.value > 0 ? "primary" : "default"}
                    sx={{ fontWeight: 700 }}
                />
            ),
        },
        {
            field: "total_assets_count",
            headerName: "Total Issued",
            flex: 0.8,
            minWidth: 100,
            renderCell: (params) => (
                <Typography fontWeight={700} fontSize={13} sx={{ color: "#0B1C2D" }}>
                    {params.value} items
                </Typography>
            ),
        },
        {
            field: "actions",
            headerName: "Report",
            flex: 0.8,
            minWidth: 120,
            sortable: false,
            renderCell: (params) => (
                <Button
                    size="small"
                    variant="outlined"
                    onClick={() => handleSelectEmployee(params.row)}
                    sx={{ borderColor: "#0B1C2D", color: "#0B1C2D", textTransform: "none", fontWeight: 700, "&:hover": { backgroundColor: "rgba(11,28,45,0.06)" } }}
                >
                    View Report →
                </Button>
            ),
        },
    ];

    // Sidebar navigation component
    const Sidebar = (
        <Box sx={{ height: "100%", display: "flex", flexDirection: "column" }}>
            <Box sx={{ px: 2, py: 2 }}>
                <Typography fontWeight={900} sx={{ color: "#0B1C2D" }}>HR & Inventory</Typography>
                <Typography variant="body2" color="text.secondary">Asset Reports</Typography>
            </Box>
            <Divider />
            <List sx={{ px: 1 }}>
                {navItems.map((item) => (
                    <ListItemButton
                        key={item.href}
                        component={Link}
                        href={item.href}
                        selected={item.active}
                        sx={{
                            borderRadius: 2,
                            mb: 0.5,
                            border: item.active ? "2px solid #0B1C2D" : "1px solid transparent",
                            backgroundColor: item.active ? "rgba(11,28,45,0.08)" : "transparent",
                            "&:hover": { borderColor: "#0B1C2D" },
                        }}
                    >
                        <ListItemIcon sx={{ minWidth: 40, color: "#0B1C2D" }}>{item.icon}</ListItemIcon>
                        <ListItemText
                            primary={item.label}
                            primaryTypographyProps={{ fontWeight: item.active ? 800 : 500 }}
                        />
                    </ListItemButton>
                ))}
            </List>
            <Box sx={{ flex: 1 }} />
            <Box sx={{ p: 2, borderTop: "1px solid", borderColor: "divider" }}>
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
                        "&:hover": { backgroundColor: "rgba(11,28,45,0.06)" },
                    }}
                    endIcon={<KeyboardArrowDownIcon />}
                >
                    <Box sx={{ textAlign: "left" }}>
                        <Typography fontWeight={700} sx={{ lineHeight: 1.1 }}>{auth?.user?.name ?? "User"}</Typography>
                        <Typography variant="caption" color="text.secondary">{auth?.user?.email ?? ""}</Typography>
                    </Box>
                </Button>
                <Menu
                    anchorEl={userMenuAnchor}
                    open={userMenuOpen}
                    onClose={closeUserMenu}
                    anchorOrigin={{ vertical: "top", horizontal: "left" }}
                    transformOrigin={{ vertical: "bottom", horizontal: "left" }}
                    PaperProps={{ sx: { borderRadius: 2, minWidth: 200 } }}
                >
                    <MuiMenuItem component={Link} href={route("profile.edit")} onClick={closeUserMenu}>
                        <ListItemIcon sx={{ minWidth: 36 }}><PersonOutlineOutlinedIcon fontSize="small" /></ListItemIcon>
                        Profile
                    </MuiMenuItem>
                    <MuiMenuItem onClick={() => { closeUserMenu(); router.post(route("logout")); }}>
                        <ListItemIcon sx={{ minWidth: 36 }}><LogoutOutlinedIcon fontSize="small" /></ListItemIcon>
                        Log Out
                    </MuiMenuItem>
                </Menu>
            </Box>
        </Box>
    );

    return (
        <AuthenticatedLayout user={auth?.user}>
            <Head title="Employee Asset Report" />

            <Box sx={{ display: "flex" }}>
                {/* Fixed Top Bar */}
                <AppBar
                    position="fixed"
                    elevation={0}
                    sx={{
                        zIndex: (t) => t.zIndex.drawer + 1,
                        borderBottom: "1px solid",
                        borderColor: "divider",
                        backgroundColor: "white",
                        color: "#0B1C2D",
                    }}
                >
                    <Toolbar>
                        {!isMdUp && (
                            <IconButton edge="start" onClick={toggleMobile} sx={{ mr: 1, color: "#0B1C2D" }}>
                                <AssignmentOutlinedIcon />
                            </IconButton>
                        )}
                        <Typography fontWeight={900} fontSize={18} sx={{ color: "#0B1C2D" }}>
                            Employee Asset Report
                        </Typography>
                        <Box sx={{ flex: 1 }} />
                        <Button
                            variant="outlined"
                            component={Link}
                            href="/suite-services?type=hr"
                            startIcon={<ArrowBackOutlinedIcon />}
                            sx={{
                                borderColor: "#0B1C2D",
                                color: "#0B1C2D",
                                textTransform: "none",
                                fontWeight: 700,
                                "&:hover": { borderColor: "#0F2A44", backgroundColor: "rgba(11,28,45,0.04)" },
                            }}
                        >
                            Back to HR Suite
                        </Button>
                    </Toolbar>
                </AppBar>

                {/* Left Drawer Navigation */}
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

                {/* Main Content Area */}
                <Box
                    component="main"
                    sx={{
                        flexGrow: 1,
                        width: { md: `calc(100% - ${drawerWidth}px)` },
                        pt: 5,
                        pb: 4,
                        backgroundColor: "#f8fafc",
                        minHeight: "100vh",
                    }}
                >
                    <Container maxWidth={false} disableGutters sx={{ px: { xs: 2, md: 3 } }}>

                        {/* Top Employee Search Card */}
                        <Box
                            sx={{
                                border: "2px solid #0B1C2D",
                                backgroundColor: "white",
                                p: 2.5,
                                mb: 3,
                                display: "flex",
                                flexDirection: { xs: "column", md: "row" },
                                alignItems: { xs: "stretch", md: "center" },
                                gap: 2,
                                justifyContent: "space-between",
                            }}
                        >
                            <Box sx={{ flex: 1, maxWidth: { md: 600 } }}>
                                <Typography fontWeight={800} fontSize={14} sx={{ color: "#0B1C2D", mb: 0.5 }}>
                                    Search Employee
                                </Typography>
                                <Autocomplete
                                    options={employees}
                                    value={currentEmployeeObj}
                                    onChange={(_, val) => handleSelectEmployee(val)}
                                    getOptionLabel={(opt) =>
                                        opt.department ? `${opt.preferred_name} – ${opt.department}` : (opt.preferred_name || "")
                                    }
                                    isOptionEqualToValue={(option, value) => option.employee_id === value.employee_id}
                                    renderInput={(params) => (
                                        <TextField
                                            {...params}
                                            size="small"
                                            placeholder="Type employee name or department…"
                                            InputProps={{
                                                ...params.InputProps,
                                                startAdornment: (
                                                    <>
                                                        <SearchIcon fontSize="small" sx={{ color: "text.secondary", mr: 1 }} />
                                                        {params.InputProps.startAdornment}
                                                    </>
                                                ),
                                            }}
                                        />
                                    )}
                                />
                            </Box>

                            {selectedEmployee && (
                                <Box sx={{ display: "flex", gap: 1, alignItems: "center" }}>
                                    <Button
                                        variant="outlined"
                                        size="small"
                                        onClick={() => handleSelectEmployee(null)}
                                        sx={{ borderColor: "#0B1C2D", color: "#0B1C2D", textTransform: "none", fontWeight: 700 }}
                                    >
                                        Show All Employees Directory
                                    </Button>
                                    <Button
                                        variant="contained"
                                        size="small"
                                        component={Link}
                                        href={route("asset-issuance.create")}
                                        sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" }, textTransform: "none", fontWeight: 700 }}
                                    >
                                        + Issue Item
                                    </Button>
                                </Box>
                            )}
                        </Box>

                        {/* If an employee is selected: Show their profile + stats + asset log */}
                        {selectedEmployee ? (
                            <>
                                {/* Employee Header Card */}
                                <Box
                                    sx={{
                                        border: "2px solid #0B1C2D",
                                        backgroundColor: "white",
                                        p: 3,
                                        mb: 3,
                                    }}
                                >
                                    <Box sx={{ display: "flex", alignItems: "center", gap: 2.5, flexWrap: "wrap" }}>
                                        <Avatar
                                            sx={{
                                                width: 60,
                                                height: 60,
                                                bgcolor: "#0B1C2D",
                                                fontSize: 24,
                                                fontWeight: 900,
                                                border: "3px solid #000035",
                                            }}
                                        >
                                            {(selectedEmployee.preferred_name || "E").charAt(0).toUpperCase()}
                                        </Avatar>

                                        <Box sx={{ flex: 1, minWidth: 200 }}>
                                            <Box sx={{ display: "flex", alignItems: "center", gap: 1.5, flexWrap: "wrap" }}>
                                                <Typography variant="h5" fontWeight={900} sx={{ color: "#0B1C2D" }}>
                                                    {selectedEmployee.preferred_name}
                                                </Typography>
                                                <Chip
                                                    label={selectedEmployee.status || "Active"}
                                                    size="small"
                                                    color="success"
                                                    variant="outlined"
                                                    sx={{ fontWeight: 700 }}
                                                />
                                            </Box>
                                        </Box>

                                        <Box sx={{ display: "flex", gap: 3, flexWrap: "wrap" }}>
                                            <Box>
                                                <Typography variant="caption" color="text.secondary" fontWeight={700} sx={{ display: "block", textTransform: "uppercase" }}>
                                                    Department
                                                </Typography>
                                                <Typography fontWeight={700} fontSize={14} sx={{ color: "#0B1C2D" }}>
                                                    {selectedEmployee.department}
                                                </Typography>
                                            </Box>
                                            <Box>
                                                <Typography variant="caption" color="text.secondary" fontWeight={700} sx={{ display: "block", textTransform: "uppercase" }}>
                                                    Primary Contact
                                                </Typography>
                                                <Typography fontWeight={700} fontSize={14} sx={{ color: "#0B1C2D" }}>
                                                    {selectedEmployee.contact}
                                                </Typography>
                                            </Box>
                                        </Box>
                                    </Box>
                                </Box>

                                {/* 4 Metric Cards for this Employee */}
                                <Box sx={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(220px, 1fr))", gap: 2, mb: 3 }}>
                                    {[
                                        { label: "Total Assigned",      value: stats.total,    color: "#0B1C2D", desc: "All goods ever issued" },
                                        { label: "Currently Holding",    value: stats.issued,   color: "#1565c0", desc: "Active items with employee" },
                                        { label: "Returned Goods",      value: stats.returned, color: "#2e7d32", desc: "Successfully returned back" },
                                        { label: "Lost Goods",          value: stats.lost,     color: "#c62828", desc: "Reported lost or missing" },
                                    ].map((s) => (
                                        <Box
                                            key={s.label}
                                            sx={{
                                                border: "2px solid #0B1C2D",
                                                borderRadius: 1,
                                                p: 2,
                                                backgroundColor: "white",
                                            }}
                                        >
                                            <Typography variant="caption" fontWeight={800} color="text.secondary" sx={{ textTransform: "uppercase", letterSpacing: 0.8 }}>
                                                {s.label}
                                            </Typography>
                                            <Typography variant="h4" fontWeight={900} sx={{ color: s.color, my: 0.5 }}>
                                                {s.value}
                                            </Typography>
                                            <Typography variant="caption" color="text.secondary">
                                                {s.desc}
                                            </Typography>
                                        </Box>
                                    ))}
                                </Box>

                                {/* Detailed Asset Issuance Records Table */}
                                <Box sx={{ border: "2px solid #0B1C2D", backgroundColor: "white", overflow: "hidden" }}>
                                    {/* Tabs Filter Bar */}
                                    <Box
                                        sx={{
                                            borderBottom: "1px solid",
                                            borderColor: "divider",
                                            px: 2,
                                            display: "flex",
                                            alignItems: "center",
                                            justifyContent: "space-between",
                                            flexWrap: "wrap",
                                            backgroundColor: "rgba(11,28,45,0.02)",
                                        }}
                                    >
                                        <Tabs
                                            value={tabFilter}
                                            onChange={(_, val) => setTabFilter(val)}
                                            sx={{ "& .MuiTab-root": { textTransform: "none", fontWeight: 700 } }}
                                        >
                                            <Tab label={`All Items (${issuances.length})`} value="all" />
                                            <Tab label={`Currently Holding (${stats.issued})`} value="issued" />
                                            <Tab label={`Returned (${stats.returned})`} value="returned" />
                                            <Tab label={`Lost (${stats.lost})`} value="lost" />
                                        </Tabs>

                                        <Typography variant="body2" color="text.secondary" fontWeight={600} sx={{ py: 1 }}>
                                            Showing <b>{filteredIssuances.length}</b> record(s)
                                        </Typography>
                                    </Box>

                                    <Box sx={{ height: 420, width: "100%" }}>
                                        <DataGrid
                                            rows={filteredIssuances}
                                            columns={issuanceColumns}
                                            disableRowSelectionOnClick
                                            pagination
                                            pageSizeOptions={[10, 25, 50]}
                                            initialState={{ pagination: { paginationModel: { pageSize: 10 } } }}
                                            sx={{
                                                border: 0,
                                                "& .MuiDataGrid-columnHeaders": {
                                                    backgroundColor: "rgba(11,28,45,0.06)",
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
                                </Box>
                            </>
                        ) : (
                            /* When NO employee is selected yet: Show Directory table */
                            <Box sx={{ border: "2px solid #0B1C2D", backgroundColor: "white", overflow: "hidden" }}>
                                <Box sx={{ p: 2.5, borderBottom: "2px solid #0B1C2D", backgroundColor: "rgba(11,28,45,0.04)" }}>
                                    <Typography fontWeight={900} fontSize={16} sx={{ color: "#0B1C2D" }}>
                                        Employee Asset Directory
                                    </Typography>
                                    <Typography variant="body2" color="text.secondary">
                                        Select an employee from the dropdown above or click <b>View Report →</b> on any employee below to view the items taken, returned, and lost.
                                    </Typography>
                                </Box>

                                <Box sx={{ height: "calc(100vh - 280px)", width: "100%" }}>
                                    <DataGrid
                                        rows={employees}
                                        getRowId={(r) => r.employee_id}
                                        columns={directoryColumns}
                                        disableRowSelectionOnClick
                                        pagination
                                        pageSizeOptions={[15, 25, 50, 100]}
                                        initialState={{ pagination: { paginationModel: { pageSize: 15 } } }}
                                        showToolbar
                                        slotProps={{
                                            toolbar: {
                                                showQuickFilter: true,
                                                quickFilterProps: { debounceMs: 300 },
                                            },
                                        }}
                                        sx={{
                                            border: 0,
                                            "& .MuiDataGrid-columnHeaders": {
                                                backgroundColor: "rgba(11,28,45,0.06)",
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
                            </Box>
                        )}
                    </Container>
                </Box>
            </Box>
        </AuthenticatedLayout>
    );
}
