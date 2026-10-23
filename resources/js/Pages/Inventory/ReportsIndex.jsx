import React, { useState } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router } from "@inertiajs/react";

export default function ReportsIndex({ auth = {}, data = {}, type = "", departments = [], filters = {}, roleName = "" }) {
    const [deptId, setDeptId] = useState(filters?.department_id || "");
    const [startDate, setStartDate] = useState(filters?.start_date || "");
    const [endDate, setEndDate] = useState(filters?.end_date || "");

    const handleFilterSubmit = (e) => {
        e.preventDefault();
        router.get(route("reports.index"), {
            type,
            department_id: deptId,
            start_date: startDate,
            end_date: endDate
        }, { preserveState: true });
    };

    const handleReset = () => {
        setDeptId("");
        setStartDate("");
        setEndDate("");
        router.get(route("reports.index"), { type });
    };

    const handlePrint = () => {
        window.print();
    };

    const activeRole = (roleName || "").toLowerCase();
    const isHOD = activeRole === "hod";

    // Format Date helper
    const formatDate = (dateStr) => {
        if (!dateStr) return "N/A";
        const date = new Date(dateStr);
        return date.toLocaleDateString("en-US", { year: "numeric", month: "short", day: "numeric" });
    };

    // Format DateTime helper
    const formatDateTime = (dateStr) => {
        if (!dateStr) return "N/A";
        const date = new Date(dateStr);
        return date.toLocaleDateString("en-US", { year: "numeric", month: "short", day: "numeric" }) + " " + 
               date.toLocaleTimeString("en-US", { hour: "2-digit", minute: "2-digit" });
    };

    return (
        <AuthenticatedLayout
            user={auth?.user}
            header={
                <div className="flex items-center justify-between no-print">
                    <div className="flex items-center space-x-3">
                        <button onClick={() => window.history.back()} className="inline-flex items-center justify-center w-8 h-8 rounded-xl bg-slate-100 hover:bg-indigo-100 text-slate-500 hover:text-indigo-600 transition-all duration-200" title="Go back">
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M15 19l-7-7 7-7" /></svg>
                        </button>
                        <h2 className="font-extrabold text-2xl text-slate-800 tracking-tight leading-tight">
                            Inventory Reports
                        </h2>
                    </div>
                    <div className="flex items-center space-x-2 text-sm text-slate-500 font-semibold">
                        <Link href={route("suite-services")} className="hover:text-indigo-600 transition">Home</Link>
                        <span>/</span>
                        <Link href={route("stocks.dashboard")} className="hover:text-indigo-600 transition">Inventory</Link>
                        <span>/</span>
                        <span className="text-slate-800">Reports</span>
                    </div>
                </div>
            }
        >
            <Head title="Inventory Reports" />

            <style dangerouslySetInnerHTML={{__html: `
                @media print {
                    nav, .no-print, .report-sidebar, .filters-section, header { display: none !important; }
                    body { background-color: white !important; color: black !important; }
                    .shadow-sm, .shadow-xl, .shadow-md { box-shadow: none !important; border: none !important; }
                    .main-content { width: 100% !important; max-width: 100% !important; padding: 0 !important; margin: 0 !important; }
                    .print-only { display: block !important; }
                    .print-table { border: 1px solid #e2e8f0 !important; }
                }
                .print-only { display: none; }
            `}} />

            <div className="py-8 bg-slate-50/50 min-h-screen">
                <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

                    {/* Modern Glassmorphic Segmented Control Navigation */}
                    <div className="mb-8 p-1.5 bg-slate-100/80 rounded-2xl inline-flex space-x-1 backdrop-blur-sm border border-slate-200/50 no-print">
                        <Link
                            href={route("stocks.index")}
                            className={`px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 ${
                                route().current("stocks.index")
                                    ? "bg-white text-indigo-600 shadow-sm"
                                    : "text-slate-500 hover:text-slate-800 hover:bg-white/40"
                            }`}
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                            </svg>
                            <span>Stocks List</span>
                        </Link>
                        <Link
                            href={route("stock-requests.index")}
                            className={`px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 ${
                                route().current("stock-requests.index")
                                    ? "bg-white text-indigo-600 shadow-sm"
                                    : "text-slate-500 hover:text-slate-800 hover:bg-white/40"
                            }`}
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" />
                            </svg>
                            <span>Stock Requests</span>
                        </Link>
                        <Link
                            href={route("reports.index")}
                            className={`px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 ${
                                route().current("reports.index")
                                    ? "bg-white text-indigo-600 shadow-sm"
                                    : "text-slate-500 hover:text-slate-800 hover:bg-white/40"
                            }`}
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 17v-2m3 2v-4m3 4v-6m2 10H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                            </svg>
                            <span>Analytics & Reports</span>
                        </Link>
                    </div>

                    <div className="flex flex-col md:flex-row gap-6">

                    {/* Sidebar Navigation */}
                    <div className="w-full md:w-64 flex-shrink-0 report-sidebar no-print">
                        <div className="bg-white rounded-3xl shadow-sm border border-slate-100/80 p-4 sticky top-6">
                            <h3 className="text-xs font-bold text-slate-400 uppercase tracking-widest mb-4 px-2">Report Types</h3>
                            <nav className="space-y-1">
                                <Link
                                    href={route("reports.index", { type: "system-overview" })}
                                    className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                        type === "system-overview"
                                            ? "bg-indigo-50 text-indigo-700"
                                            : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                    }`}
                                >
                                    <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
                                    </svg>
                                    Overview
                                </Link>

                                {!isHOD && (
                                    <>
                                        <Link
                                            href={route("reports.index", { type: "stock-availability" })}
                                            className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                                type === "stock-availability"
                                                    ? "bg-indigo-50 text-indigo-700"
                                                    : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                            }`}
                                        >
                                            <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4" />
                                            </svg>
                                            Availability
                                        </Link>

                                        <Link
                                            href={route("reports.index", { type: "low-stock" })}
                                            className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                                type === "low-stock"
                                                    ? "bg-indigo-50 text-indigo-700"
                                                    : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                            }`}
                                        >
                                            <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                                            </svg>
                                            Low Stock
                                        </Link>
                                    </>
                                )}

                                <Link
                                    href={route("reports.index", { type: "department" })}
                                    className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                        type === "department"
                                            ? "bg-indigo-50 text-indigo-700"
                                            : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                    }`}
                                >
                                    <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
                                    </svg>
                                    Department
                                </Link>

                                <Link
                                    href={route("reports.index", { type: "request-status" })}
                                    className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                        type === "request-status"
                                            ? "bg-indigo-50 text-indigo-700"
                                            : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                    }`}
                                >
                                    <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                    Statuses
                                </Link>

                                <Link
                                    href={route("reports.index", { type: "summary" })}
                                    className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                        type === "summary"
                                            ? "bg-indigo-50 text-indigo-700"
                                            : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                    }`}
                                >
                                    <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                    </svg>
                                    Daily Summary
                                </Link>

                                <Link
                                    href={route("reports.index", { type: "movements" })}
                                    className={`flex items-center px-4 py-3 text-xs font-extrabold rounded-2xl transition-all uppercase tracking-wider ${
                                        type === "movements"
                                            ? "bg-indigo-50 text-indigo-700"
                                            : "text-slate-600 hover:bg-slate-50 hover:text-slate-900"
                                    }`}
                                >
                                    <svg className="w-4 h-4 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4" />
                                    </svg>
                                    Movements
                                </Link>
                            </nav>
                        </div>
                    </div>

                    {/* Main Content Area */}
                    <div className="flex-1 main-content space-y-6">

                        {/* Print Header */}
                        <div className="print-only text-center mb-8 border-b border-slate-200 pb-4">
                            <h1 className="text-3xl font-extrabold tracking-tight text-slate-900">Explore ERP Inventory Report</h1>
                            <p className="text-slate-500 font-semibold mt-1">Generated on {new Date().toLocaleString()}</p>
                            <p className="text-slate-400 font-bold uppercase tracking-wider text-[10px] mt-2">Report Category: {type.replace("-", " ")}</p>
                        </div>

                        {/* Filters Panel */}
                        <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 filters-section no-print">
                            <form onSubmit={handleFilterSubmit} className="flex flex-col lg:flex-row lg:items-end gap-4">
                                {!isHOD && (
                                    <div className="flex-1">
                                        <label className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Department</label>
                                        <select
                                            value={deptId}
                                            onChange={(e) => setDeptId(e.target.value)}
                                            className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm font-semibold text-slate-700"
                                        >
                                            <option value="">All Departments</option>
                                            {(departments || []).map((dept) => (
                                                <option key={dept.id} value={dept.id}>{dept.name}</option>
                                            ))}
                                        </select>
                                    </div>
                                )}

                                <div className="flex-1">
                                    <label className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Start Date</label>
                                    <input
                                        type="date"
                                        value={startDate}
                                        onChange={(e) => setStartDate(e.target.value)}
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm font-semibold text-slate-700"
                                    />
                                </div>

                                <div className="flex-1">
                                    <label className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">End Date</label>
                                    <input
                                        type="date"
                                        value={endDate}
                                        onChange={(e) => setEndDate(e.target.value)}
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm font-semibold text-slate-700"
                                    />
                                </div>

                                <div className="flex items-center gap-2">
                                    <button
                                        type="submit"
                                        className="px-6 py-3 bg-slate-800 hover:bg-slate-900 text-white rounded-2xl text-xs font-extrabold shadow-sm transition uppercase tracking-wider"
                                    >
                                        Filter
                                    </button>
                                    <button
                                        type="button"
                                        onClick={handleReset}
                                        className="px-4 py-3 bg-slate-100 hover:bg-slate-200 text-slate-600 rounded-2xl text-xs font-extrabold transition uppercase tracking-wider"
                                    >
                                        Reset
                                    </button>
                                </div>
                            </form>
                        </div>

                        {/* Title and Download Actions */}
                        <div className="flex items-center justify-between no-print mb-4 px-1">
                            <div>
                                <h2 className="text-xl font-black text-slate-900 tracking-tight capitalize">
                                    {type.replace("-", " ")}
                                </h2>
                            </div>
                            <div className="flex items-center space-x-2">
                                <button
                                    onClick={handlePrint}
                                    className="px-4 py-2 bg-white border border-slate-200 text-slate-700 rounded-xl text-xs font-extrabold shadow-sm hover:bg-slate-500/20 transition-all flex items-center"
                                >
                                    <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M17 17h2a2 2 0 002-2v-4a2 2 0 00-2-2H5a2 2 0 00-2 2v4a2 2 0 002 2h2m2 4h6a2 2 0 002-2v-4a2 2 0 00-2-2H9a2 2 0 00-2 2v4a2 2 0 002 2zm8-12V5a2 2 0 00-2-2H9a2 2 0 00-2 2v4h10z" />
                                    </svg>
                                    Print Report
                                </button>

                                {type !== "system-overview" && (
                                    <a
                                        href={route("reports.index", {
                                            type,
                                            start_date: startDate,
                                            end_date: endDate,
                                            department_id: deptId,
                                            export: "csv"
                                        })}
                                        className="px-4 py-2 bg-indigo-600 text-white rounded-xl text-xs font-extrabold shadow-sm hover:bg-indigo-700 transition flex items-center"
                                    >
                                        <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                        </svg>
                                        Export CSV
                                    </a>
                                )}
                            </div>
                        </div>

                        {/* Report Data Container */}
                        <div className="bg-white rounded-3xl shadow-sm border border-slate-100/80 overflow-hidden print-table">

                            {/* 1. System Overview */}
                            {type === "system-overview" && (
                                <div className="p-8 grid grid-cols-1 md:grid-cols-3 gap-6">
                                    <div className="bg-gradient-to-br from-indigo-50/50 to-indigo-100/40 rounded-3xl p-6 border border-indigo-100/60 transform transition hover:scale-[1.01]">
                                        <h4 className="text-indigo-800 font-extrabold mb-4 uppercase text-[10px] tracking-wider flex items-center">
                                            <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                                            </svg>
                                            Total Stock Volume
                                        </h4>
                                        <div className="space-y-3">
                                            <div className="bg-white/75 p-3.5 rounded-2xl flex justify-between items-center">
                                                <span className="text-[10px] font-bold text-slate-400 uppercase">Unique SKUs</span>
                                                <span className="text-xl font-black text-slate-900">{data?.total_items ?? 0}</span>
                                            </div>
                                            <div className="bg-white/75 p-3.5 rounded-2xl flex justify-between items-center">
                                                <span className="text-[10px] font-bold text-slate-400 uppercase">Total Units</span>
                                                <span className="text-xl font-black text-indigo-700">{data?.total_quantity ?? 0}</span>
                                            </div>
                                        </div>
                                    </div>
 
                                    <div className="bg-gradient-to-br from-emerald-50/50 to-emerald-100/40 rounded-3xl p-6 border border-emerald-100/60 transform transition hover:scale-[1.01]">
                                        <h4 className="text-emerald-800 font-extrabold mb-4 uppercase text-[10px] tracking-wider flex items-center">
                                            <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                            Fulfillment Workflow
                                        </h4>
                                        <div className="space-y-3">
                                            <div className="bg-white/75 p-3.5 rounded-2xl flex justify-between items-center">
                                                <span className="text-[10px] font-bold text-slate-400 uppercase">Pending Requests</span>
                                                <span className="text-xl font-black text-amber-600">{data?.pending_requests ?? 0}</span>
                                            </div>
                                            <div className="bg-white/75 p-3.5 rounded-2xl flex justify-between items-center">
                                                <span className="text-[10px] font-bold text-slate-400 uppercase">Approved Requests</span>
                                                <span className="text-xl font-black text-emerald-700">{data?.approved_requests ?? 0}</span>
                                            </div>
                                        </div>
                                    </div>
 
                                    <div className="bg-gradient-to-br from-red-50/50 to-red-100/40 rounded-3xl p-6 border border-red-100/60 transform transition hover:scale-[1.01]">
                                        <h4 className="text-red-800 font-extrabold mb-4 uppercase text-[10px] tracking-wider flex items-center">
                                            <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                            Workflow Declines
                                        </h4>
                                        <div className="mt-4 bg-white/75 p-5 rounded-2xl flex justify-between items-center">
                                            <span className="text-[10px] font-bold text-slate-400 uppercase">Total Rejected</span>
                                            <span className="text-3xl font-black text-red-600">{data?.rejected_requests ?? 0}</span>
                                        </div>
                                    </div>
                                </div>
                            )}

                            {/* 2. Stock Availability & Low Stock Table */}
                            {(type === "stock-availability" || type === "low-stock") && (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead className="bg-slate-50/50">
                                            <tr>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Item Name</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">SKU Code</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Available Quantity</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Last Activity Date</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-slate-100">
                                            {(data?.data || []).length > 0 ? (
                                                (data?.data || []).map((stock) => (
                                                    <tr key={stock?.id} className="hover:bg-slate-50/50 transition">
                                                        <td className="px-6 py-4 text-sm font-extrabold text-slate-900">{stock?.name || ""}</td>
                                                        <td className="px-6 py-4 text-sm font-bold text-slate-500">{stock?.sku || "N/A"}</td>
                                                        <td className="px-6 py-4 text-center">
                                                            <span className={`inline-flex px-3 py-1 rounded-full text-xs font-black ${
                                                                (stock?.quantity ?? 0) < 10
                                                                    ? "bg-red-500/10 text-red-600 border border-red-500/10"
                                                                    : "bg-emerald-500/10 text-emerald-600 border border-emerald-500/10"
                                                            }`}>
                                                                {stock?.quantity ?? 0}
                                                            </span>
                                                        </td>
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-400">{formatDate(stock?.updated_at)}</td>
                                                    </tr>
                                                ))
                                            ) : (
                                                <tr>
                                                    <td colSpan="4" className="px-6 py-12 text-center text-slate-400 font-bold">No stock matches found under this configuration.</td>
                                                </tr>
                                            )}
                                        </tbody>
                                    </table>
                                </div>
                            )}

                            {/* 3. Department Wise Table */}
                            {type === "department" && (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead className="bg-slate-50/50">
                                            <tr>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Department Name</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Item Name</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Total Submission Count</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Sum Volume Requested</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-slate-100">
                                            {(Array.isArray(data) ? data : []).length > 0 ? (
                                                (Array.isArray(data) ? data : []).map((row, idx) => (
                                                    <tr key={idx} className="hover:bg-slate-50/50 transition">
                                                        <td className="px-6 py-4 text-sm font-extrabold text-slate-900">{row.department?.name || "Unknown"}</td>
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{row.stock?.name || "Unknown"}</td>
                                                        <td className="px-6 py-4 text-center font-bold text-slate-700">{row.total_requests}</td>
                                                        <td className="px-6 py-4 text-center">
                                                            <span className="text-sm font-black text-indigo-600 bg-indigo-50 px-3 py-1.5 rounded-xl">{row.total_items}</span>
                                                        </td>
                                                    </tr>
                                                ))
                                            ) : (
                                                <tr>
                                                    <td colSpan="4" className="px-6 py-12 text-center text-slate-400 font-bold">No records found.</td>
                                                </tr>
                                            )}
                                        </tbody>
                                    </table>
                                </div>
                            )}

                            {/* 4. Request Status Table */}
                            {type === "request-status" && (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead className="bg-slate-50/50">
                                            <tr>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Resolved Date</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Item Details</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Department</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Quantity</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">State Outcome</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-slate-100">
                                            {(data?.data || []).length > 0 ? (
                                                (data?.data || []).map((req) => (
                                                    <tr key={req.id} className="hover:bg-slate-50/50 transition">
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{formatDate(req.updated_at)}</td>
                                                        <td className="px-6 py-4 text-sm font-extrabold text-slate-900">{req.stock?.name || "N/A"}</td>
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{req.department?.name || "N/A"}</td>
                                                        <td className="px-6 py-4 text-center font-black text-slate-700">{req.quantity}</td>
                                                        <td className="px-6 py-4">
                                                            <span className={`inline-flex px-3 py-1 rounded-full text-[10px] font-black uppercase tracking-wider ${
                                                                req.status === "approved"
                                                                    ? "bg-emerald-500/10 text-emerald-600 border border-emerald-500/10"
                                                                    : "bg-red-500/10 text-red-600 border border-red-500/10"
                                                            }`}>
                                                                {req.status}
                                                            </span>
                                                        </td>
                                                    </tr>
                                                ))
                                            ) : (
                                                <tr>
                                                    <td colSpan="5" className="px-6 py-12 text-center text-slate-400 font-bold">No resolved requests matches.</td>
                                                </tr>
                                            )}
                                        </tbody>
                                    </table>
                                </div>
                            )}

                            {/* 5. Summary Table */}
                            {type === "summary" && (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead className="bg-slate-50/50">
                                            <tr>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Summary Date</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Submission Count</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Requested Quantity Sum</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Approved Quantity Sum</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-slate-100">
                                            {(Array.isArray(data) ? data : []).length > 0 ? (
                                                (Array.isArray(data) ? data : []).map((row, idx) => (
                                                    <tr key={idx} className="hover:bg-slate-50/50 transition">
                                                        <td className="px-6 py-4 text-sm font-extrabold text-slate-900">{formatDate(row.date)}</td>
                                                        <td className="px-6 py-4 text-center font-bold text-slate-600">{row.total_requests}</td>
                                                        <td className="px-6 py-4 text-center font-bold text-slate-600">{row.total_quantity}</td>
                                                        <td className="px-6 py-4 text-center font-black text-emerald-600">{row.approved_qty}</td>
                                                    </tr>
                                                ))
                                            ) : (
                                                <tr>
                                                    <td colSpan="4" className="px-6 py-12 text-center text-slate-400 font-bold">No daily logs found.</td>
                                                </tr>
                                            )}
                                        </tbody>
                                    </table>
                                </div>
                            )}

                            {/* 6. Movements Table */}
                            {type === "movements" && (
                                <div className="overflow-x-auto">
                                    <table className="w-full text-left border-collapse">
                                        <thead className="bg-slate-50/50">
                                            <tr>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Movement Timestamp</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Item Description</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Disbursed To (Dept)</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest">Authorized By</th>
                                                <th className="px-6 py-4 text-[11px] font-black text-slate-400 uppercase tracking-widest text-center">Deduction Volume</th>
                                            </tr>
                                        </thead>
                                        <tbody className="divide-y divide-slate-100">
                                            {(data?.data || []).length > 0 ? (
                                                (data?.data || []).map((move) => (
                                                    <tr key={move.id} className="hover:bg-slate-50/50 transition">
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{formatDateTime(move.updated_at)}</td>
                                                        <td className="px-6 py-4 text-sm font-extrabold text-slate-900">{move.stock?.name || "N/A"}</td>
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{move.department?.name || "N/A"}</td>
                                                        <td className="px-6 py-4 text-sm font-semibold text-slate-500">{move.user?.name || "N/A"}</td>
                                                        <td className="px-6 py-4 text-center">
                                                            <span className="inline-flex px-2.5 py-1 bg-red-50 text-red-700 text-xs font-black rounded-lg">
                                                                -{move.quantity}
                                                            </span>
                                                        </td>
                                                    </tr>
                                                ))
                                            ) : (
                                                <tr>
                                                    <td colSpan="5" className="px-6 py-12 text-center text-slate-400 font-bold">No movements recorded.</td>
                                                </tr>
                                            )}
                                        </tbody>
                                    </table>
                                </div>
                            )}

                        </div>

                        {/* Paginated components (availability, low-stock, request-status, movements) */}
                        {data?.links && data?.links?.length > 3 && (
                            <div className="px-6 py-4 bg-white border border-t-0 border-slate-100/80 rounded-b-3xl flex items-center justify-between no-print">
                                <div className="text-xs text-slate-500 font-bold uppercase tracking-wider">
                                    Showing {data?.from || 0} to {data?.to || 0} of {data?.total ?? 0} entries
                                </div>
                                <div className="flex items-center space-x-1">
                                    {(data?.links || []).map((link, idx) => (
                                        <button
                                            key={idx}
                                            disabled={!link.url || link.active}
                                            onClick={() => router.get(link.url, {
                                                type,
                                                department_id: deptId,
                                                start_date: startDate,
                                                end_date: endDate
                                            }, { preserveState: true })}
                                            className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all ${
                                                link.active
                                                    ? "bg-indigo-600 text-white shadow-sm"
                                                    : link.url
                                                    ? "text-slate-600 hover:bg-slate-200"
                                                    : "text-slate-350 cursor-not-allowed"
                                            }`}
                                            dangerouslySetInnerHTML={{ __html: link.label }}
                                        />
                                    ))}
                                </div>
                            </div>
                        )}

                    </div>

                </div>
            </div>
        </div>
        </AuthenticatedLayout>
    );
}
