import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { useEffect } from "react";
import { Head, router } from "@inertiajs/react";
import toast from "react-hot-toast";
import {
    Box,
    Paper,
    Typography,
    TextField,
    Button,
    Stack,
    MenuItem,
    Autocomplete,
    Chip,
    RadioGroup,
    FormControlLabel,
    Radio,
} from "@mui/material";

import TrainingSidebar from "./Components/TrainingSidebar";

export default function TrainingDashboard({
    auth,
    departments = [],
}) {
    const [employees, setEmployees] = useState([]);
    const [targetType, setTargetType] = useState("");

    const [formData, setFormData] = useState({
        topic: "",
        department_id: "",
        members: [],
        date: "",
        start_time: "",
        end_time: "",
        description: "",
        remarks: "",
        attachment: null,
    });

    useEffect(() => {
      const interval = setInterval(() => {

          router.reload({
              only: ["trainings"],
              preserveScroll: true,
              preserveState: true,
          });

      }, 120000);

      return () => clearInterval(interval);

  }, []);

    const loadAllEmployees = async () => {
        try {
            const response = await fetch(
                "/hrms/training/employees"
            );

            const data = await response.json();

            setEmployees(data);
        } catch (error) {
            console.error(error);
        }
    };

    const loadEmployees = async (departmentId) => {
        setFormData((prev) => ({
            ...prev,
            department_id: departmentId,
            members: [],
        }));

        if (!departmentId) {
            setEmployees([]);
            return;
        }

        try {
            const response = await fetch(
             `/hrms/training/departments/${departmentId}/employees`
            );

            const data = await response.json();

            setEmployees(Array.isArray(data) ? data : []);
        } catch (error) {
            console.error(error);
            setEmployees([]);
        }
    };

    const submit = (e) => {
        e.preventDefault();

        const data = new FormData();

        data.append("topic", formData.topic);
        data.append("department_id", formData.department_id);
        data.append("date", formData.date);
        data.append("start_time", formData.start_time);
        data.append("end_time", formData.end_time);
        data.append("description", formData.description);
        data.append("remarks", formData.remarks);

        if (formData.attachment) {
            data.append("attachment", formData.attachment);
        }

        formData.members.forEach((member, index) => {
            data.append(`members[${index}]`, member);
        });

        router.post(
            "/hrms/training/store",
            data,
            {
                forceFormData: true,

                preserveScroll: true,

                onSuccess: () => {
                    toast.success(
                        "Training created successfully"
                    );

                    router.visit(
                        "/hrms/training"
                    );
                },

                onError: () => {
                    toast.error(
                        "Failed to create training"
                    );
                },
            }
        );
    };

    return (
        <AuthenticatedLayout user={auth.user}>
            <Head title="Training Dashboard" />
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
                    <Typography
                        variant="h4"
                        fontWeight={800}
                        sx={{ mb: 1 }}
                    >
                        Create Training Session
                    </Typography>

                    <Typography
                        sx={{
                            color: "#6b7280",
                            mb: 4,
                        }}
                    >
                        Schedule and manage employee training sessions.
                    </Typography>

                    <form onSubmit={submit}>
                       <Stack spacing={3}>

                          {/* Topic + Attachment */}
                          <Stack
                              direction={{ xs: "column", md: "row" }}
                              spacing={2}
                          >
                              <TextField
                                  label="Training Topic"
                                  fullWidth
                                  value={formData.topic}
                                  onChange={(e) =>
                                      setFormData({
                                          ...formData,
                                          topic: e.target.value,
                                      })
                                  }
                              />

                              <Button
                                  variant="outlined"
                                  component="label"
                                  sx={{ minWidth: 220 }}
                              >
                                  {formData.attachment
                                      ? formData.attachment.name
                                      : "Upload Attachment"}

                                  <input
                                      hidden
                                      type="file"
                                      onChange={(e) =>
                                          setFormData({
                                              ...formData,
                                              attachment:
                                                  e.target.files[0],
                                          })
                                      }
                                  />
                              </Button>
                          </Stack>

                          {/* Target Type */}
                          <RadioGroup
                              row
                              value={targetType}
                              onChange={(e) => {
                                  const value = e.target.value;

                                  setTargetType(value);

                                  setEmployees([]);

                                  setFormData({
                                      ...formData,
                                      department_id: "",
                                      members: [],
                                  });

                                  if (value === "all") {
                                      loadAllEmployees();
                                  }
                              }}
                          >
                              <FormControlLabel
                                  value="department"
                                  control={<Radio />}
                                  label="Department"
                              />

                              <FormControlLabel
                                  value="all"
                                  control={<Radio />}
                                  label="Individual Employees"
                              />
                          </RadioGroup>

                          {/* Department */}
                          {targetType === "department" && (
                              <TextField
                                  select
                                  label="Department"
                                  fullWidth
                                  value={formData.department_id}
                                  onChange={(e) =>
                                      loadEmployees(
                                          e.target.value
                                      )
                                  }
                              >
                                  {departments.map((department) => (
                                      <MenuItem
                                          key={department.department_id}
                                          value={department.department_id}
                                      >
                                          {department.name}
                                      </MenuItem>
                                  ))}
                              </TextField>
                          )}

                          {/* Members */}
                          {employees.length > 0 && (
                              <Autocomplete
                                  multiple
                                  options={employees}
                                  getOptionLabel={(option) =>
                                      option.preferred_name || ""
                                  }
                                  value={employees.filter(
                                      (employee) =>
                                          formData.members.includes(
                                              employee.employee_id
                                          )
                                  )}
                                  onChange={(event, values) => {
                                      setFormData({
                                          ...formData,
                                          members: values.map(
                                              (employee) =>
                                                  employee.employee_id
                                          ),
                                      });
                                  }}
                                  renderTags={(
                                      value,
                                      getTagProps
                                  ) =>
                                      value.map(
                                          (option, index) => (
                                              <Chip
                                                  label={
                                                      option.preferred_name
                                                  }
                                                  {...getTagProps({
                                                      index,
                                                  })}
                                                  key={
                                                      option.employee_id
                                                  }
                                              />
                                          )
                                      )
                                  }
                                  renderInput={(params) => (
                                      <TextField
                                          {...params}
                                          label="Training Members"
                                      />
                                  )}
                              />
                          )}

                          {/* Date + Time */}
                          <Stack
                              direction={{ xs: "column", md: "row" }}
                              spacing={2}
                          >
                              <TextField
                                  type="date"
                                  label="Date"
                                  fullWidth
                                  InputLabelProps={{
                                      shrink: true,
                                  }}
                                  value={formData.date}
                                  onChange={(e) =>
                                      setFormData({
                                          ...formData,
                                          date: e.target.value,
                                      })
                                  }
                              />

                              <TextField
                                  type="time"
                                  label="Start Time"
                                  fullWidth
                                  InputLabelProps={{
                                      shrink: true,
                                  }}
                                  value={formData.start_time}
                                  onChange={(e) =>
                                      setFormData({
                                          ...formData,
                                          start_time:
                                              e.target.value,
                                      })
                                  }
                              />

                              <TextField
                                  type="time"
                                  label="End Time"
                                  fullWidth
                                  InputLabelProps={{
                                      shrink: true,
                                  }}
                                  value={formData.end_time}
                                  onChange={(e) =>
                                      setFormData({
                                          ...formData,
                                          end_time:
                                              e.target.value,
                                      })
                                  }
                              />
                          </Stack>

                          <TextField
                              multiline
                              rows={4}
                              label="Description"
                              fullWidth
                              value={formData.description}
                              onChange={(e) =>
                                  setFormData({
                                      ...formData,
                                      description:
                                          e.target.value,
                                  })
                              }
                          />

                          <TextField
                              multiline
                              rows={2}
                              label="Remarks"
                              fullWidth
                              value={formData.remarks}
                              onChange={(e) =>
                                  setFormData({
                                      ...formData,
                                      remarks:
                                          e.target.value,
                                  })
                              }
                          />

                          <Button
                              type="submit"
                              variant="contained"
                              size="large"
                              sx={{
                                  borderRadius: 3,
                                  textTransform: "none",
                                  fontWeight: 700,
                              }}
                          >
                              Create Training Session
                          </Button>
                      </Stack>
                    </form>
                </Paper>
            </Box>
        </AuthenticatedLayout>
    );
}