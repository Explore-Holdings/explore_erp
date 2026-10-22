import React, { useState, useEffect, useRef } from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, router } from "@inertiajs/react";

export default function StocksIndex({ auth = {}, stocks = { data: [] }, stats = {}, filters = {}, flash = {} }) {
    const [search, setSearch] = useState(
        filters && typeof filters === "object" && !Array.isArray(filters) && typeof filters.search === "string"
            ? filters.search
            : ""
    );
    const [filter, setFilter] = useState(
        filters && typeof filters === "object" && !Array.isArray(filters) && typeof filters.filter === "string"
            ? filters.filter
            : ""
    );
    const [showSuccess, setShowSuccess] = useState(!!flash?.success);

    useEffect(() => {
        if (flash?.success) {
            setShowSuccess(true);
            const timer = setTimeout(() => {
                setShowSuccess(false);
            }, 2000);
        } else {
            setShowSuccess(false);
        }
    }, [flash?.success]);

    const isFirstRender = useRef(true);
    useEffect(() => {
        if (isFirstRender.current) {
            isFirstRender.current = false;
            return;
        }
        const delayDebounceFn = setTimeout(() => {
            router.get(route("stocks.index"), { search, filter }, { preserveState: true, replace: true });
        }, 300);

        return () => clearTimeout(delayDebounceFn);
    }, [search]);

    const handleSearchSubmit = (e) => {
        if (e) e.preventDefault();
        router.get(route("stocks.index"), { search, filter }, { preserveState: true });
    };

    const handleFilterChange = (newFilter) => {
        setFilter(newFilter);
        router.get(route("stocks.index"), { search, filter: newFilter }, { preserveState: true });
    };

    const handleDelete = (id) => {
        if (confirm("Are you sure you want to permanently delete this item?")) {
            router.delete(route("stocks.destroy", id));
        }
    };

    const roleName = auth?.user?.role || "";
    const roleLower = roleName.toLowerCase();
    const isAdminOrManager = ["admin", "inventory manager", "inventory-manager", "inventory_manager"].includes(roleLower);
    const isHod = roleLower.includes("hod") || roleLower.includes("head");
    const showAnalyticsReports = isAdminOrManager || isHod;
    const hideAnalyticsReports = !showAnalyticsReports;

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
                            Inventory Stocks
                        </h2>
                    </div>
                    <div className="flex items-center space-x-2 text-sm text-slate-500 font-semibold">
                        <Link href={route("suite-services")} className="hover:text-indigo-600 transition">Home</Link>
                        <span>/</span>
                        <Link href={route("stocks.dashboard")} className="hover:text-indigo-600 transition">Inventory</Link>
                        <span>/</span>
                        <span className="text-slate-800">Stocks</span>
                    </div>
                </div>
            }
        >
            <Head title="Inventory Stocks" />

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
                        {!hideAnalyticsReports && (
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
                        )}
                    </div>

                    {/* Flash Success Notification */}
                    {showSuccess && flash?.success && (
                        <div className="mb-6 bg-emerald-50 border border-emerald-200 text-emerald-800 px-5 py-4 rounded-2xl flex items-center shadow-sm animate-fade-in">
                            <svg className="w-5 h-5 mr-3 text-emerald-500 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                            <p className="font-bold text-sm">{flash.success}</p>
                        </div>
                    )}

                    {!hideAnalyticsReports && (
                        <>
                            {/* Statistics Cards */}
                            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                                <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] hover:shadow-md duration-300">
                                    <div className="flex items-center justify-between mb-4">
                                        <div className="p-3.5 bg-emerald-50 rounded-2xl text-emerald-600">
                                            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                                            </svg>
                                        </div>
                                        <span className="text-[10px] font-extrabold text-emerald-600 bg-emerald-50 px-2.5 py-1 rounded-full uppercase tracking-wider">Active</span>
                                    </div>
                                    <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Total Items</div>
                                    <div className="text-3xl font-black text-slate-900">{stats?.total_items ?? 0}</div>
                                </div>

                                <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] hover:shadow-md duration-300">
                                    <div className="flex items-center justify-between mb-4">
                                        <div className="p-3.5 bg-blue-50 rounded-2xl text-blue-600">
                                            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2" />
                                            </svg>
                                        </div>
                                        <span className="text-[10px] font-extrabold text-blue-600 bg-blue-50 px-2.5 py-1 rounded-full uppercase tracking-wider">Stock Qty</span>
                                    </div>
                                    <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Stock Volume</div>
                                    <div className="text-3xl font-black text-slate-900">{stats?.total_quantity ?? 0}</div>
                                </div>

                                <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] hover:shadow-md duration-300">
                                    <div className="flex items-center justify-between mb-4">
                                        <div className="p-3.5 bg-amber-50 rounded-2xl text-amber-600">
                                            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                                            </svg>
                                        </div>
                                        <span className="text-[10px] font-extrabold text-amber-600 bg-amber-50 px-2.5 py-1 rounded-full uppercase tracking-wider">Warning</span>
                                    </div>
                                    <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Low Stock</div>
                                    <div className="text-3xl font-black text-slate-900">{stats?.low_stock ?? 0}</div>
                                </div>

                                <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 transform transition hover:scale-[1.02] hover:shadow-md duration-300">
                                    <div className="flex items-center justify-between mb-4">
                                        <div className="p-3.5 bg-red-50 rounded-2xl text-red-600">
                                            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M18.364 18.364A9 9 0 005.636 5.636m12.728 12.728A9 9 0 015.636 5.636m12.728 12.728L5.636 5.636" />
                                            </svg>
                                        </div>
                                        <span className="text-[10px] font-extrabold text-red-600 bg-red-50 px-2.5 py-1 rounded-full uppercase tracking-wider">Critical</span>
                                    </div>
                                    <div className="text-slate-400 text-xs font-bold uppercase tracking-widest mb-1">Out of Stock</div>
                                    <div className="text-3xl font-black text-slate-900">{stats?.out_of_stock ?? 0}</div>
                                </div>
                            </div>
                        </>
                    )}

                    {/* Actions, Search, & Filters */}
                    <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100/80 mb-8">
                        <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
                            
                            <form onSubmit={handleSearchSubmit} className="flex-1 max-w-lg relative group">
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none text-slate-400">
                                    <svg className="h-5 w-5 transition-colors group-focus-within:text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                                    </svg>
                                </div>
                                <input
                                    type="text"
                                    value={search}
                                    onChange={(e) => setSearch(e.target.value)}
                                    placeholder="Search by name or SKU..."
                                    className="block w-full pl-10 pr-4 py-3 border border-slate-200 rounded-2xl bg-slate-500/30 placeholder-slate-400 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:bg-white transition-all duration-200"
                                />
                            </form>

                            <div className="flex items-center space-x-3">
                                <select
                                    value={filter}
                                    onChange={(e) => handleFilterChange(e.target.value)}
                                    className="block px-4 py-3 border border-slate-200 bg-slate-50/50 rounded-2xl text-sm font-semibold text-slate-700 focus:ring-2 focus:ring-indigo-500 focus:outline-none transition-all duration-200"
                                >
                                    <option value="">All Inventory</option>
                                    <option value="low-stock">Low Stock Items</option>
                                    <option value="out-of-stock">Out of Stock Items</option>
                                </select>

                                {isAdminOrManager && (
                                    <Link
                                        href={route("stocks.create")}
                                        className="inline-flex items-center px-5 py-3 border border-transparent text-sm font-extrabold rounded-2xl shadow-md text-white bg-indigo-600 hover:bg-indigo-700 transition-all transform hover:-translate-y-0.5"
                                    >
                                        <svg className="-ml-1 mr-2 h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                                        </svg>
                                        Add New Item
                                    </Link>
                                )}
                            </div>
                        </div>
                    </div>

                    {/* Table View */}
                    <div className="bg-white rounded-3xl shadow-sm border border-slate-100/80 overflow-hidden">
                        <div className="overflow-x-auto">
                            <table className="min-w-full divide-y divide-slate-200">
                                <thead className="bg-slate-50/50">
                                    <tr>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Item Details</th>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">SKU</th>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Current Stock</th>
                                        <th scope="col" className="px-6 py-4 text-left text-[11px] font-black text-slate-400 uppercase tracking-widest">Status</th>
                                        <th scope="col" className="px-6 py-4 text-right text-[11px] font-black text-slate-400 uppercase tracking-widest">Actions</th>
                                    </tr>
                                </thead>
                                <tbody className="bg-white divide-y divide-slate-100">
                                    {(stocks?.data || []).length > 0 ? (
                                        (stocks?.data || []).map((stock) => (
                                            <tr key={stock?.id} className="hover:bg-slate-50/80 transition-colors duration-250">
                                                <td className="px-6 py-4 whitespace-nowrap">
                                                    <div className="flex items-center">
                                                        <div className="h-10 w-10 flex-shrink-0 bg-gradient-to-br from-indigo-50 to-indigo-100/80 rounded-2xl flex items-center justify-center text-indigo-700 font-extrabold text-lg">
                                                            {(stock?.name || "?").charAt(0).toUpperCase()}
                                                        </div>
                                                        <div className="ml-4">
                                                            <div className="text-sm font-extrabold text-slate-900">{stock?.name || ""}</div>
                                                            <div className="text-[10px] text-slate-400 font-bold">ID: #{String(stock?.id || 0).padStart(4, '0')}</div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap">
                                                    <span className="px-2.5 py-1 bg-slate-100 text-slate-700 text-xs font-bold rounded-lg tracking-wide">{stock?.sku || "N/A"}</span>
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap">
                                                    <div className="text-sm font-black text-slate-900">{stock?.quantity ?? 0}</div>
                                                    <div className="text-[9px] text-slate-400 font-bold uppercase tracking-wider">Units available</div>
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap">
                                                    {(stock?.quantity ?? 0) === 0 ? (
                                                        <span className="inline-flex items-center px-3 py-1 rounded-full text-[10px] font-extrabold bg-red-500/10 text-red-600 border border-red-500/10 uppercase tracking-wider">
                                                            Out of Stock
                                                        </span>
                                                    ) : (stock?.quantity ?? 0) < 10 ? (
                                                        <span className="inline-flex items-center px-3 py-1 rounded-full text-[10px] font-extrabold bg-amber-500/10 text-amber-600 border border-amber-500/10 uppercase tracking-wider">
                                                            Low Stock
                                                        </span>
                                                    ) : (
                                                        <span className="inline-flex items-center px-3 py-1 rounded-full text-[10px] font-extrabold bg-emerald-500/10 text-emerald-600 border border-emerald-500/10 uppercase tracking-wider">
                                                            In Stock
                                                        </span>
                                                    )}
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                                    <div className="flex items-center justify-end space-x-3">
                                                        {isAdminOrManager && (
                                                            <>
                                                                <Link href={route("stocks.edit", stock?.id || 0)} className="text-indigo-600 hover:text-indigo-900 font-bold transition">Edit</Link>
                                                                <button onClick={() => handleDelete(stock?.id || 0)} className="text-red-500 hover:text-red-700 font-bold transition">Delete</button>
                                                            </>
                                                        )}
                                                        {(stock?.quantity ?? 0) > 0 && (
                                                            <Link
                                                                href={route("stock-requests.create", { stock_id: stock?.id || 0 })}
                                                                className="inline-flex items-center px-3.5 py-1.5 bg-emerald-50 text-emerald-700 rounded-xl hover:bg-emerald-100 transition font-bold text-xs"
                                                            >
                                                                Request
                                                            </Link>
                                                        )}
                                                    </div>
                                                </td>
                                            </tr>
                                        ))
                                    ) : (
                                        <tr>
                                            <td colSpan="5" className="px-6 py-20 text-center">
                                                <div className="flex flex-col items-center">
                                                    <div className="p-4 bg-slate-50 rounded-full mb-4">
                                                        <svg className="h-12 w-12 text-slate-350" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="1.5" d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4" />
                                                        </svg>
                                                    </div>
                                                    <h3 className="text-lg font-extrabold text-slate-900">No Inventory Found</h3>
                                                    <p className="text-slate-400 text-sm max-w-xs mt-1">We couldn't find any stock items matching your criteria. Try adjusting your filter parameters.</p>
                                                </div>
                                            </td>
                                        </tr>
                                    )}
                                </tbody>
                            </table>
                        </div>

                        {/* Pagination Links */}
                        {stocks?.links && (stocks?.links || []).length > 3 && (
                            <div className="px-6 py-4 bg-slate-50 border-t border-slate-100/80 flex items-center justify-between">
                                <div className="text-xs text-slate-500 font-bold uppercase tracking-wider">
                                    Showing {stocks?.from || 0} to {stocks?.to || 0} of {stocks?.total || 0} items
                                </div>
                                <div className="flex items-center space-x-1">
                                    {(stocks?.links || []).map((link, idx) => (
                                        <button
                                            key={idx}
                                            disabled={!link?.url || link?.active}
                                            onClick={() => router.get(link?.url, { search, filter })}
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
