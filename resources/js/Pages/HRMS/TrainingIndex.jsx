import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head , router } from "@inertiajs/react";
import VisibilityIcon from "@mui/icons-material/Visibility";
import { useState } from "react";
import { DataGrid } from "@mui/x-data-grid";
import CloseIcon from "@mui/icons-material/Close";
import DownloadIcon from "@mui/icons-material/Download";
import IconButton from "@mui/material/IconButton";
import Stack from "@mui/material/Stack";
import toast from "react-hot-toast";

import {
    Box,
    Paper,
    Typography,
    Table,
    TableHead,
    TableRow,
    TableCell,
    TableBody,
    Chip,
    Button,
    Dialog,
    DialogTitle,
    DialogContent,
    Grid,
    Divider,
} from "@mui/material";

import TrainingSidebar from "./Components/TrainingSidebar";

export default function TrainingIndex({
    auth,
    trainings,
})
 {
    const getStatusColor = (status) => {
        switch (String(status).toLowerCase()) {
            case "accepted":
            case "completed":
                return "success";

            case "on going":
            case "on going":
                return "info";

            case "rejected":
            case "cancelled":
                return "error";

            default:
                return "warning";
        }
    };
    
    const [open, setOpen] = useState(false);
    const [selectedTraining, setSelectedTraining] = useState(null);

    const handleView = (training) => {
        setSelectedTraining(training);
        setOpen(true);
    };

    const handleCancelTraining = (trainingId) => {
    if (
        !window.confirm(
            "Are you sure you want to cancel this training?"
        )
    ) {
        return;
    }

    router.post(
        `/hrms/training/${trainingId}/cancel`,
        {},
        {
            preserveScroll: true,

            onSuccess: () => {
                toast.success(
                    "Training cancelled successfully"
                );

                setOpen(false);

                router.reload({
                    only: ["trainings"],
                });
            },

            onError: () => {
                toast.error(
                    "Unable to cancel training"
                );
            },
        }
    );
    };

    return (
        <AuthenticatedLayout user={auth.user}>
            <Head title="Training List" />

            <Box
                sx={{
                    display: "flex",
                    gap: 3,
                    p: 3,
                    backgroundColor: "#f5f7fa",
                    minHeight: "100vh",
                }}
            >
                <TrainingSidebar />

                <Paper
                    sx={{
                        flex: 1,
                        p: 3,
                        borderRadius: 3,
                    }}
                >
<Stack
    direction="row"
    justifyContent="space-between"
    alignItems="center"
    mb={3}
>
    <Typography
        variant="h5"
        fontWeight={700}
    >
        Training Sessions
    </Typography>

    <Button
        variant="contained"
        onClick={() =>
            router.visit(
                "/hrms/training-dashboard"
            )
        }
        sx={{
            textTransform: "none",
            fontWeight: 600,
            borderRadius: 2,
        }}
    >
        Create Training
    </Button>
</Stack>

                <DataGrid
    autoHeight
    rows={trainings}
    getRowId={(row) => row.id}
    pageSizeOptions={[10, 25, 50]}
    initialState={{
        pagination: {
            paginationModel: {
                pageSize: 10,
            },
        },
    }}
    columns={[
        {
            field: "topic",
            headerName: "Topic",
            flex: 1.5,
        },
        {
            field: "date",
            headerName: "Date",
            flex: 1,
        },
        {
            field: "start_time",
            headerName: "Start",
            flex: 1,
        },
        {
            field: "end_time",
            headerName: "End",
            flex: 1,
        },
        {
            field: "status",
            headerName: "Status",
            flex: 1,
            renderCell: (params) => (
                <Chip
                    size="small"
                    label={params.value}
                    color={getStatusColor(
                        params.value
                    )}
                />
            ),
        },
        {
            field: "participants",
            headerName: "Participants",
            flex: 1,
            valueGetter: (_, row) =>
                row.members?.length || 0,
        },
        {
            field: "actions",
            headerName: "Action",
            sortable: false,
            flex: 1,
            renderCell: (params) => (
                <Button
                    size="small"
                    variant="outlined"
                    startIcon={
                        <VisibilityIcon />
                    }
                    onClick={() =>
                        handleView(
                            params.row
                        )
                    }
                >
                    View
                </Button>
            ),
        },
    ]}
/>
<Dialog
    open={open}
    onClose={() => setOpen(false)}
    fullWidth
    maxWidth="lg"
>
    <DialogTitle>
        <Stack
            direction="row"
            justifyContent="space-between"
            alignItems="center"
        >
            <Typography
                variant="h6"
                fontWeight={700}
            >
                Training Details
            </Typography>

            <IconButton
                onClick={() =>
                    setOpen(false)
                }
            >
                <CloseIcon />
            </IconButton>
        </Stack>
    </DialogTitle>

    <DialogContent>
        {selectedTraining && (
            <>
                <Grid
                    container
                    spacing={3}
                >
                    <Grid
                        item
                        xs={12}
                        md={6}
                    >
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Topic
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.topic
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    <Grid
                        item
                        xs={12}
                        md={6}
                    >
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Status
                            </Typography>

                            <Chip
                                label={
                                    selectedTraining.status
                                }
                                color={getStatusColor(
                                    selectedTraining.status
                                )}
                            />
                        </Paper>
                    </Grid>

                    <Grid
                        item
                        xs={12}
                        md={4}
                    >
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Date
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.date
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    <Grid
                        item
                        xs={12}
                        md={4}
                    >
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Start Time
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.start_time
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    <Grid
                        item
                        xs={12}
                        md={4}
                    >
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                End Time
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.end_time
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    <Grid item xs={12}>
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Description
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.description
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    <Grid item xs={12}>
                        <Paper
                            sx={{ p: 2 }}
                        >
                            <Typography
                                fontWeight={700}
                            >
                                Remarks
                            </Typography>

                            <Typography>
                                {
                                    selectedTraining.remarks
                                }
                            </Typography>
                        </Paper>
                    </Grid>

                    {selectedTraining.attachments && (
                        <Grid
                            item
                            xs={12}
                        >
                            <Button
                                variant="contained"
                                startIcon={
                                    <DownloadIcon />
                                }
                                href={`/storage/${selectedTraining.attachments}`}
                                target="_blank"
                            >
                                View Attachment
                            </Button>
                        </Grid>
                    )}

                    {selectedTraining.status !== "completed" &&
                        selectedTraining.status !== "cancelled" && (
                            <Box sx={{ mt: 2 }}>
                                <Button
                                    color="error"
                                    variant="contained"
                                    onClick={() =>
                                        handleCancelTraining(
                                            selectedTraining.id
                                        )
                                    }
                                >
                                    Cancel Training
                                </Button>
                            </Box>
                        )}
                </Grid>

                <Divider
                    sx={{ my: 3 }}
                />

                <Typography
                    variant="h6"
                    fontWeight={700}
                    mb={2}
                >
                    Participants (
                    {
                        selectedTraining
                            .members
                            ?.length
                    }
                    )
                </Typography>

                <DataGrid
                    autoHeight
                    rows={
                        selectedTraining.members ||
                        []
                    }
                    getRowId={(row) =>
                        row.id
                    }
                    hideFooter
                    columns={[
                        {
                            field: "employee",
                            headerName:
                                "Employee",
                            flex: 2,
                            valueGetter:
                                (_, row) =>
                                    row
                                        .employee
                                        ?.preferred_name ||
                                    "-",
                        },
                        {
                            field: "status",
                            headerName:
                                "Status",
                            flex: 1,
                            renderCell:
                                (
                                    params
                                ) => (
                                    <Chip
                                        size="small"
                                        label={
                                            params.value
                                        }
                                        color={getStatusColor(
                                            params.value
                                        )}
                                    />
                                ),
                        },
                    ]}
                />
            </>
        )}
    </DialogContent>
</Dialog>
                </Paper>
            </Box>
        </AuthenticatedLayout>
    );
}