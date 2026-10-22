import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link } from "@inertiajs/react";
import {
    Box,
    Card,
    CardActionArea,
    CardContent,
    Container,
    Grid,
    Stack,
    Typography,
} from "@mui/material";

const INVENTORY_MODULES = [
    {
        title: "Inventory Management",
        description: "Track stocks, handle stock requests and approval workflows.",
        href: "/stocks/items",
        icon: (
            <svg className="w-16 h-16" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="1.5"
                    d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
            </svg>
        ),
        color: "#4F46E5",
        bg: "#EEF2FF",
    },
    {
        title: "Asset Issuance",
        description: "Issue items to employees, track what was given, by whom, and when.",
        href: "/stocks/asset-issuance",
        icon: (
            <svg className="w-16 h-16" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="1.5"
                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
        ),
        color: "#0891B2",
        bg: "#ECFEFF",
    },
];

function ModuleCard({ mod }) {
    return (
        <Card
            elevation={0}
            sx={{
                width: 320,
                maxWidth: "100%",
                borderRadius: 3,
                border: "3px solid #000035",
                transition: "all 0.2s ease",
                "&:hover": {
                    transform: "translateY(-4px)",
                    boxShadow: "0 8px 24px rgba(11, 28, 45, 0.25)",
                    borderColor: "#0F2A44",
                },
            }}
        >
            <CardActionArea component={Link} href={mod.href}>
                <CardContent>
                    <Stack spacing={1.75} alignItems="center" textAlign="center">
                        <Box
                            sx={{
                                width: 96,
                                height: 96,
                                borderRadius: 3,
                                background: mod.bg,
                                display: "flex",
                                alignItems: "center",
                                justifyContent: "center",
                                color: mod.color,
                            }}
                        >
                            {mod.icon}
                        </Box>

                        <Typography variant="h6" fontWeight={900}>
                            {mod.title}
                        </Typography>

                        <Typography variant="body2" color="text.secondary" fontWeight={500}>
                            {mod.description}
                        </Typography>

                        <Typography variant="body2" sx={{ fontWeight: 800, color: "#0B1C2D" }}>
                            Open →
                        </Typography>
                    </Stack>
                </CardContent>
            </CardActionArea>
        </Card>
    );
}

export default function InventoryDashboard({ auth = {} }) {
    return (
        <AuthenticatedLayout user={auth?.user}>
            <Head title="Inventory Management" />

            <Container
                maxWidth="false"
                sx={{
                    minHeight: "70vh",
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    py: 3,
                }}
            >
                <Box sx={{ width: "100%" }}>
                    <Typography variant="h5" fontWeight={900} sx={{ mb: 5, textAlign: "center" }}>
                        INVENTORY MANAGEMENT
                    </Typography>

                    <Grid container spacing={3} justifyContent="center">
                        {INVENTORY_MODULES.map((mod) => (
                            <Grid
                                item
                                xs={12}
                                sm={6}
                                key={mod.title}
                                sx={{ display: "flex", justifyContent: "center" }}
                            >
                                <ModuleCard mod={mod} />
                            </Grid>
                        ))}
                    </Grid>
                </Box>
            </Container>
        </AuthenticatedLayout>
    );
}
