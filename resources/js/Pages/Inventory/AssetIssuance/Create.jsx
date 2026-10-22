import React, { useState, useEffect } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router, useForm } from "@inertiajs/react";
import {
    AppBar, Autocomplete, Box, Button, CircularProgress, Container,
    Dialog, DialogActions, DialogContent, DialogTitle,
    Divider, Drawer, IconButton, List, ListItemButton, ListItemIcon,
    ListItemText, Menu, MenuItem as MuiMenuItem, Stack, TextField,
    Toolbar, Typography, useMediaQuery,
} from "@mui/material";
import AddOutlinedIcon from "@mui/icons-material/AddOutlined";
import AssignmentOutlinedIcon from "@mui/icons-material/AssignmentOutlined";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import InventoryOutlinedIcon from "@mui/icons-material/InventoryOutlined";
import KeyboardArrowDownIcon from "@mui/icons-material/KeyboardArrowDown";
import PersonOutlineOutlinedIcon from "@mui/icons-material/PersonOutlineOutlined";
import LogoutOutlinedIcon from "@mui/icons-material/LogoutOutlined";

const drawerWidth = 260;

const navItems = [
    { label: "Home",           href: "/suite-services",         icon: <HomeOutlinedIcon /> },
    { label: "Asset Issuance", href: "/stocks/asset-issuance",  icon: <AssignmentOutlinedIcon /> },
];

