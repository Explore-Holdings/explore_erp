<?php
require __DIR__ . '/../vendor/autoload.php';
$app = require __DIR__ . '/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Auth::loginUsingId(90);

$request = Request::create('/stocks', 'GET');
try {
    $response = $app->handle($request);
    echo "Status: " . $response->getStatusCode() . "\n";
    $content = $response->getContent();
    echo "Content length: " . strlen($content) . "\n";
} catch (Throwable $e) {
    echo "Exception: " . get_class($e) . " - " . $e->getMessage() . "\n";
    echo $e->getTraceAsString();
}
