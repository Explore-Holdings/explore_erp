import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router } from "@inertiajs/react";

export default function StockRequestsIndex({ auth = {}, requests = { data: [] }, roleName = "", stats = {}, filters = {}, flash = {} }) {
    const handleStatusFilter = (status) => {
        router.get(route("stock-requests.index"), { status }, { preserveState: true });
    };

    const handleHODApprove = (id) => {
        router.post(route("stock-requests.hod-approve", id));
    };

    const handleHODReject = (id) => {
        router.post(route("stock-requests.hod-reject", id));
    };

    const handleManagerApprove = (id) => {
        router.post(route("stock-requests.approve", id));
    };

    const handleManagerReject = (id) => {
        router.post(route("stock-requests.reject", id));
    };

    const handleDelete = (id) => {
        if (confirm("Are you sure you want to permanently delete this request?")) {
            router.delete(route("stock-requests.destroy", id));
        }
    };

    const currentStatus = filters?.status || "";
    const activeRole = (roleName || "").toLowerCase();
    const isAdmin = activeRole === "admin";
    const isHOD = activeRole === "hod";
    const isManager = activeRole === "inventory manager";

    return (
        <AuthenticatedLayout
            user={auth?.user}
            header={
                <div className="flex items-center justify-between">
                    <div className="flex items-center space-x-3">
                        <button onClick={() => window.history.back()} className="inline-flex items-center justify-center w-8 h-8 rounded-xl bg-slate-100 hover:bg-indigo-100 text-slate-500 hover:text-indigo-600 transition-all duration-200" title="Go back">
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M15 19l-7-7 7-7" /></svg>
                        </button>
                        <h2 className="font-extrabold text-2xl text-slate-800 tracking-tight leading-tight">
                            Stock Requests Workflow
                        </h2>
                    </div>
                    <div className="flex items-center space-x-2 text-sm text-slate-500 font-semibold">
                        <Link href={route("suite-services")} className="hover:text-indigo-600 transition">Dashboard</Link>
                        <span>/</span>
                        <span className="text-slate-800">Requests</span>
                    </div>
                </div>
            }
        >
            <Head title="Stock Requests" />

            <div className="py-10 bg-slate-50/50 min-h-screen">
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

                    {/* Flash Success Notification */}
                    {flash?.success && (
                        <div className="mb-6 bg-emerald-50 border border-emerald-200 text-emerald-800 px-5 py-4 rounded-2xl flex items-center shadow-sm animate-fade-in">
                            <svg className="w-5 h-5 mr-3 text-emerald-500 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                            <p className="font-bold text-sm">{flash.success}</p>
                        </div>
                    )}

                    {flash?.error && (
                        <div className="mb-6 bg-red-50 border border-red-200 text-red-800 px-5 py-4 rounded-2xl flex items-center shadow-sm animate-fade-in">
                            <svg className="w-5 h-5 mr-3 text-red-500 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                            </svg>
                            <p className="font-bold text-sm">{flash.error}</p>
                        </div>
                    )}

                    {/* Stats Dashboard */}
                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-6 mb-8">
                        <div className="bg-white p-5 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] duration-300">
                            <div className="flex items-center justify-between mb-3">
                                <div className="p-3 bg-indigo-50 rounded-2xl text-indigo-600">
                                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2H9M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
                                    </svg>
                                </div>
                            </div>
                            <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Total</div>
                            <div className="text-3xl font-black text-slate-900">{stats?.total_requests || 0}</div>
                        </div>

                        <div className="bg-white p-5 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] duration-300">
                            <div className="flex items-center justify-between mb-3">
                                <div className="p-3 bg-orange-50 rounded-2xl text-orange-600">
                                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                </div>
                            </div>
                            <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Pending HOD</div>
                            <div className="text-3xl font-black text-orange-600">{stats?.pending_hod || 0}</div>
                        </div>

                        <div className="bg-white p-5 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] duration-300">
                            <div className="flex items-center justify-between mb-3">
                                <div className="p-3 bg-amber-50 rounded-2xl text-amber-600">
                                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                </div>
                            </div>
                            <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Pending Manager</div>
                            <div className="text-3xl font-black text-amber-600">{stats?.pending_manager || 0}</div>
                        </div>

                        <div className="bg-white p-5 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] duration-300">
                            <div className="flex items-center justify-between mb-3">
                                <div className="p-3 bg-emerald-50 rounded-2xl text-emerald-600">
                                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                </div>
                            </div>
                            <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Approved</div>
                            <div className="text-3xl font-black text-emerald-600">{stats?.approved || 0}</div>
                        </div>

                        <div className="bg-white p-5 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] duration-300">
                            <div className="flex items-center justify-between mb-3">
                                <div className="p-3 bg-red-50 rounded-2xl text-red-600">
                                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                </div>
                            </div>
                            <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Rejected</div>
                            <div className="text-3xl font-black text-red-600">{stats?.rejected || 0}</div>
                        </div>
                    </div>

                    {/* Filter Tabs and Request Action */}
                    <div className="bg-white p-4 rounded-3xl shadow-sm border border-slate-100/80 mb-8 flex flex-col sm:flex-row items-center justify-between gap-4">
                        <div className="flex flex-wrap items-center bg-slate-50 border border-slate-100 p-1.5 rounded-2xl gap-1">
                            <button
                                onClick={() => handleStatusFilter("")}
                                className={`px-5 py-2.5 rounded-xl text-xs font-extrabold transition-all uppercase tracking-wider ${
                                    !currentStatus
                                        ? "bg-white shadow-sm text-indigo-600 border border-slate-100"
                                        : "text-slate-500 hover:text-slate-800"
                                }`}
                            >
                                All
                            </button>
                            <button
                                onClick={() => handleStatusFilter("pending_hod")}
                                className={`px-5 py-2.5 rounded-xl text-xs font-extrabold transition-all uppercase tracking-wider ${
                                    currentStatus === "pending_hod"
                                        ? "bg-white shadow-sm text-orange-600 border border-slate-100"
                                        : "text-slate-500 hover:text-slate-800"
                                }`}
                            >
                                Pending HOD
                            </button>
                            <button
                                onClick={() => handleStatusFilter("pending_manager")}
                                className={`px-5 py-2.5 rounded-xl text-xs font-extrabold transition-all uppercase tracking-wider ${
                                    currentStatus === "pending_manager"
                                        ? "bg-white shadow-sm text-amber-600 border border-slate-100"
                                        : "text-slate-500 hover:text-slate-800"
                                }`}
                            >
                                Pending Manager
                            </button>
                            <button
                                onClick={() => handleStatusFilter("approved")}
                                className={`px-5 py-2.5 rounded-xl text-xs font-extrabold transition-all uppercase tracking-wider ${
                                    currentStatus === "approved"
                                        ? "bg-white shadow-sm text-emerald-600 border border-slate-100"
                                        : "text-slate-500 hover:text-slate-800"
                                }`}
                            >
                                Approved
                            </button>
                            <button
                                onClick={() => handleStatusFilter("rejected")}
                                className={`px-5 py-2.5 rounded-xl text-xs font-extrabold transition-all uppercase tracking-wider ${
                                    currentStatus === "rejected"
                                        ? "bg-white shadow-sm text-red-600 border border-slate-100"
                                        : "text-slate-500 hover:text-slate-800"
                                }`}
                            >
                                Rejected
                            </button>
                        </div>

                        <Link
                            href={route("stock-requests.create")}
                            className="inline-flex items-center px-6 py-3 border border-transparent text-sm font-extrabold rounded-2xl shadow-md text-white bg-indigo-600 hover:bg-indigo-700 transition-all transform hover:-translate-y-0.5"
                        >
                            <svg className="-ml-1 mr-2 h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
                            New Request
                        </Link>
                    </div>

                    {/* Table View */}
                    <div className="bg-white rounded-3xl shadow-sm border border-slate-100/80 overflow-hidden">
                        <div className="overflow-x-auto">
                            <table className="min-w-full divide-y divide-slate-200">
                                <thead className="bg-slate-50/50">
                                    <tr>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Requested Item</th>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Requester Details</th>
                                        <th scope="col" className="px-6 py-4 text-center text-[11px] font-black text-slate-400 uppercase tracking-widest">Quantity</th>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Status</th>
                                        <th scope="col" className="px-6 py-4 text-right text-[11px] font-black text-slate-400 uppercase tracking-widest">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="bg-white divide-y divide-slate-100">
                                    {(requests?.data || []).length > 0 ? (
                                        (requests?.data || []).map((request) => {
                                            const isRequestHOD = request?.user?.hod_id === auth?.user?.id;
                                            const inUserDept = request?.department_id === auth?.user?.department_id;

                                            return (
                                                <tr key={request.id} className="hover:bg-slate-50/80 transition-colors duration-200">
                                                    <td className="px-6 py-4 whitespace-nowrap">
                                                        <div className="flex items-center">
                                                            <div className="h-10 w-10 flex-shrink-0 bg-gradient-to-br from-indigo-50 to-indigo-100/80 rounded-2xl flex items-center justify-center text-indigo-700 font-extrabold text-lg">
                                                                {(request.stock?.name || "?").charAt(0).toUpperCase()}
                                                            </div>
                                                            <div className="ml-4">
                                                                <div className="text-sm font-extrabold text-slate-900">{request.stock?.name || "N/A"}</div>
                                                                <div className="text-[10px] text-slate-400 font-bold">REQ: #{String(request.id).padStart(4, '0')}</div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td className="px-6 py-4 whitespace-nowrap">
                                                        <div className="text-sm font-extrabold text-slate-800">{request.user?.name || "N/A"}</div>
                                                        <div className="text-[9px] text-slate-400 font-bold uppercase tracking-wider">{request.department?.name || "N/A"}</div>
                                                    </td>
                                                    <td className="px-6 py-4 whitespace-nowrap text-center">
                                                        <span className="text-base font-black text-slate-900">{request.quantity}</span>
                                                    </td>
                                                    <td className="px-6 py-4 whitespace-nowrap">
                                                        <div className="flex flex-col">
                                                            {request.status === 'approved' && (
                                                                <span className="inline-flex items-center w-fit px-3 py-1 rounded-full text-[9px] font-extrabold bg-emerald-500/10 text-emerald-600 border border-emerald-500/10 uppercase tracking-widest">
                                                                    Approved
                                                                </span>
                                                            )}
                                                            {request.status === 'rejected' && (
                                                                <span className="inline-flex items-center w-fit px-3 py-1 rounded-full text-[9px] font-extrabold bg-red-500/10 text-red-600 border border-red-500/10 uppercase tracking-widest">
                                                                    Rejected
                                                                </span>
                                                            )}
                                                            {request.status === 'pending_hod' && (
                                                                <span className="inline-flex items-center w-fit px-3 py-1 rounded-full text-[9px] font-extrabold bg-orange-500/10 text-orange-600 border border-orange-500/10 uppercase tracking-widest animate-pulse">
                                                                    Pending HOD
                                                                </span>
                                                            )}
                                                            {request.status === 'pending_manager' && (
                                                                <span className="inline-flex items-center w-fit px-3 py-1 rounded-full text-[9px] font-extrabold bg-amber-500/10 text-amber-600 border border-amber-500/10 uppercase tracking-widest animate-pulse">
                                                                    Pending Manager
                                                                </span>
                                                            )}
                                                            
                                                            {(request?.hod_approver?.name || request?.hodApprover?.name) && (
                                                                <span className="text-[9px] text-slate-400 mt-1 font-bold">Approved by HOD: {request.hod_approver?.name || request.hodApprover?.name}</span>
                                                            )}
                                                        </div>
                                                    </td>
                                                    <td className="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                                        <div className="flex items-center justify-end space-x-2">
                                                            {/* HOD Approvals: if pending HOD and matching HOD */}
                                                            {request.status === 'pending_hod' && (isHOD && inUserDept || isAdmin) && (
                                                                <>
                                                                    <button
                                                                        onClick={() => handleHODApprove(request.id)}
                                                                        className="px-3 py-1.5 bg-orange-600 hover:bg-orange-700 text-white rounded-xl text-xs font-bold transition shadow-sm"
                                                                    >
                                                                        HOD Approve
                                                                    </button>
                                                                    <button
                                                                        onClick={() => handleHODReject(request.id)}
                                                                        className="px-3 py-1.5 bg-red-500 hover:bg-red-600 text-white rounded-xl text-xs font-bold transition shadow-sm"
                                                                    >
                                                                        Reject
                                                                    </button>
                                                                </>
                                                            )}

                                                            {/* Manager Approvals: if pending Manager and matching Manager */}
                                                            {request.status === 'pending_manager' && (isManager || isAdmin) && (
                                                                <>
                                                                    <button
                                                                        onClick={() => handleManagerApprove(request.id)}
                                                                        className="px-3 py-1.5 bg-emerald-600 hover:bg-emerald-700 text-white rounded-xl text-xs font-bold transition shadow-sm"
                                                                    >
                                                                        Approve
                                                                    </button>
                                                                    <button
                                                                        onClick={() => handleManagerReject(request.id)}
                                                                        className="px-3 py-1.5 bg-red-500 hover:bg-red-600 text-white rounded-xl text-xs font-bold transition shadow-sm"
                                                                    >
                                                                        Reject
                                                                    </button>
                                                                </>
                                                            )}

                                                            {/* Admin standard CRUD options */}
                                                            {isAdmin && (
                                                                <>
                                                                    <Link
                                                                        href={route("stock-requests.edit", request.id)}
                                                                        className="text-indigo-600 hover:text-indigo-900 font-extrabold text-xs bg-indigo-50 hover:bg-indigo-100 px-3 py-1.5 rounded-xl transition"
                                                                    >
                                                                        Edit
                                                                    </Link>
                                                                    <button
                                                                        onClick={() => handleDelete(request.id)}
                                                                        className="text-red-500 hover:text-red-700 font-extrabold text-xs bg-red-50 hover:bg-red-100 px-3 py-1.5 rounded-xl transition"
                                                                    >
                                                                        Delete
                                                                    </button>
                                                                </>
                                                            )}

                                                            {/* No permissions fall-through */}
                                                            {!isAdmin && request.status !== 'pending_hod' && request.status !== 'pending_manager' && (
                                                                <span className="text-slate-400 text-xs italic font-semibold">—</span>
                                                            )}
                                                        </div>
                                                    </td>
                                                </tr>
                                            );
                                        })
                                    ) : (
                                        <tr>
                                            <td colSpan="5" className="px-6 py-20 text-center">
                                                <div className="flex flex-col items-center">
                                                    <div className="p-4 bg-slate-50 rounded-full mb-4">
                                                        <svg className="h-12 w-12 text-slate-350" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="1.5" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
                                                        </svg>
                                                    </div>
                                                    <h3 className="text-lg font-extrabold text-slate-900 font-black">No Requests Found</h3>
                                                    <p className="text-slate-400 text-sm max-w-xs mt-1">There are no outstanding requests under the selected workflow filter.</p>
                                                </div>
                                            </td>
                                        </tr>
                                    )}
                                </tbody>
                            </table>
                        </div>

                        {/* Pagination Links */}
                        {requests?.links && (requests?.links || []).length > 3 && (
                            <div className="px-6 py-4 bg-slate-50 border-t border-slate-100/80 flex items-center justify-between">
                                <div className="text-xs text-slate-500 font-bold uppercase tracking-wider">
                                    Showing {requests?.from || 0} to {requests?.to || 0} of {requests?.total || 0} requests
                                </div>
                                <div className="flex items-center space-x-1">
                                    {(requests?.links || []).map((link, idx) => (
                                        <button
                                            key={idx}
                                            disabled={!link?.url || link?.active}
                                            onClick={() => router.get(link?.url, { status: currentStatus })}
                                            className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all ${
                                                link?.active
                                                    ? "bg-indigo-600 text-white shadow-sm"
                                                    : link?.url
                                                    ? "text-slate-600 hover:bg-slate-200"
                                                    : "text-slate-350 cursor-not-allowed"
                                            }`}
                                            dangerouslySetInnerHTML={{ __html: link?.label }}
                                        />
                                    ))}
                                </div>
                            </div>
                        )}
                    </div>

                </div>
            </div>
        </AuthenticatedLayout>
    );
}
