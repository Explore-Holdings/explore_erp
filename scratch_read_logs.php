<?php
$logPath = 'storage/logs/laravel.log';
if (!file_exists($logPath)) {
    echo "No log file found at $logPath\n";
    exit;
}

$lines = file($logPath);
$lastLines = array_slice($lines, -100);
echo implode("", $lastLines);
