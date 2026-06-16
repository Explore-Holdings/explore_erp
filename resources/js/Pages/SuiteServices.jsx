import React, { useMemo } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, usePage } from "@inertiajs/react";
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

const MODULE_SETS = {
  ADMIN: [
    {
      title: "Users, Roles & Permissions",
      description: "Manage system users, roles, and permission controls.",
      href: "/hrms/users-management",
      image: "/images/users-roles-permissions.webp",
    },
  ],
  HR: [
    {
      title: "Users, Roles & Permissions",
      description: "Manage system users, roles, and permission controls.",
      href: "/hrms/users-management",
      image: "/images/users-roles-permissions.webp",
    },
    {
      title: "Employee Data",
      description: "Profiles, departments, documents, and employee records.",
      href: "/hrms/emp-dashboard",
      image: "/images/employee-data.webp",
    },
    {
      title: "Leave Management",
      description: "View, Approve and monitor employee leave records and balances.",
      href: "/hrms/leave-dashboard",
      image: "/images/leave-managment.webp",
    },
    {
      title: "Vehicle Request Management",
      description: "Review, approve, and manage vehicle booking requests.",
      href: "/hrms/vehicle-request-dashboard",
      image: "/images/vehicle-request-management.webp",
    },
    {
      title: "Customer Handling",
      description: "Manage and track customer handling requests.",
      href: "/hrms/customer-handling",
      image: "/images/footer-logo.png",
    },
    {
      title: "Gatepass Handling",
      description: "Manage and track gatepass requests.",
      href: "/hrms/gate-pass-requests",
      image: "/images/gatepass.jpg",
    },
    {
      title: "Event & Meeting Managment",
      description: "Manage events, meetings, schedules, and coordination in one place.",
      href: "/hrms/meeting-dashboard",
      image: "/images/hrms-meeting.webp",
    },
    {
      title: "Training",
      description: "Training programs, sessions, and completion tracking.",
      href: "/hrms/training",
      image: "/images/hrms-training.webp",
    },
    {
      title: "Payroll",
      description: "Salary components, payslips, and deductions.",
      href: "/hrms/payroll-dashboard",
      image: "/images/payroll.webp",
    },
    {
      title: "Inventory Management",
      description: "Track stocks, handle stock requests and approval workflows.",
      href: "/stocks",
      image: "/images/procurement.webp",
    },
  ],

  FINANCE: [
    {
      title: "Payroll",
      description: "Salary components, payslips, and deductions.",
      href: "/hrms/payroll-dashboard",
      image: "/images/payroll.webp",
    },
  ],
  PROCUREMENT: [
    {
      title: "Inventory Management",
      description: "Track stocks, handle stock requests and approval workflows.",
      href: "/stocks",
      image: "/images/procurement.webp",
    },
  ],
  // TRANSPORT: [
  //   {
  //     title: "Fleet & Booking Operations",
  //     description: "Manage transfer schedules and shuttle schedules.",
  //     href: "/schedules/transport-dashboard",
  //     image: "/images/transport-operations.webp",
  //   },
  // ],
};

