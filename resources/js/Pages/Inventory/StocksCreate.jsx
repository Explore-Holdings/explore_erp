import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Head, Link, useForm } from "@inertiajs/react";

export default function StocksCreate({ auth = {} }) {
    const { data, setData, post, processing, errors } = useForm({
        name: "",
        sku: "",
        quantity: 0,
        description: "",
    });

    const handleSubmit = (e) => {
        e.preventDefault();
        post(route("stocks.store"));
    };

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
                            Add New Stock Item
                        </h2>
                    </div>
                    <div className="flex items-center space-x-2 text-sm text-slate-500 font-semibold">
                        <Link href={route("stocks.index")} className="hover:text-indigo-600 transition">Stocks</Link>
                        <span>/</span>
                        <span className="text-slate-800">Create</span>
                    </div>
                </div>
            }
        >
            <Head title="Add New Stock Item" />

            <div className="py-12 bg-slate-50/50 min-h-screen">
                <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

                    {/* Modern Glassmorphic Segmented Control Navigation */}
                    <div className="mb-8 p-1.5 bg-slate-100/80 rounded-2xl inline-flex space-x-1 backdrop-blur-sm border border-slate-200/50 no-print">
                        <Link
                            href={route("stocks.index")}
                            className={`px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 bg-white text-indigo-600 shadow-sm`}
                        >
                            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2.5" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
                            </svg>
                            <span>Stocks List</span>
                        </Link>
                        <Link
                            href={route("stock-requests.index")}
                            className="px-5 py-2.5 rounded-xl text-xs font-black uppercase tracking-wider transition-all duration-250 flex items-center space-x-2.5 text-slate-500 hover:text-slate-800 hover:bg-white/40"
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
                                <h3 className="text-xl font-bold text-slate-900">Item Specifications</h3>
                                <p className="text-sm text-slate-500">Enter the details of the new inventory item below.</p>
                            </div>

                            <form onSubmit={handleSubmit} className="space-y-6">
                                <div>
                                    <label htmlFor="name" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Item Name *</label>
                                    <input
                                        type="text"
                                        id="name"
                                        value={data.name}
                                        onChange={(e) => setData("name", e.target.value)}
                                        required
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                        placeholder="e.g. Laser Printer Paper A4"
                                    />
                                    {errors.name && <p className="text-red-500 text-xs mt-1 font-bold">{errors.name}</p>}
                                </div>

                                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                                    <div>
                                        <label htmlFor="sku" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">SKU / Code</label>
                                        <input
                                            type="text"
                                            id="sku"
                                            value={data.sku}
                                            onChange={(e) => setData("sku", e.target.value)}
                                            className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                            placeholder="e.g. STK-001"
                                        />
                                        {errors.sku && <p className="text-red-500 text-xs mt-1 font-bold">{errors.sku}</p>}
                                    </div>
                                    <div>
                                        <label htmlFor="quantity" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Initial Quantity *</label>
                                        <input
                                            type="number"
                                            id="quantity"
                                            value={data.quantity}
                                            onChange={(e) => setData("quantity", parseInt(e.target.value) || 0)}
                                            required
                                            min="0"
                                            className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                        />
                                        {errors.quantity && <p className="text-red-500 text-xs mt-1 font-bold">{errors.quantity}</p>}
                                    </div>
                                </div>

                                <div>
                                    <label htmlFor="description" className="block text-xs font-bold text-slate-400 uppercase tracking-widest mb-2">Detailed Description</label>
                                    <textarea
                                        id="description"
                                        rows="4"
                                        value={data.description}
                                        onChange={(e) => setData("description", e.target.value)}
                                        className="block w-full px-4 py-3 rounded-2xl border border-slate-200 bg-slate-50 focus:ring-2 focus:ring-indigo-500 focus:bg-white focus:outline-none transition-all duration-200 text-sm"
                                        placeholder="Provide additional details about this item..."
                                    ></textarea>
                                    {errors.description && <p className="text-red-500 text-xs mt-1 font-bold">{errors.description}</p>}
                                </div>

                                <div className="flex items-center justify-end space-x-4 pt-6 border-t border-slate-100">
                                    <Link href={route("stocks.index")} className="text-sm font-bold text-slate-400 hover:text-slate-600 transition">Cancel</Link>
                                    <button
                                        type="submit"
                                        disabled={processing}
                                        className="inline-flex items-center px-8 py-3 bg-indigo-600 text-white rounded-2xl text-sm font-bold shadow-md hover:bg-indigo-700 hover:shadow-indigo-100 transition-all transform hover:-translate-y-0.5"
                                    >
                                        Add Item to Stock
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
