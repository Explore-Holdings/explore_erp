import React, { useState, useEffect, useMemo } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router } from "@inertiajs/react";
import {
    AppBar, Box, Button, Container, Dialog, DialogActions,
    DialogContent, DialogTitle, Divider, Drawer, IconButton,
    List, ListItemButton, ListItemIcon, ListItemText, Menu,
    MenuItem, Stack, Tab, Tabs, TextField, Toolbar, Tooltip,
    Typography, useMediaQuery, Chip,
} from "@mui/material";
import { DataGrid } from "@mui/x-data-grid";
import AddOutlinedIcon from "@mui/icons-material/AddOutlined";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import InventoryOutlinedIcon from "@mui/icons-material/InventoryOutlined";
import AssignmentOutlinedIcon from "@mui/icons-material/AssignmentOutlined";
import DeleteOutlineOutlinedIcon from "@mui/icons-material/DeleteOutlineOutlined";
import CheckCircleOutlineIcon from "@mui/icons-material/CheckCircleOutline";
import ReportOutlinedIcon from "@mui/icons-material/ReportOutlined";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import PersonOutlineOutlinedIcon from "@mui/icons-material/PersonOutlineOutlined";
import LogoutOutlinedIcon from "@mui/icons-material/LogoutOutlined";

const drawerWidth = 260;

const navItems = [
    { label: "Home",               href: "/suite-services",          icon: <HomeOutlinedIcon /> },
    // { label: "Inventory",          href: "/stocks",                  icon: <InventoryOutlinedIcon /> },
    // { label: "Stock List",         href: "/stocks/items",            icon: <AssignmentOutlinedIcon /> },
    { label: "Asset Issuance",     href: "/stocks/asset-issuance",   icon: <AssignmentOutlinedIcon /> },
];

const STATUS_COLOR = {
    issued:   { label: "Issued",   color: "primary"  },
    returned: { label: "Returned", color: "success"  },
    lost:     { label: "Lost",     color: "error"    },
};