function ModuleCard({ item, isElevated = false }) {
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
      <CardActionArea component={Link} href={item.href}>
        <CardContent>
          <Stack spacing={1.75} alignItems="center" textAlign="center">
            <Box
              component="img"
              src={item.image}
              alt={item.title}
              sx={{
                width: "100%",
                height: 130,
                objectFit: "contain",
                borderRadius: 2,
              }}
            />

            <Typography variant="h6" fontWeight={900}>
              {item.title}
            </Typography>

            {isElevated && (
              <Typography variant="caption" sx={{ fontWeight: 800, color: '#0B6B44', display: 'block', mt: 0.5 }}>
                Inventory Manager (elevated)
              </Typography>
            )}

            <Typography variant="body2" color="text.secondary" fontWeight={500}>
              {item.description}
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

export default function HRMS({ auth = {} }) {
  const { props } = usePage();

  const roleRaw = props?.auth?.user?.role ?? auth?.user?.role ?? "";
  const role = String(roleRaw).trim().toLowerCase();

  const deptRaw =
    props?.auth?.department ??
    props?.auth?.user?.department ??
    auth?.department ??
    auth?.user?.department ??
    "";
  const dept = String(deptRaw).trim().toLowerCase();

  const suiteType = useMemo(() => {
    if (typeof window === "undefined") {
      return null;
    }
    return new URLSearchParams(window.location.search).get("type")?.trim().toLowerCase() || null;
  }, []);

  const allModules = useMemo(() => {
    const all = Object.values(MODULE_SETS).flat();
    return all.filter((m, i, arr) => arr.findIndex((x) => x.href === m.href) === i);
  }, []);

  const allowedModuleSets = useMemo(() => {
    // Admin and Senior Management see all modules
    if (role === "admin" || dept === "senior management") {
      return MODULE_SETS;
    }

    const allowed = {};

    // HR access
    if (role === "hr-executive" || dept === "hr") {
      allowed.HR = MODULE_SETS.HR;
    }

    // Procurement access
    if (
      role === "staff" ||
      role === "department user" ||
      role === "hod" ||
      role === "head of department" ||
      role === "inventory-manager" ||
      role === "inventory manager" ||
      dept === "procurement department" ||
      dept === "procurement"
    ) {
      allowed.PROCUREMENT = MODULE_SETS.PROCUREMENT;
    }

    // Finance access
    if (dept === "finance" || dept === "finance department") {
      allowed.FINANCE = MODULE_SETS.FINANCE;
    }

    return allowed;
  }, [role, dept]);

  const userModules = useMemo(() => {
    const all = Object.values(allowedModuleSets).flat();
    return all.filter((m, i, arr) => arr.findIndex((x) => x.href === m.href) === i);
  }, [allowedModuleSets]);

  const modules = useMemo(() => {
    let list = [];
    if (!suiteType) {
      list = userModules;
    } else if (suiteType === "procurement") {
      list = allowedModuleSets.PROCUREMENT || [];
    } else {
      const suiteKey = Object.keys(MODULE_SETS).find((key) =>
        key.toLowerCase().replace(/\s+/g, "-") === suiteType ||
        suiteType === key.toLowerCase().replace(/\s+/g, "-")
      );

      if (!suiteKey) {
        list = userModules;
      } else {
        list = allowedModuleSets[suiteKey] || [];
      }
    }

    const requestedOrder = [
      "employee data",
      "leave management",
      "vehicle request management",
      "customer handling",
      "event & meeting managment",
      "event & meeting management",
      "inventory management",
      "training",
      "payroll",
      "users, roles & permissions"
    ];

    return [...list].sort((a, b) => {
      const titleA = String(a.title).toLowerCase().trim();
      const titleB = String(b.title).toLowerCase().trim();
      const indexA = requestedOrder.indexOf(titleA);
      const indexB = requestedOrder.indexOf(titleB);
      const valA = indexA === -1 ? 999 : indexA;
      const valB = indexB === -1 ? 999 : indexB;
      return valA - valB;
    });
  }, [userModules, allowedModuleSets, suiteType]);

  return (
    <AuthenticatedLayout user={auth?.user}>
      <Head title="HRMS" />

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
            ERP WORKSPACE
          </Typography>

          {modules.length === 0 ? (
            <Typography align="center" color="text.secondary">
              No modules assigned for your account.
            </Typography>
          ) : (
            <Grid container spacing={3} justifyContent="center">
              {modules.map((m) => (
                <Grid
                  item
                  xs={12}
                  sm={6}
                  key={m.title}
                  sx={{ display: "flex", justifyContent: "center" }}
                >
                  <ModuleCard
                    item={m}
                    isElevated={
                      (role === "inventory manager" || role === "inventory_manager") && m.href === "/stocks"
                    }
                  />
                </Grid>
              ))}
            </Grid>
          )}
        </Box>
      </Container>
    </AuthenticatedLayout>
  );
}
