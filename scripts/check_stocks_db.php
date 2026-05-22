<?php
require __DIR__ . '/../vendor/autoload.php';
$app = require __DIR__ . '/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

$db = config('database.connections.mysql.database');
echo "config database: {$db}\n";
$has = Schema::hasTable('stocks') ? 'yes' : 'no';
echo "stocks table exists: {$has}\n";

// Also list tables count
$tables = DB::select('SHOW TABLES');
echo "tables: " . count($tables) . "\n";
