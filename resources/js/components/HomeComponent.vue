<script>
    export default {
        name: "HomeComponent",
        data() {
            return {
                id: "",
                link: "",
                date: ""
            }
        },
        mounted() {
            window.Echo.channel('orders.'+vendor_id)
            .listen('OrderNotification', event => {
                this.link = url+"/"+segment+"/orders/"+event.id;
                $('#nk-notification').prepend('<div>'+
                        '<div class="nk-notification-item dropdown-inner">'+
                            '<div class="nk-notification-icon">'+
                                '<em class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>'+
                            '</div>'+
                            '<div class="nk-notification-content">'+
                                '<div class="nk-notification-text">لديك طلب جديد برقم <a href="'+this.link+'">'+event.id+'</a> </div>'+
                                '<div class="nk-notification-time">'+event.date+'</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>');
                notify('لديك طلب جديد برقم', event.id, this.link);
                $('.nk-notification-item').show();
            });

            window.Echo.channel('orders.vendor.'+is_vendor)
            .listen('OrderNotification', event => {
                this.link = url+"/"+segment+"/orders/"+event.id;
                $('#nk-notification').prepend('<div>'+
                        '<div class="nk-notification-item dropdown-inner">'+
                            '<div class="nk-notification-icon">'+
                                '<em class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>'+
                            '</div>'+
                            '<div class="nk-notification-content">'+
                                '<div class="nk-notification-text">لديك طلب جديد برقم <a href="'+this.link+'">'+event.id+'</a> </div>'+
                                '<div class="nk-notification-time">'+event.date+'</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>');
                notify('لديك طلب جديد برقم', event.id, this.link);
                $('.nk-notification-item').show();
            });

            window.Echo.channel('vendors.vendor.'+is_vendor)
            .listen('NewVendorNotification', event => {
                this.link = url+"/"+segment+"/vendors";
                $('#nk-notification').prepend('<div>'+
                        '<div class="nk-notification-item dropdown-inner">'+
                            '<div class="nk-notification-icon">'+
                                '<em class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>'+
                            '</div>'+
                            '<div class="nk-notification-content">'+
                                '<div class="nk-notification-text">طلب تسجيل متجر جديد برقم <a href="'+this.link+'">'+event.id+'</a> </div>'+
                                '<div class="nk-notification-time">'+event.date+'</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>');
                notify('طلب تسجيل متجر جديد', event.id, this.link);
                $('.nk-notification-item').show();
            });

            window.Echo.channel('deliveries.delivery.'+is_vendor)
            .listen('DeliveryPaymentNotification', event => {
                this.link = url+"/"+segment+"/deliveries/"+event.id;
                $('#nk-notification').prepend('<div>'+
                        '<div class="nk-notification-item dropdown-inner">'+
                            '<div class="nk-notification-icon">'+
                                '<em class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>'+
                            '</div>'+
                            '<div class="nk-notification-content">'+
                                '<div class="nk-notification-text">عملية دفع جديدة لاشتراك جديد من قبل الديلفري رقم <a href="'+this.link+'">'+event.id+'</a> </div>'+
                                '<div class="nk-notification-time">'+event.date+'</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>');
                notify('عملية دفع جديدة لاشتراك جديد من قبل الديلفري رقم', event.id, this.link);
                $('.nk-notification-item').show();
            });

            window.Echo.channel('withdrawalRequests.'+is_vendor)
            .listen('WithdrawalRequestNotification', event => {
                this.link = url+"/"+segment+"/withdrawal-requests?status=pending";
                $('#nk-notification').prepend('<div>'+
                        '<div class="nk-notification-item dropdown-inner">'+
                            '<div class="nk-notification-icon">'+
                                '<em class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>'+
                            '</div>'+
                            '<div class="nk-notification-content">'+
                                '<div class="nk-notification-text">طلب سحب جديد برقم <a href="'+this.link+'">'+event.id+'</a> </div>'+
                                '<div class="nk-notification-time">'+event.date+'</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>');
                notify('طلب سحب جديد برقم', event.id, this.link);
                $('.nk-notification-item').show();
            });
        }
    }
</script>
