<?php

use Illuminate\Support\Facades\Route;
use Spatie\Honeypot\ProtectAgainstSpam;
use App\Events\SendInvoiceEvent;
use App\Models\Order;
use App\Services\ShortenUrlService;

use Salla\ZATCA\GenerateQrCode;
use Salla\ZATCA\Tags\InvoiceDate;
use Salla\ZATCA\Tags\InvoiceTaxAmount;
use Salla\ZATCA\Tags\InvoiceTotalAmount;
use Salla\ZATCA\Tags\Seller;
use Salla\ZATCA\Tags\TaxNumber;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
	return redirect('/admin');
});

Route::get('/optimize-clear', function () {
    \Artisan::call('optimize:clear');
});

Route::get('/test5', function () {

$order = \App\Models\Order::find(1);

        $link = url('/invoice/'.$order->id);

        $shortenUrl = new ShortenUrlService();
        $shortenedLink = $shortenUrl->shortenUrl($link);
return $shortenedLink;
//event(new SendInvoiceEvent($order));

});

Route::get('/invoice/{order}', function (Order $order) {
$date = $order->created_at;

// data:image/png;base64, .........
$qrcode = GenerateQrCode::fromArray([
    new Seller($order->vendor->name), // seller name        
    new TaxNumber($order->vendor->tax_number), // seller tax number
    new InvoiceDate($date->format('Y-m-d\TH:i:s\Z')), // invoice date as Zulu ISO8601 @see https://en.wikipedia.org/wiki/ISO_8601
    new InvoiceTotalAmount($order->sub_total+$order->delivery_cost), // invoice total amount
    new InvoiceTaxAmount($order->tax) // invoice tax amount
    // TODO :: Support others tags
])->render();

	return view('invoice', compact('order', 'qrcode'));
});