export default function AssetIssuanceIndex({
    auth = {},
    issuances = { data: [] },
    stats = {},
    items = [],
    flash = {},
}) {
    const isMdUp = useMediaQuery("(min-width:900px)");
    const [mobileOpen, setMobileOpen]       = useState(false);
    const [userMenuAnchor, setUserMenuAnchor] = useState(null);
    const userMenuOpen = Boolean(userMenuAnchor);

    // Tabs: 0 = Issuances, 1 = Catalog
    const [tabValue, setTabValue] = useState(0);

    // Dialogs
    const [openReturnDialog, setOpenReturnDialog] = useState(false);
    const [openLostDialog,   setOpenLostDialog]   = useState(false);
    const [openDeleteItem,   setOpenDeleteItem]   = useState(false);
    const [openAddItem,      setOpenAddItem]      = useState(false);
    const [targetRecord,     setTargetRecord]     = useState(null);
    const [newItemName,      setNewItemName]       = useState("");

    // Flash
    const [flashMsg, setFlashMsg] = useState(flash?.success || flash?.error || null);
    useEffect(() => {
        if (flash?.success || flash?.error) {
            setFlashMsg(flash.success || flash.error);
            const t = setTimeout(() => setFlashMsg(null), 3500);
            return () => clearTimeout(t);
        }
    }, [flash]);

    const toggleMobile   = () => setMobileOpen(v => !v);
    const openUserMenu   = (e) => setUserMenuAnchor(e.currentTarget);
    const closeUserMenu  = () => setUserMenuAnchor(null);

    // ── Issuance actions ──────────────────────────────────────────────────────
    const askReturn = (row) => { setTargetRecord(row); setOpenReturnDialog(true); };
    const askLost   = (row) => { setTargetRecord(row); setOpenLostDialog(true); };

    const confirmReturn = () => {
        router.post(route("asset-issuance.return", targetRecord.id), {}, { preserveScroll: true });
        setOpenReturnDialog(false);
    };
    const confirmLost = () => {
        router.post(route("asset-issuance.lost", targetRecord.id), {}, { preserveScroll: true });
        setOpenLostDialog(false);
    };

    // ── Item catalog actions ───────────────────────────────────────────────────
    const askDeleteItem = (item) => { setTargetRecord(item); setOpenDeleteItem(true); };
    const confirmDeleteItem = () => {
        router.delete(route("asset-issuance.items.destroy", targetRecord.id), { preserveScroll: true });
        setOpenDeleteItem(false);
    };
    const handleAddItem = (e) => {
        e.preventDefault();
        if (!newItemName.trim()) return;
        router.post(route("asset-issuance.items.store"), { name: newItemName.trim() }, {
            onSuccess: () => { setNewItemName(""); setOpenAddItem(false); },
            preserveScroll: true,
        });
    };

    // ── DataGrid columns: Issuances ───────────────────────────────────────────
    const issuanceColumns = [
        {
            field: "employee",
            headerName: "Employee",
            flex: 1.2,
            minWidth: 180,
            valueGetter: (_, row) => row.employee?.preferred_name || "—",
        },
        // {
        //     field: "emp_code",
        //     headerName: "Emp. Code",
        //     flex: 0.8,
        //     minWidth: 120,
        //     valueGetter: (_, row) => row.employee?.employee_code || "—",
        // },
        {
            field: "item",
            headerName: "Item",
            flex: 1,
            minWidth: 150,
            valueGetter: (_, row) => row.item?.name || "—",
        },
        { field: "quantity", headerName: "Qty", flex: 0.5, minWidth: 70 },
        {
            field: "issued_by",
            headerName: "Issued By",
            flex: 1,
            minWidth: 150,
            valueGetter: (_, row) => row.issued_by?.name || "—",
        },
        {
            field: "issued_department",
            headerName: "Department",
            flex: 1,
            minWidth: 150,
        },
        {
            field: "issued_at",
            headerName: "Date & Time",
            flex: 1,
            minWidth: 160,
            valueGetter: (_, row) =>
                row.issued_at
                    ? new Date(row.issued_at).toLocaleString("en-GB", {
                        day: "2-digit", month: "short", year: "numeric",
                        hour: "2-digit", minute: "2-digit",
                    })
                    : "—",
        },
        {
            field: "status",
            headerName: "Status",
            flex: 0.8,
            minWidth: 110,
            renderCell: (params) => {
                const s = STATUS_COLOR[params.value] || STATUS_COLOR.issued;
                return <Chip label={s.label} color={s.color} size="small" sx={{ fontWeight: 800, fontSize: 11 }} />;
            },
        },
        {
            field: "actions",
            headerName: "Actions",
            flex: 0.9,
            minWidth: 160,
            sortable: false,
            renderCell: (params) => {
                if (params.row.status !== "issued") {
                    return (
                        <Typography variant="caption" sx={{ color: "#888", fontStyle: "italic" }}>
                            {params.row.status === "returned"
                                ? params.row.returned_at
                                    ? `Returned ${new Date(params.row.returned_at).toLocaleDateString("en-GB")}`
                                    : "Returned"
                                : "Marked Lost"}
                        </Typography>
                    );
                }
                return (
                    <Stack direction="row" spacing={0.5} alignItems="center">
                        <Tooltip title="Mark Returned">
                            <IconButton size="small" onClick={() => askReturn(params.row)} sx={{ color: "#0c7a2b" }}>
                                <CheckCircleOutlineIcon fontSize="small" />
                            </IconButton>
                        </Tooltip>
                        <Tooltip title="Mark Lost">
                            <IconButton size="small" onClick={() => askLost(params.row)} sx={{ color: "#8a0606" }}>
                                <ReportOutlinedIcon fontSize="small" />
                            </IconButton>
                        </Tooltip>
                    </Stack>
                );
            },
        },
    ];

    // ── DataGrid columns: Catalog ─────────────────────────────────────────────
    const catalogColumns = [
        { field: "id",   headerName: "ID",   flex: 0.3, minWidth: 60 },
        { field: "name", headerName: "Item Name", flex: 2, minWidth: 200 },
        {
            field: "created_at",
            headerName: "Added On",
            flex: 1,
            minWidth: 150,
            valueGetter: (_, row) =>
                row.created_at
                    ? new Date(row.created_at).toLocaleDateString("en-GB", { day: "2-digit", month: "short", year: "numeric" })
                    : "—",
        },
        {
            field: "actions",
            headerName: "Actions",
            flex: 0.5,
            minWidth: 100,
            sortable: false,
            renderCell: (params) => (
                <Tooltip title="Remove">
                    <IconButton size="small" onClick={() => askDeleteItem(params.row)} sx={{ color: "#8a0606" }}>
                        <DeleteOutlineOutlinedIcon fontSize="small" />
                    </IconButton>
                </Tooltip>
            ),
        },
    ];

    // ── Sidebar ───────────────────────────────────────────────────────────────
    const Sidebar = (
        <Box sx={{ height: "100%", display: "flex", flexDirection: "column" }}>
            <Box sx={{ px: 2, py: 2 }}>
                <Typography fontWeight={900} sx={{ color: "#0B1C2D" }}>Inventory</Typography>
                <Typography variant="body2" color="text.secondary">Modules</Typography>
            </Box>
            <Divider />
            <List sx={{ px: 1 }}>
                {navItems.map((item) => (
                    <ListItemButton key={item.href} component={Link} href={item.href}
                        sx={{ borderRadius: 2, mb: 0.5, border: "1px solid transparent", "&:hover": { borderColor: "#0B1C2D" } }}>
                        <ListItemIcon sx={{ minWidth: 40, color: "#0B1C2D" }}>{item.icon}</ListItemIcon>
                        <ListItemText primary={item.label} />
                    </ListItemButton>
                ))}
            </List>
            <Box sx={{ flex: 1 }} />
            <Box sx={{ p: 2, borderTop: "1px solid", borderColor: "divider" }}>
                <Button onClick={openUserMenu} fullWidth
                    sx={{ justifyContent: "space-between", textTransform: "none", color: "#0B1C2D", px: 1, py: 1, borderRadius: 2, "&:hover": { backgroundColor: "rgba(11,28,45,0.06)" } }}
                    endIcon={<KeyboardArrowDownIcon />}>
                    <Box sx={{ textAlign: "left" }}>
                        <Typography fontWeight={700} sx={{ lineHeight: 1.1 }}>{auth?.user?.name ?? "User"}</Typography>
                        <Typography variant="caption" color="text.secondary">{auth?.user?.email ?? ""}</Typography>
                    </Box>
                </Button>
                <Menu anchorEl={userMenuAnchor} open={userMenuOpen} onClose={closeUserMenu}
                    anchorOrigin={{ vertical: "top", horizontal: "left" }}
                    transformOrigin={{ vertical: "bottom", horizontal: "left" }}
                    PaperProps={{ sx: { borderRadius: 2, minWidth: 200 } }}>
                    <MenuItem component={Link} href={route("profile.edit")} onClick={closeUserMenu}>
                        <ListItemIcon sx={{ minWidth: 36 }}><PersonOutlineOutlinedIcon fontSize="small" /></ListItemIcon>
                        Profile
                    </MenuItem>
                    <MenuItem onClick={() => { closeUserMenu(); router.post(route("logout")); }}>
                        <ListItemIcon sx={{ minWidth: 36 }}><LogoutOutlinedIcon fontSize="small" /></ListItemIcon>
                        Log Out
                    </MenuItem>
                </Menu>
            </Box>
        </Box>
    );

    return (
        <AuthenticatedLayout user={auth?.user}>
            <Head title="Asset Issuance" />

            <Box sx={{ display: "flex" }}>
                {/* AppBar */}
                <AppBar position="fixed" elevation={0} sx={{ zIndex: (t) => t.zIndex.drawer + 1, borderBottom: "1px solid", borderColor: "divider", backgroundColor: "white", color: "#0B1C2D" }}>
                    <Toolbar>
                        {!isMdUp && (
                            <IconButton edge="start" onClick={toggleMobile} sx={{ mr: 1, color: "#0B1C2D" }} />
                        )}
                        <Typography fontWeight={900}>Asset Issuance</Typography>
                        <Box sx={{ flex: 1 }} />
                        {tabValue === 0 && (
                            <Button variant="contained" startIcon={<AddOutlinedIcon />}
                                component={Link} href={route("asset-issuance.create")}
                                sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                                Issue Item
                            </Button>
                        )}
                        {tabValue === 1 && (
                            <Button variant="contained" startIcon={<AddOutlinedIcon />}
                                onClick={() => setOpenAddItem(true)}
                                sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                                Add Item
                            </Button>
                        )}
                    </Toolbar>
                </AppBar>

                {/* Sidebar */}
                <Box component="nav" sx={{ width: { md: drawerWidth }, flexShrink: { md: 0 } }}>
                    {!isMdUp && (
                        <Drawer variant="temporary" open={mobileOpen} onClose={toggleMobile}
                            ModalProps={{ keepMounted: true }} sx={{ "& .MuiDrawer-paper": { width: drawerWidth } }}>
                            {Sidebar}
                        </Drawer>
                    )}
                    {isMdUp && (
                        <Drawer variant="permanent" open sx={{ "& .MuiDrawer-paper": { width: drawerWidth, boxSizing: "border-box" } }}>
                            {Sidebar}
                        </Drawer>
                    )}
                </Box>

                {/* Main */}
                <Box component="main" sx={{ flexGrow: 1, width: { md: `calc(100% - ${drawerWidth}px)` }, pt: 5, pb: 3 }}>
                    <Container maxWidth={false} disableGutters sx={{ px: { xs: 2, md: 3 } }}>

                        {/* Flash */}
                        {flashMsg && (
                            <Box sx={{ mb: 2, p: 1.5, borderRadius: 2, backgroundColor: flash?.error ? "#fff1f1" : "#f0fdf4", border: `1px solid ${flash?.error ? "#fca5a5" : "#86efac"}` }}>
                                <Typography fontSize={13} fontWeight={700} color={flash?.error ? "error" : "success.main"}>
                                    {flashMsg}
                                </Typography>
                            </Box>
                        )}

                        {/* Stats */}
                        <Box sx={{ display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: 2, mb: 3 }}>
                            {[
                                { label: "Total Records",     value: stats?.total    ?? 0, color: "#0B1C2D" },
                                { label: "Currently Issued",  value: stats?.issued   ?? 0, color: "#1565c0" },
                                { label: "Returned",          value: stats?.returned ?? 0, color: "#2e7d32" },
                                { label: "Lost",              value: stats?.lost     ?? 0, color: "#c62828" },
                            ].map((s) => (
                                <Box key={s.label} sx={{ border: "2px solid #0B1C2D", borderRadius: 2, p: 2, backgroundColor: "white" }}>
                                    <Typography variant="caption" fontWeight={700} color="text.secondary" sx={{ textTransform: "uppercase", letterSpacing: 1 }}>
                                        {s.label}
                                    </Typography>
                                    <Typography variant="h4" fontWeight={900} sx={{ color: s.color }}>{s.value}</Typography>
                                </Box>
                            ))}
                        </Box>

                        {/* DataGrid box */}
                        <Box sx={{ border: "2px solid #0B1C2D", overflow: "hidden", width: "100%" }}>
                            <Box sx={{ height: "calc(100vh - 280px)", backgroundColor: "white" }}>
                                <Box sx={{ borderBottom: 1, borderColor: "divider", px: 2, pt: 1 }}>
                                    <Tabs value={tabValue} onChange={(_, v) => setTabValue(v)}>
                                        <Tab label={`Issuance Records (${issuances?.total ?? issuances?.data?.length ?? 0})`} />
                                        <Tab label={`Item Catalog (${items.length})`} />
                                    </Tabs>
                                </Box>

                                {tabValue === 0 && (
                                    <DataGrid
                                        rows={issuances?.data || []}
                                        columns={issuanceColumns}
                                        disableRowSelectionOnClick
                                        pagination
                                        pageSizeOptions={[15, 25, 50]}
                                        initialState={{ pagination: { paginationModel: { pageSize: 15 } } }}
                                        showToolbar
                                        slotProps={{ toolbar: { showQuickFilter: true, quickFilterProps: { debounceMs: 300 } } }}
                                        sx={{
                                            "& .MuiDataGrid-columnHeaders": { backgroundColor: "rgba(11,28,45,0.06)", borderBottom: "2px solid #0B1C2D" },
                                            "& .MuiDataGrid-columnHeaderTitle": { fontWeight: 900, color: "#0B1C2D" },
                                            "& .MuiDataGrid-cell": { alignItems: "center", display: "flex" },
                                        }}
                                    />
                                )}

                                {tabValue === 1 && (
                                    <DataGrid
                                        rows={items}
                                        columns={catalogColumns}
                                        disableRowSelectionOnClick
                                        pagination
                                        pageSizeOptions={[15, 25, 50]}
                                        initialState={{ pagination: { paginationModel: { pageSize: 15 } } }}
                                        showToolbar
                                        slotProps={{ toolbar: { showQuickFilter: true, quickFilterProps: { debounceMs: 300 } } }}
                                        sx={{
                                            "& .MuiDataGrid-columnHeaders": { backgroundColor: "rgba(11,28,45,0.06)", borderBottom: "2px solid #0B1C2D" },
                                            "& .MuiDataGrid-columnHeaderTitle": { fontWeight: 900, color: "#0B1C2D" },
                                            "& .MuiDataGrid-cell": { alignItems: "center", display: "flex" },
                                        }}
                                    />
                                )}
                            </Box>
                        </Box>
                    </Container>
                </Box>
            </Box>

            {/* ── Dialogs ── */}

            {/* Mark Returned */}
            <Dialog open={openReturnDialog} onClose={() => setOpenReturnDialog(false)} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Mark as Returned</DialogTitle>
                <DialogContent>
                    <Typography>
                        Mark the issuance of <b>{targetRecord?.item?.name}</b> to <b>{targetRecord?.employee?.preferred_name}</b> as returned?
                    </Typography>
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={() => setOpenReturnDialog(false)}>Cancel</Button>
                    <Button variant="contained" onClick={confirmReturn}
                        sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                        Yes, Mark Returned
                    </Button>
                </DialogActions>
            </Dialog>

            {/* Mark Lost */}
            <Dialog open={openLostDialog} onClose={() => setOpenLostDialog(false)} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Mark as Lost</DialogTitle>
                <DialogContent>
                    <Typography>
                        Mark the <b>{targetRecord?.item?.name}</b> issued to <b>{targetRecord?.employee?.preferred_name}</b> as lost?
                    </Typography>
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={() => setOpenLostDialog(false)}>Cancel</Button>
                    <Button variant="contained" color="error" onClick={confirmLost}>
                        Yes, Mark Lost
                    </Button>
                </DialogActions>
            </Dialog>

            {/* Delete Item */}
            <Dialog open={openDeleteItem} onClose={() => setOpenDeleteItem(false)} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Remove Item</DialogTitle>
                <DialogContent>
                    <Typography>Remove <b>{targetRecord?.name}</b> from the catalog? This only works if no issuance records exist for it.</Typography>
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={() => setOpenDeleteItem(false)}>Cancel</Button>
                    <Button variant="contained" color="error" onClick={confirmDeleteItem}>Remove</Button>
                </DialogActions>
            </Dialog>

            {/* Add Item */}
            <Dialog open={openAddItem} onClose={() => setOpenAddItem(false)} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Add Item to Catalog</DialogTitle>
                <DialogContent>
                    <Box component="form" onSubmit={handleAddItem} sx={{ mt: 1 }}>
                        <TextField
                            autoFocus fullWidth label="Item Name"
                            placeholder="e.g. Laptop, Office Chair…"
                            value={newItemName} onChange={e => setNewItemName(e.target.value)}
                        />
                    </Box>
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={() => { setOpenAddItem(false); setNewItemName(""); }}>Cancel</Button>
                    <Button variant="contained" onClick={handleAddItem} disabled={!newItemName.trim()}
                        sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                        Add Item
                    </Button>
                </DialogActions>
            </Dialog>

        </AuthenticatedLayout>
    );
}
