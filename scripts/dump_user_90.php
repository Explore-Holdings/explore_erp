<?php
require __DIR__ . '/../vendor/autoload.php';
$app = require __DIR__ . '/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;
use App\Models\StockRequest;

$id = 90;
$user = User::with('roles')->find($id);
if (! $user) {
    echo "User {$id} not found\n";
    exit;
}

echo "User id: {$user->id}\n";
echo "email: {$user->email}\n";
echo "role field: " . ($user->role ?? 'NULL') . "\n";
echo "employee_id: " . ($user->employee_id ?? 'NULL') . "\n";

$roleNames = $user->roles->pluck('name')->toArray();
echo "roles relation: ";
echo empty($roleNames) ? "(none)\n" : implode(', ', $roleNames) . "\n";

$requests = StockRequest::where('user_id', $user->id)->get();
echo "stock_requests count: " . $requests->count() . "\n";
foreach ($requests as $r) {
    echo " - id={$r->id} stock_id={$r->stock_id} quantity={$r->quantity} status={$r->status}\n";
}

// Check permission-like fields
echo "---- End ----\n";
