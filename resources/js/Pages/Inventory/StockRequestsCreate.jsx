import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, useForm } from "@inertiajs/react";

export default function StockRequestsCreate({ auth = {}, stocks = [], selectedStockId = null }) {
    const { data, setData, post, processing, errors } = useForm({
        stock_id: selectedStockId || "",
        quantity: 1,
        employee_id: auth?.user?.employee_id || "",
    });

    const handleSubmit = (e) => {
        e.preventDefault();
        post(route("stock-requests.store"));
    };

    // Find the currently selected stock item to show remaining units
    const currentStockItem = (stocks || []).find((s) => s && String(s.id) === String(data.stock_id));

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
                            New Stock Request
                        </h2>
                    </div>
                    <div className="flex items-center space-x-2 text-sm text-slate-500 font-semibold">
                        <Link href={route("stock-requests.index")} className="hover:text-indigo-600 transition">Requests</Link>
                        <span>/</span>
                        <span className="text-slate-800">New</span>
                    </div>
                </div>
            }
        >
            <Head title="New Stock Request" />

            <div className="py-12 bg-slate-50/50 min-h-screen">
                <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

                    {/* Modern Glassmorphic Segmented Control Navigation */}
                    <div className="mb-8 p-1.5 bg-slate-100/80 rounded-2xl inline-flex space-x-1 backdrop-blur-sm border border-slate-200/50 no-print">
                        <Link
                            href={route("stocks.index")}
                            className="px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 text-slate-500 hover:text-slate-800 hover:bg-white/40"
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                            </svg>
                            <span>Stocks List</span>
                        </Link>
                        <Link
                            href={route("stock-requests.index")}
                            className={`px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 bg-white text-indigo-600 shadow-sm`}
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" />
                            </svg>
                            <span>Stock Requests</span>
                        </Link>
                        <Link
                            href={route("reports.index")}
                            className="px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 text-slate-500 hover:text-slate-800 hover:bg-white/40"
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M9 17v-2m3 2v-4m3 4v-6m2 10H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                            </svg>
                            <span>Analytics & Reports</span>
                        </Link>
                    </div>

                <div className="max-w-2xl mx-auto">
                    <div className="bg-white rounded-3xl shadow-sm border border-slate-100 overflow-hidden transform transition duration-300">
                        <div className="p-8">
                            <div className="mb-8">
                                <h3 className="text-xl font-bold text-slate-900">Request Details</h3>
                                <p className="text-sm text-slate-500">Select an item and specify the quantity you need for your department.</p>
                            </div>

                            <form onSubmit={handleSubmit} className="space-y-6">
                                <div>
                                    <label htmlFor="stock_id" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Inventory Item *</label>
                                    <select
                                        id="stock_id"
                                        value={data.stock_id}
                                        onChange={(e) => setData("stock_id", e.target.value)}
                                        required
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                    >
                                        <option value="">Select an item...</option>
                                        {(stocks || []).map((stock) => (
                                            <option key={stock?.id} value={stock?.id}>
                                                {stock?.name} (Available: {stock?.quantity ?? 0})
                                            </option>
                                        ))}
                                    </select>
                                    {errors.stock_id && <p className="text-red-500 text-xs mt-1 font-bold">{errors.stock_id}</p>}
                                </div>

                                <div>
                                    <label htmlFor="quantity" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Requested Quantity *</label>
                                    <input
                                        type="number"
                                        id="quantity"
                                        value={data.quantity}
                                        onChange={(e) => setData("quantity", parseInt(e.target.value) || 1)}
                                        required
                                        min="1"
                                        max={currentStockItem ? (currentStockItem?.quantity ?? 0) : undefined}
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                        placeholder="Enter amount needed..."
                                    />
                                    {errors.quantity && <p className="text-red-500 text-xs mt-1 font-bold">{errors.quantity}</p>}
                                    {currentStockItem && (
                                        <p className="text-[11px] text-slate-400 font-semibold mt-1.5">
                                            Max available for this item: <span className="font-extrabold text-indigo-600">{currentStockItem?.quantity ?? 0} units</span>.
                                        </p>
                                    )}
                                </div>

                                <div className="bg-indigo-50/50 p-5 rounded-2xl border border-indigo-100/50 mb-4 flex items-start">
                                    <div className="flex-shrink-0 text-indigo-500 mt-0.5">
                                        <svg className="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                    </div>
                                    <div className="ml-3">
                                        <p className="text-xs text-indigo-700 font-bold leading-relaxed">
                                            Workflow Notification
                                        </p>
                                        <p className="text-[11px] text-indigo-600/80 font-semibold mt-0.5 leading-normal">
                                            Your request will be submitted to the HOD for approval, then forwarded to the Inventory Manager. You will be notified of all transitions.
                                        </p>
                                    </div>
                                </div>

                                <div className="flex items-center justify-end space-x-4 pt-6 border-t border-slate-100">
                                    <Link href={route("stock-requests.index")} className="text-sm font-bold text-slate-400 hover:text-slate-600 transition">Cancel</Link>
                                    <button
                                        type="submit"
                                        disabled={processing || (currentStockItem && data.quantity > (currentStockItem?.quantity ?? 0))}
                                        className={`inline-flex items-center px-8 py-3 rounded-2xl text-sm font-bold shadow-md transition-all transform hover:-translate-y-0.5 ${
                                            currentStockItem && data.quantity > (currentStockItem?.quantity ?? 0)
                                                ? "bg-slate-300 text-slate-500 cursor-not-allowed"
                                                : "bg-indigo-600 text-white hover:bg-indigo-700 hover:shadow-indigo-100"
                                        }`}
                                    >
                                        Submit Request
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
