import React, { useMemo, useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link } from "@inertiajs/react";
import Grid from "@mui/material/Grid";

import {
    Box,
    Card,
    CardContent,
    Container,
    Typography,
    Stack,
    Chip,
    Divider,
    TextField,
    InputAdornment,
    Paper,
} from "@mui/material";

import SearchIcon from "@mui/icons-material/Search";
import HomeOutlinedIcon from "@mui/icons-material/HomeOutlined";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import GroupsOutlinedIcon from "@mui/icons-material/GroupsOutlined";
import AssessmentOutlinedIcon from "@mui/icons-material/AssessmentOutlined";
import ConfirmationNumberIcon from "@mui/icons-material/ConfirmationNumber";
import TaskAltIcon from "@mui/icons-material/TaskAlt";
import MarkEmailUnreadIcon from "@mui/icons-material/MarkEmailUnread";
import TrendingUpIcon from "@mui/icons-material/TrendingUp";

export default function HigherMgtReports({
    auth,
    stats = {},
    reports = {},
}) {
    const [search, setSearch] = useState("");

    const reportList = reports?.data || [];

    const filteredReports = useMemo(() => {
        return reportList.filter(
            (item) =>
                item.title?.toLowerCase().includes(search.toLowerCase()) ||
                item.description?.toLowerCase().includes(search.toLowerCase())
        );
    }, [search, reportList]);

    const cards = [
        {
            title: "Total Tickets",
            value: stats.total || 0,
            icon: <TrendingUpIcon />,
        },
        {
            title: "Open",
            value: stats.open || 0,
            icon: <ConfirmationNumberIcon />,
        },
        {
            title: "Resolved",
            value: stats.resolved || 0,
            icon: <TaskAltIcon />,
        },
        {
            title: "Unread",
            value: stats.unread || 0,
            icon: <MarkEmailUnreadIcon />,
        },
    ];

    return (
        <AuthenticatedLayout user={auth.user}>
            <Head title="Higher Management Reports" />

            <Container
                maxWidth={true}
                sx={{
                    py: 4,
                    px: { xs: 2, md: 4 },
                    bgcolor: "#fafafa",
                    minHeight: "100vh",
                }}
            >
                <Grid container spacing={3}>
                    {/* Sidebar */}
                    <Grid item xs={12} md={3}>
                        <Paper
                            sx={{
                                borderRadius: 3,
                                border: "1px solid #e5e7eb",
                                boxShadow: "none",
                                minHeight: "80vh",
                            }}
                        >
                            <Box p={3}>
                                <Typography
                                    variant="h6"
                                    fontWeight={700}
                                    mb={3}
                                >
                                    Reports
                                </Typography>

                                <Stack spacing={1}>
                                    <Link
                                        href="/hrms"
                                        style={{
                                            textDecoration: "none",
                                            color: "inherit",
                                        }}
                                    >
                                        <Box
                                            sx={{
                                                display: "flex",
                                                alignItems: "center",
                                                gap: 2,
                                                p: 1.5,
                                                borderRadius: 2,
                                                "&:hover": {
                                                    bgcolor: "#f5f5f5",
                                                },
                                            }}
                                        >
                                            <HomeOutlinedIcon />
                                            <Typography>
                                                HRMS Home
                                            </Typography>
                                        </Box>
                                    </Link>

                                    <Link
                                        href="/dashboard"
                                        style={{
                                            textDecoration: "none",
                                            color: "inherit",
                                        }}
                                    >
                                        <Box
                                            sx={{
                                                display: "flex",
                                                alignItems: "center",
                                                gap: 2,
                                                p: 1.5,
                                                borderRadius: 2,
                                                "&:hover": {
                                                    bgcolor: "#f5f5f5",
                                                },
                                            }}
                                        >
                                            <DashboardOutlinedIcon />
                                            <Typography>
                                                Dashboard
                                            </Typography>
                                        </Box>
                                    </Link>

                                    <Box
                                        sx={{
                                            display: "flex",
                                            alignItems: "center",
                                            gap: 2,
                                            p: 1.5,
                                            borderRadius: 2,
                                            bgcolor: "#f3f4f6",
                                        }}
                                    >
                                        <AssessmentOutlinedIcon />
                                        <Typography fontWeight={600}>
                                            Reports
                                        </Typography>
                                    </Box>

                                    <Link
                                        href="/employees"
                                        style={{
                                            textDecoration: "none",
                                            color: "inherit",
                                        }}
                                    >
                                        <Box
                                            sx={{
                                                display: "flex",
                                                alignItems: "center",
                                                gap: 2,
                                                p: 1.5,
                                                borderRadius: 2,
                                                "&:hover": {
                                                    bgcolor: "#f5f5f5",
                                                },
                                            }}
                                        >
                                            <GroupsOutlinedIcon />
                                            <Typography>
                                                Employees
                                            </Typography>
                                        </Box>
                                    </Link>
                                </Stack>
                            </Box>
                        </Paper>
                    </Grid>

                    {/* Main Content */}
                    <Grid item xs={12} md={9}>
                        <Box mb={4}>
                            <Typography
                                variant="h4"
                                fontWeight={700}
                            >
                                Higher Management Reports
                            </Typography>

                            <Typography
                                color="text.secondary"
                                mt={1}
                            >
                                Overview of ticketing activities and reports
                            </Typography>
                        </Box>

                        {/* KPI Cards */}
                        <Grid container spacing={3}>
                            {cards.map((card) => (
                                <Grid
                                    item
                                    xs={12}
                                    sm={6}
                                    md={3}
                                    key={card.title}
                                >
                                    <Card
                                        sx={{
                                            borderRadius: 3,
                                            border:
                                                "1px solid #e5e7eb",
                                            boxShadow: "none",
                                        }}
                                    >
                                        <CardContent>
                                            <Stack
                                                direction="row"
                                                justifyContent="space-between"
                                            >
                                                <Box>
                                                    <Typography
                                                        variant="body2"
                                                        color="text.secondary"
                                                    >
                                                        {card.title}
                                                    </Typography>

                                                    <Typography
                                                        variant="h4"
                                                        fontWeight={700}
                                                        mt={1}
                                                    >
                                                        {card.value}
                                                    </Typography>
                                                </Box>

                                                <Box
                                                    sx={{
                                                        color:
                                                            "#6b7280",
                                                    }}
                                                >
                                                    {card.icon}
                                                </Box>
                                            </Stack>
                                        </CardContent>
                                    </Card>
                                </Grid>
                            ))}
                        </Grid>

                        {/* Search */}
                        <Paper
                            sx={{
                                mt: 4,
                                p: 3,
                                borderRadius: 3,
                                border:
                                    "1px solid #e5e7eb",
                                boxShadow: "none",
                            }}
                        >
                            <TextField
                                fullWidth
                                placeholder="Search tickets..."
                                value={search}
                                onChange={(e) =>
                                    setSearch(e.target.value)
                                }
                                InputProps={{
                                    startAdornment: (
                                        <InputAdornment position="start">
                                            <SearchIcon />
                                        </InputAdornment>
                                    ),
                                }}
                            />
                        </Paper>

                        {/* Reports */}
                        <Paper
                            sx={{
                                mt: 3,
                                p: 3,
                                borderRadius: 3,
                                border:
                                    "1px solid #e5e7eb",
                                boxShadow: "none",
                            }}
                        >
                            <Typography
                                variant="h6"
                                fontWeight={600}
                                mb={3}
                            >
                                Ticket Reports
                            </Typography>

                            {filteredReports.length === 0 ? (
                                <Typography color="text.secondary">
                                    No records found.
                                </Typography>
                            ) : (
                                filteredReports.map((report) => (
                                    <Card
                                        key={report.id}
                                        sx={{
                                            mb: 2,
                                            border:
                                                "1px solid #e5e7eb",
                                            boxShadow: "none",
                                            borderRadius: 3,
                                        }}
                                    >
                                        <CardContent>
                                            <Stack
                                                direction="row"
                                                justifyContent="space-between"
                                                alignItems="center"
                                            >
                                                <Typography
                                                    variant="h6"
                                                    fontWeight={600}
                                                >
                                                    {report.title}
                                                </Typography>

                                                <Chip
                                                    label={
                                                        report.status
                                                    }
                                                    size="small"
                                                    color={
                                                        report.status ===
                                                        "Resolved"
                                                            ? "success"
                                                            : report.status ===
                                                              "Open"
                                                            ? "error"
                                                            : "default"
                                                    }
                                                />
                                            </Stack>

                                            <Typography
                                                color="text.secondary"
                                                mt={2}
                                            >
                                                {
                                                    report.description
                                                }
                                            </Typography>

                                            <Divider
                                                sx={{ my: 2 }}
                                            />

                                            <Grid
                                                container
                                                spacing={2}
                                            >
                                                <Grid item xs={12} md={3}>
                                                    <Typography variant="body2">
                                                        <strong>ID:</strong>{" "}
                                                        {report.id}
                                                    </Typography>
                                                </Grid>

                                                <Grid item xs={12} md={3}>
                                                    <Typography variant="body2">
                                                        <strong>Status:</strong>{" "}
                                                        {report.status}
                                                    </Typography>
                                                </Grid>

                                                <Grid item xs={12} md={3}>
                                                    <Typography variant="body2">
                                                        <strong>Read:</strong>{" "}
                                                        {report.is_read
                                                            ? "Yes"
                                                            : "No"}
                                                    </Typography>
                                                </Grid>

                                                <Grid item xs={12} md={3}>
                                                    <Typography variant="body2">
                                                        <strong>Date:</strong>{" "}
                                                        {new Date(
                                                            report.created_at
                                                        ).toLocaleDateString()}
                                                    </Typography>
                                                </Grid>
                                            </Grid>
                                        </CardContent>
                                    </Card>
                                ))
                            )}
                        </Paper>
                    </Grid>
                </Grid>
            </Container>
        </AuthenticatedLayout>
    );
}