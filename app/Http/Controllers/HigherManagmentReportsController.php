<?php

namespace App\Http\Controllers;

use App\Models\Ticket;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class HigherManagmentReportsController extends Controller
{
    public function index()
    {
        $stats = [
            'total' => Ticket::count(),
            'open' => Ticket::where('status', 'Open')->count(),
            'in_progress' => Ticket::where('status', 'In Progress')->count(),
            'resolved' => Ticket::where('status', 'Resolved')->count(),
            'unread' => Ticket::where('is_read', 0)->count(),
        ];

        $statusChart = Ticket::select(
                'status',
                DB::raw('COUNT(*) as count')
            )
            ->groupBy('status')
            ->get();

        $platformChart = Ticket::select(
                'platform_id',
                DB::raw('COUNT(*) as count')
            )
            ->groupBy('platform_id')
            ->get();

        $monthlyReports = Ticket::select(
                DB::raw('DATE(created_at) as date'),
                DB::raw('COUNT(*) as count')
            )
            ->whereDate('created_at', '>=', now()->subDays(30))
            ->groupBy('date')
            ->orderBy('date')
            ->get();

        $reports = Ticket::with([
                'user',
                'platform',
                'commonIssue'
            ])
            ->latest()
            ->paginate(20);

        return Inertia::render('HigherMgtReports', [
            'stats' => $stats,
            'statusChart' => $statusChart,
            'platformChart' => $platformChart,
            'monthlyReports' => $monthlyReports,
            'reports' => $reports,
        ]);
    }
}