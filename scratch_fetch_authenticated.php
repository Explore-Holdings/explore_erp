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
if (!$user) {
    echo "ERROR: admin user not found!\n";
    exit(1);
}

Auth::login($user);

$controller = new StockController();
$request = Request::create('/stocks', 'GET');
// Set the X-Inertia header to force a JSON response
$request->headers->set('X-Inertia', 'true');

try {
    echo "Calling StockController->index() with X-Inertia=true...\n";
    $response = $controller->index($request);
    
    if (method_exists($response, 'toResponse')) {
        $response = $response->toResponse($request);
    }
    
    $content = $response->getContent();
    echo "Success! Response Content:\n";
    // Pretty print the JSON
    $decoded = json_decode($content, true);
    if ($decoded) {
        echo json_encode($decoded, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES) . "\n";
    } else {
        echo "Raw output:\n";
        echo $content . "\n";
    }
} catch (\Exception $e) {
    echo "ERROR calling controller: " . $e->getMessage() . "\n";
    echo $e->getTraceAsString() . "\n";
}
