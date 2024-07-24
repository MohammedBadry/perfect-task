<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;
use App\Events\SendOtpEvent;
use App\Listeners\SendOtpListener;
use App\Events\SendDeliveryOtpEvent;
use App\Listeners\SendDeliveryOtpListener;
use App\Events\NewDeliveriesOrderNotification;
use App\Listeners\NewDeliveriesOrderListener;
use App\Events\DriverDocumentsUploadEvent;
use App\Listeners\DriverDocumentsUploadListener;
use App\Events\InqueryEmailEvent;
use App\Listeners\InqueryEmailListener;
use App\Events\SendInvoiceEvent;
use App\Listeners\SendInvoiceListener;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        SendOtpEvent::class => [
            SendOtpListener::class,
        ],
        SendDeliveryOtpEvent::class => [
            SendDeliveryOtpListener::class,
        ],
        NewDeliveriesOrderNotification::class => [
            NewDeliveriesOrderListener::class,
        ],
        DriverDocumentsUploadEvent::class => [
            DriverDocumentsUploadListener::class,
        ],
        InqueryEmailEvent::class => [
            InqueryEmailListener::class,
        ],
        SendInvoiceEvent::class => [
            SendInvoiceListener::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
