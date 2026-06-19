import {
    Paper,
    List,
    ListItemButton,
    ListItemIcon,
    ListItemText,
    Typography,
    Divider,
} from "@mui/material";

import {
    Home as HomeIcon,
    School as SchoolIcon,
    AddCircleOutline as AddCircleOutlineIcon,
} from "@mui/icons-material";

import { router } from "@inertiajs/react";

export default function TrainingSidebar() {
    const menuItems = [
        {
            label: "Home",
            icon: <HomeIcon />,
            route: "/suite-services",
        },
        {
            label: "Training List",
            icon: <SchoolIcon />,
            route: "/hrms/training",
        },
        {
            label: "Create Training",
            icon: <AddCircleOutlineIcon />,
            route: "/hrms/training-dashboard",
        },
    ];

    return (
        <Paper
            elevation={0}
            sx={{
                width: 260,
                borderRadius: 4,
                border: "1px solid #e5e7eb",
                overflow: "hidden",
            }}
        >
            <Typography
                variant="h6"
                sx={{
                    p: 2,
                    fontWeight: 800,
                    color: "#0B1C2D",
                }}
            >
                Training Management
            </Typography>

            <Divider />

            <List sx={{ p: 1 }}>
                {menuItems.map((item) => (
                    <ListItemButton
                        key={item.label}
                        onClick={() =>
                            router.visit(item.route)
                        }
                        sx={{
                            borderRadius: 2,
                            mb: 0.5,
                            "&:hover": {
                                backgroundColor: "#f1f5f9",
                            },
                        }}
                    >
                        <ListItemIcon
                            sx={{
                                color: "#0B1C2D",
                                minWidth: 40,
                            }}
                        >
                            {item.icon}
                        </ListItemIcon>

                        <ListItemText
                            primary={item.label}
                            primaryTypographyProps={{
                                fontWeight: 600,
                            }}
                        />
                    </ListItemButton>
                ))}
            </List>
        </Paper>
    );
}