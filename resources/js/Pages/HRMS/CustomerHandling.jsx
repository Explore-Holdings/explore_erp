import React, { useEffect, useMemo, useState } from "react";
import { Head, router } from "@inertiajs/react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";

import {
  Alert,
  Box,
  Button,
  Chip,
  Stack,
  TextField,
  Typography,
} from "@mui/material";

import { DataGrid } from "@mui/x-data-grid";

import RefreshOutlinedIcon from "@mui/icons-material/RefreshOutlined";
import ArrowBackOutlinedIcon from "@mui/icons-material/ArrowBackOutlined";
import ClearOutlinedIcon from "@mui/icons-material/ClearOutlined";
import FileDownloadOutlinedIcon from "@mui/icons-material/FileDownloadOutlined";

export default function CustomerHandling() {
  const [customerHandling, setCustomerHandling] = useState([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const [searchText, setSearchText] = useState("");
  const [fromDate, setFromDate] = useState("");
  const [toDate, setToDate] = useState("");

  const fetchCustomerHandling = async () => {
    setLoading(true);
    setError("");

    try {
      const response = await fetch("/api/customer-handling", {
        headers: { Accept: "application/json" },
      });

      const result = await response.json();

      if (!response.ok || result.status !== "success") {
        setError(result.message || "Failed to fetch customer handling data");
        return;
      }

      setCustomerHandling(result.data || []);
    } catch (err) {
      setError("Server connection failed");
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCustomerHandling();
  }, []);

  const rows = useMemo(() => {
    return customerHandling
      .filter((row) => {
        const keyword = searchText.toLowerCase();

        const matchesSearch =
          !keyword ||
          Object.values(row).some((value) =>
            String(value || "").toLowerCase().includes(keyword)
          );

        if (!matchesSearch) return false;

        if (!fromDate && !toDate) return true;

        const createdDate = row.created_at ? new Date(row.created_at) : null;
        if (!createdDate) return false;

        const from = fromDate ? new Date(fromDate) : null;
        const to = toDate ? new Date(toDate) : null;

        if (from) from.setHours(0, 0, 0, 0);
        if (to) to.setHours(23, 59, 59, 999);

        if (from && createdDate < from) return false;
        if (to && createdDate > to) return false;

        return true;
      })
      .map((row, index) => ({
        id: row.id || index + 1,
        ...row,
      }));
  }, [customerHandling, searchText, fromDate, toDate]);

  const formatPrice = (value) => {
    if (value === null || value === undefined || value === "") return "N/A";

    const numericValue = Number(value);
    if (!Number.isFinite(numericValue)) return String(value);

    return numericValue.toLocaleString("en-US", {
      minimumFractionDigits: 2,
      maximumFractionDigits: 2,
    });
  };

  const getDisplayPrice = (row) => {
    const value = row.total_price_final ?? row.final_price ?? row.total_price ?? row.price;
    return formatPrice(value);
  };

  const exportToCsv = () => {
    if (!rows.length) return;

    const headers = [
      "Reference Number",
      "Check In DateTime",
      "Check In By",
      "Check Out DateTime",
      "Check Out By",
      "Status",
      "Total Price Final",
      "Finance Status",
      "Created At",
    ];

    const csvRows = rows.map((row) => [
      row.reference_number || "",
      row.check_in_datetime || "",
      row.check_in_by_name || "",
      row.check_out_datetime || "",
      row.check_out_by_name || "",
      row.status || "",
      getDisplayPrice(row),
      row.finance_status || "",
      row.created_at || "",
    ]);

    const csvContent = [headers, ...csvRows]
      .map((row) =>
        row.map((value) => `"${String(value).replace(/"/g, '""')}"`).join(",")
      )
      .join("\n");

    const blob = new Blob([csvContent], {
      type: "text/csv;charset=utf-8;",
    });

    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");

    link.href = url;
    link.download = "customer-handling.csv";
    link.click();

    URL.revokeObjectURL(url);
  };

  const columns = [
    {
      field: "reference_number",
      headerName: "Reference Number",
      flex: 1,
      minWidth: 180,
    },
    {
      field: "check_in_datetime",
      headerName: "Check In DateTime",
      flex: 1,
      minWidth: 190,
      valueGetter: (value) => value || "N/A",
    },
    {
      field: "check_in_by_name",
      headerName: "Check In By",
      flex: 1,
      minWidth: 160,
      valueGetter: (value) => value || "N/A",
    },
    {
      field: "check_out_datetime",
      headerName: "Check Out DateTime",
      flex: 1,
      minWidth: 190,
      valueGetter: (value) => value || "N/A",
    },
    {
      field: "check_out_by_name",
      headerName: "Check Out By",
      flex: 1,
      minWidth: 160,
      valueGetter: (value) => value || "N/A",
    },
    {
      field: "status",
      headerName: "Status",
      width: 140,
      renderCell: (params) => (
        <Chip
          size="small"
          label={params.value === "check_in" ? "Check In" : "Check Out"}
          color={params.value === "check_in" ? "success" : "error"}
        />
      ),
    },
    {
      field: "total_price_final",
      headerName: "Total Price Final",
      flex: 1,
      minWidth: 170,
      valueGetter: (_, row) => getDisplayPrice(row),
    },
    {
      field: "finance_status",
      headerName: "Finance Status",
      flex: 1,
      minWidth: 180,
      valueGetter: (value) => value || "N/A",
    },
    {
      field: "created_at",
      headerName: "Created At",
      flex: 1,
      minWidth: 180,
      valueGetter: (value) => value || "N/A",
    },
  ];

  return (
    <AuthenticatedLayout>
      <Head title="Customer Handling" />

      <div className="py-12">
        <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
          <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <div className="p-6 text-gray-900">
              <Stack
                direction="row"
                justifyContent="space-between"
                alignItems="center"
                sx={{ mb: 2 }}
              >
                <Typography variant="h5" fontWeight={800}>
                  Customer Handling
                </Typography>

                <Button
                  variant="outlined"
                  startIcon={<ArrowBackOutlinedIcon />}
                  onClick={() => router.get("/suite-services")}
                >
                  Back
                </Button>
              </Stack>

              <Stack
                direction="row"
                spacing={1}
                alignItems="center"
                flexWrap="wrap"
                sx={{ mb: 2, gap: 1 }}
              >
                <TextField
                  size="small"
                  label="Search Table"
                  placeholder="Search reference, name, status..."
                  value={searchText}
                  onChange={(e) => setSearchText(e.target.value)}
                  sx={{ minWidth: 260 }}
                />

                <TextField
                  size="small"
                  type="date"
                  label="From Date"
                  value={fromDate}
                  onChange={(e) => setFromDate(e.target.value)}
                  InputLabelProps={{ shrink: true }}
                />

                <TextField
                  size="small"
                  type="date"
                  label="To Date"
                  value={toDate}
                  onChange={(e) => setToDate(e.target.value)}
                  InputLabelProps={{ shrink: true }}
                />

                <Button
                  variant="outlined"
                  startIcon={<ClearOutlinedIcon />}
                  onClick={() => {
                    setSearchText("");
                    setFromDate("");
                    setToDate("");
                  }}
                >
                  Clear
                </Button>

                <Button
                  variant="contained"
                  startIcon={<RefreshOutlinedIcon />}
                  onClick={fetchCustomerHandling}
                  disabled={loading}
                >
                  Refresh
                </Button>

                <Button
                  variant="outlined"
                  startIcon={<FileDownloadOutlinedIcon />}
                  onClick={exportToCsv}
                  disabled={!rows.length}
                >
                  Export CSV
                </Button>
              </Stack>

              {error && (
                <Alert severity="error" sx={{ mb: 2 }}>
                  {error}
                </Alert>
              )}

              <Box sx={{ height: 560, width: "100%" }}>
                <DataGrid
                  rows={rows}
                  columns={columns}
                  loading={loading}
                  disableRowSelectionOnClick
                  pageSizeOptions={[10, 25, 50, 100]}
                  initialState={{
                    pagination: {
                      paginationModel: { pageSize: 10, page: 0 },
                    },
                  }}
                />
              </Box>
            </div>
          </div>
        </div>
      </div>
    </AuthenticatedLayout>
  );
}