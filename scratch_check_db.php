<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\Stock;
use App\Models\User;

try {
    echo "Checking Database connection...\n";
    $stocksCount = Stock::count();
    $usersCount = User::count();
    echo "Stocks count in DB: $stocksCount\n";
    echo "Users count in DB: $usersCount\n";
    
    if ($stocksCount > 0) {
        echo "Sample Stocks:\n";
        foreach (Stock::limit(3)->get() as $stock) {
            echo " - ID: {$stock->id}, Name: {$stock->name}, Quantity: {$stock->quantity}, SKU: {$stock->sku}\n";
        }
    } else {
        echo "WARNING: Stocks table is empty!\n";
    }
} catch (\Exception $e) {
    echo "DATABASE ERROR: " . $e->getMessage() . "\n";
}
