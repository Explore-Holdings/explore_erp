<?php
require 'vendor/autoload.php';
$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

$request = Request::create('/suite-services', 'GET');
$user = User::where('email', 'admin@example.com')->first();

try {
    // Bootstrap the HTTP application and start session
    $response = $kernel->handle($request);
    $content = $response->getContent();
    echo "Success! Suite Services response (first 1000 chars):\n";
    echo substr($content, 0, 1000) . "\n";
} catch (\Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}
