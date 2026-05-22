<?php
libxml_use_internal_errors(true);
$html = file_get_contents('http://127.0.0.1:8000/stocks');
$d = new DOMDocument();
$d->loadHTML($html);
$div = $d->getElementById('app');
if ($div) {
    echo $div->getAttribute('data-page');
} else {
    echo "No div#app found\n";
}