export default function AssetIssuanceCreate({
    auth = {},
    items = [],
    employees = [],
    issuerName = "",
    issuerDept = "",
}) {
    const isMdUp = useMediaQuery("(min-width:900px)");
    const [mobileOpen, setMobileOpen]         = useState(false);
    const [userMenuAnchor, setUserMenuAnchor] = useState(null);
    const userMenuOpen = Boolean(userMenuAnchor);

    const [selectedEmployee, setSelectedEmployee] = useState(null);

    // Item catalog — local copy so newly added items appear immediately
    const [itemsList,     setItemsList]     = useState(items);
    const [openAddItem,   setOpenAddItem]   = useState(false);
    const [newItemName,   setNewItemName]   = useState("");
    const [addingItem,    setAddingItem]    = useState(false);
    const [addItemError,  setAddItemError]  = useState("");

    useEffect(() => {
        setItemsList(items);
    }, [items]);

    const handleAddNewItem = (e) => {
        e.preventDefault();
        if (!newItemName.trim()) return;
        setAddingItem(true);
        setAddItemError("");
        router.post(route("asset-issuance.items.store"), { name: newItemName.trim() }, {
            preserveScroll: true,
            onSuccess: (page) => {
                // Reload items from the server response if available,
                // otherwise append a temporary entry
                const freshItems = page?.props?.items;
                if (freshItems) {
                    setItemsList(freshItems);
                    const created = freshItems.find(i => i.name === newItemName.trim());
                    if (created) setData("item_id", created.id);
                } else {
                    const tempId = Date.now();
                    const newEntry = { id: tempId, name: newItemName.trim() };
                    setItemsList(prev => [...prev, newEntry]);
                    setData("item_id", tempId);
                }
                setNewItemName("");
                setOpenAddItem(false);
                setAddingItem(false);
            },
            onError: (errs) => {
                setAddItemError(errs?.name || "Failed to add item.");
                setAddingItem(false);
            },
        });
    };

    const { data, setData, post, processing, errors } = useForm({
        employee_id: "",
        item_id:     "",
        quantity:    1,
        purpose:     "",
    });

    const toggleMobile  = () => setMobileOpen(v => !v);
    const openUserMenu  = (e) => setUserMenuAnchor(e.currentTarget);
    const closeUserMenu = () => setUserMenuAnchor(null);

    const handleSubmit = (e) => {
        e.preventDefault();
        post(route("asset-issuance.store"));
    };

    const now = new Date();
    const dateTimeStr = now.toLocaleDateString("en-GB", { day: "2-digit", month: "long", year: "numeric" })
        + " – " + now.toLocaleTimeString("en-US", { hour: "2-digit", minute: "2-digit" });

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
            <Head title="Issue Item" />

            <Box sx={{ display: "flex" }}>
                {/* AppBar */}
                <AppBar position="fixed" elevation={0} sx={{ zIndex: (t) => t.zIndex.drawer + 1, borderBottom: "1px solid", borderColor: "divider", backgroundColor: "white", color: "#0B1C2D" }}>
                    <Toolbar>
                        <Typography fontWeight={900}>Issue Item to Employee</Typography>
                        <Box sx={{ flex: 1 }} />
                        <Button variant="outlined" component={Link} href={route("asset-issuance.index")}
                            sx={{ borderColor: "#0B1C2D", color: "#0B1C2D", "&:hover": { borderColor: "#0F2A44", backgroundColor: "rgba(11,28,45,0.04)" } }}>
                            ← Back
                        </Button>
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

                {/* Main content */}
                <Box component="main" sx={{ flexGrow: 1, width: { md: `calc(100% - ${drawerWidth}px)` }, pt: 5, pb: 3 }}>
                    <Container maxWidth={false} disableGutters sx={{ px: { xs: 2, md: 3 } }}>
                        <Box component="form" onSubmit={handleSubmit}
                            sx={{ border: "2px solid #0B1C2D", backgroundColor: "white", overflow: "hidden" }}>

                            {/* Section header */}
                            <Box sx={{ px: 3, py: 2, borderBottom: "2px solid #0B1C2D", backgroundColor: "rgba(11,28,45,0.04)" }}>
                                <Typography fontWeight={900} fontSize={16} sx={{ color: "#0B1C2D" }}>
                                    New Asset Issuance
                                </Typography>
                                <Typography variant="body2" color="text.secondary">
                                    Fill in the details below to record an item issuance to an employee.
                                </Typography>
                            </Box>

                            <Box sx={{ p: 3 }}>
                                {/* Auto-filled read-only info */}
                                <Typography variant="caption" fontWeight={900} sx={{ color: "#0B1C2D", textTransform: "uppercase", letterSpacing: 1 }}>
                                    Issuance Info (Auto-filled)
                                </Typography>
                                <Box sx={{ display: "grid", gridTemplateColumns: { xs: "1fr", sm: "1fr 1fr 1fr" }, gap: 2, mt: 1, mb: 3 }}>
                                    <TextField label="Issued By"  value={issuerName}  InputProps={{ readOnly: true }} fullWidth size="small" />
                                    <TextField label="Department" value={issuerDept}  InputProps={{ readOnly: true }} fullWidth size="small" />
                                    <TextField label="Date & Time" value={dateTimeStr} InputProps={{ readOnly: true }} fullWidth size="small" />
                                </Box>

                                <Divider sx={{ mb: 3 }} />

                                {/* Employee */}
                                <Typography variant="caption" fontWeight={900} sx={{ color: "#0B1C2D", textTransform: "uppercase", letterSpacing: 1 }}>
                                    Recipient
                                </Typography>
                                <Box sx={{ mt: 1, mb: 3 }}>
                                    <Autocomplete
                                        options={employees}
                                        getOptionLabel={(opt) => opt.preferred_name || opt.full_name || ""}
                                        value={selectedEmployee}
                                        onChange={(_, val) => {
                                            setSelectedEmployee(val);
                                            setData("employee_id", val?.employee_id ?? "");
                                        }}
                                        renderInput={(params) => (
                                            <TextField {...params} label="Employee *" error={!!errors.employee_id}
                                                helperText={errors.employee_id} fullWidth />
                                        )}
                                    />
                                </Box>

                                <Divider sx={{ mb: 3 }} />

                                {/* Item & Quantity */}
                                <Box sx={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                                    <Typography variant="caption" fontWeight={900} sx={{ color: "#0B1C2D", textTransform: "uppercase", letterSpacing: 1 }}>
                                        Item Details
                                    </Typography>
                                    <Button
                                        size="small"
                                        // startIcon={<AddOutlinedIcon fontSize="small" />}
                                        onClick={() => { setOpenAddItem(true); setAddItemError(""); }}
                                        sx={{ textTransform: "none", fontWeight: 700, color: "#0B1C2D", p: 0, minWidth: 0, "&:hover": { textDecoration: "underline" } }}
                                    >
                                        + Add new item
                                    </Button>
                                </Box>
                                <Box sx={{ display: "grid", gridTemplateColumns: { xs: "1fr", sm: "2fr 1fr" }, gap: 2, mt: 1, mb: 3 }}>
                                    <TextField select label="Item *" value={data.item_id}
                                        onChange={e => {
                                            if (e.target.value === "__add_new__") {
                                                setOpenAddItem(true);
                                            } else {
                                                setData("item_id", e.target.value);
                                            }
                                        }}
                                        error={!!errors.item_id} helperText={errors.item_id}
                                        fullWidth>
                                        {itemsList.map(item => (
                                            <MuiMenuItem key={item.id} value={item.id}>{item.name}</MuiMenuItem>
                                        ))}
                                        {/* Divider + Add option */}
                                        <Divider />
                                        <MuiMenuItem value="__add_new__"
                                            sx={{ color: "#0B1C2D", fontWeight: 700, gap: 1 }}>
                                            <AddOutlinedIcon fontSize="small" />
                                            Add new item
                                        </MuiMenuItem>
                                    </TextField>

                                    <TextField label="Quantity *" type="number" inputProps={{ min: 1 }}
                                        value={data.quantity} onChange={e => setData("quantity", e.target.value)}
                                        error={!!errors.quantity} helperText={errors.quantity} fullWidth />
                                </Box>

                                <Divider sx={{ mb: 3 }} />

                                {/* Purpose */}
                                <Typography variant="caption" fontWeight={900} sx={{ color: "#0B1C2D", textTransform: "uppercase", letterSpacing: 1 }}>
                                    Additional Notes
                                </Typography>
                                <Box sx={{ mt: 1 }}>
                                    <TextField label="Purpose / Notes (optional)" multiline rows={3}
                                        value={data.purpose} onChange={e => setData("purpose", e.target.value)}
                                        placeholder="e.g. Issued for new joiner onboarding…"
                                        fullWidth />
                                </Box>
                            </Box>

                            {/* Footer actions */}
                            <Box sx={{ px: 3, py: 2, borderTop: "2px solid #0B1C2D", backgroundColor: "rgba(11,28,45,0.03)", display: "flex", justifyContent: "flex-end", gap: 2 }}>
                                <Button component={Link} href={route("asset-issuance.index")}
                                    sx={{ borderColor: "#0B1C2D", color: "#0B1C2D" }} variant="outlined">
                                    Cancel
                                </Button>
                                <Button type="submit" variant="contained" disabled={processing}
                                    sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                                    {processing ? "Saving…" : "Issue Item"}
                                </Button>
                            </Box>
                        </Box>
                    </Container>
                </Box>
            </Box>

            {/* ── Add New Item Dialog ── */}
            <Dialog open={openAddItem} onClose={() => { setOpenAddItem(false); setNewItemName(""); setAddItemError(""); }} fullWidth maxWidth="xs">
                <DialogTitle sx={{ fontWeight: 900 }}>Add New Item</DialogTitle>
                <DialogContent>
                    <Box component="form" onSubmit={handleAddNewItem} sx={{ mt: 1 }}>
                        <TextField
                            autoFocus fullWidth label="Item Name *"
                            placeholder="e.g. Laptop, Office Chair…"
                            value={newItemName}
                            onChange={e => { setNewItemName(e.target.value); setAddItemError(""); }}
                            error={!!addItemError}
                            helperText={addItemError}
                        />
                    </Box>
                </DialogContent>
                <DialogActions sx={{ px: 3, pb: 2 }}>
                    <Button onClick={() => { setOpenAddItem(false); setNewItemName(""); setAddItemError(""); }}>
                        Cancel
                    </Button>
                    <Button variant="contained" onClick={handleAddNewItem}
                        disabled={!newItemName.trim() || addingItem}
                        startIcon={addingItem ? <CircularProgress size={16} color="inherit" /> : null}
                        sx={{ backgroundColor: "#0B1C2D", "&:hover": { backgroundColor: "#0F2A44" } }}>
                        {addingItem ? "Saving…" : "Add Item"}
                    </Button>
                </DialogActions>
            </Dialog>
        </AuthenticatedLayout>
    );
}
