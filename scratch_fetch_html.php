<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use App\Models\User;
use App\Http\Controllers\StockController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

$user = User::where('email', 'admin@example.com')->first();
Auth::login($user);

$controller = new StockController();
$request = Request::create('/stocks', 'GET');

try {
    $response = $controller->index($request);
    
    if (method_exists($response, 'toResponse')) {
        $response = $response->toResponse($request);
    }
    
    $content = $response->getContent();
    echo "Success! Response HTML (truncated first 2000 chars):\n";
    echo substr($content, 0, 4000) . "\n";
} catch (\Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}
