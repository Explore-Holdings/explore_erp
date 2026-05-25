<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Stock;
use App\Models\StockRequest;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use Inertia\Inertia;

class StockController extends Controller
{
    public function index(Request $request)
    {
        $query = Stock::query();
        if ($request->has('search')) {
            $query->where(function($q) use ($request) {
                $q->where('name', 'like', '%' . $request->search . '%')
                  ->orWhere('sku', 'like', '%' . $request->search . '%');
            });
        }
        
        if ($request->get('filter') === 'low-stock') {
            $query->where('quantity', '>', 0)->where('quantity', '<', 10);
        } elseif ($request->get('filter') === 'out-of-stock') {
            $query->where('quantity', 0);
        }

        $stocks = $query->paginate(10)->withQueryString();

        $stats = [
            'total_items' => Stock::count(),
            'total_quantity' => Stock::sum('quantity'),
            'low_stock' => Stock::where('quantity', '>', 0)->where('quantity', '<', 10)->count(),
            'out_of_stock' => Stock::where('quantity', 0)->count(),
        ];

        return Inertia::render('Inventory/StocksIndex', [
            'stocks' => $stocks,
            'stats' => $stats,
            'filters' => $request->only(['search', 'filter']),
            'flash' => [
                'success' => session('success'),
                'error' => session('error'),
            ]
        ]);
    }

    public function create()
    {
        return Inertia::render('Inventory/StocksCreate');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'sku' => 'nullable|string|unique:stocks',
            'description' => 'nullable|string',
            'quantity' => 'required|integer|min:0',
        ]);

        Stock::create($validated);
        return redirect()->route('stocks.index')->with('success', 'Stock item added successfully.');
    }

    public function edit(Stock $stock)
    {
        return Inertia::render('Inventory/StocksEdit', [
            'stock' => $stock
        ]);
    }

    public function update(Request $request, Stock $stock)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'sku' => 'nullable|string|unique:stocks,sku,' . $stock->id,
            'description' => 'nullable|string',
            'quantity' => 'required|integer|min:0',
        ]);

        $stock->update($validated);
        return redirect()->route('stocks.index')->with('success', 'Stock item updated successfully.');
    }

    public function destroy(Stock $stock)
    {
        $stock->delete();
        return redirect()->route('stocks.index')->with('success', 'Stock item deleted successfully.');
    }
}
