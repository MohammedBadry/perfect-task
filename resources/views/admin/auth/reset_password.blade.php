<!DOCTYPE html>
<html lang="zxx" class="js">

<head>
    <base href="../../../">
    <meta charset="utf-8">
    <meta name="author" content="Softnio">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
    <!-- Fav Icon  -->
    <link rel="shortcut icon" href="{{ url('assets') }}/images/favicon.png">
    <!-- Page Title  -->
    <title>{{ trans('admin.forgot_password') }}</title>
    <!-- StyleSheets  -->
    <link rel="stylesheet" href="{{ url('assets') }}/dashlite/css/dashlite.rtl.css?ver=2.9.1">
    <link id="skin-default" rel="stylesheet" href="{{ url('assets') }}/dashlite/css/theme.css?ver=2.9.1">
    <!-- jQuery -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet"/>
</head>

<body class="nk-body bg-white pg-auth">

    <div class="nk-app-root">
        <!-- main @s -->
        <div class="nk-main ">
            <!-- wrap @s -->
            <div class="nk-wrap nk-wrap-nosidebar">
                <!-- content @s -->
                <div class="nk-content ">
                    <div class="nk-block nk-block-middle nk-auth-body  wide-xs">
                        <div class="brand-logo pb-4 text-center">
                            <a href="html/index.html" class="logo-link">
                                <img class="logo-light logo-img logo-img-lg" src="{{ it()->url(setting()->logo) }}" srcset="{{ it()->url(setting()->logo) }} 2x" alt="logo">
                                <img class="logo-dark logo-img logo-img-lg" src="{{ it()->url(setting()->logo) }}" srcset="{{ it()->url(setting()->logo) }} 2x" alt="logo-dark">
                            </a>
                        </div>
                        <div class="card card-bordered">
                            <div class="card-inner card-inner-lg">
                                <div class="nk-block-head">
                                    <div class="nk-block-head-content">
                                        <h4 class="nk-block-title">{{__('admin.reset_password')}}</h4>
                                        <div class="nk-block-des">
                                            <!--p>Access the DashLite panel using your email and passcode.</p-->
                                        </div>
                                    </div>
                                </div>
                                <form method="post" dir="rtl">
                                    @honeypot
                                    {!! csrf_field() !!}
                                    <div class="form-group">
                                        <div class="form-control-wrap">
                                            <label class="form-label" for="email-address">{{ trans('admin.email') }}</label>
                                            <input type="text" name="email" class="form-control form-control-lg" required id="email-address" placeholder="{{ trans('admin.email') }}">
                                        </div>
                                        <div class="form-control-wrap">
                                            <label class="form-label" for="email-address">{{ trans('admin.password') }}</label>
                                            <input type="password" name="password" class="form-control form-control-lg" required id="email-address" placeholder="{{ trans('admin.password') }}">
                                        </div>
                                        <div class="form-control-wrap">
                                            <label class="form-label" for="email-address">{{ trans('admin.password_confirmation') }}</label>
                                            <input type="password" name="password_confirmation" class="form-control form-control-lg" required id="email-address" placeholder="{{ trans('admin.password_confirmation') }}">
                                        </div>
                                    </div><!-- .form-group -->
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-lg btn-primary btn-block">{{ trans('admin.change_password') }}</button>
                                    </div>
                                </form><!-- form -->
                            </div>
                        </div>
                    </div>
                    <div class="nk-footer bg-lighter nk-auth-footer-full">
                        <div class="container wide-lg">
                            <div class="row g-3">
                                <div class="col-lg-12">
                                    <div class="nk-block-content text-center text-lg-center">
                                        <p class="text-soft">&copy; 2022 {{ setting()->{l('sitename')} }}.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- wrap @e -->
            </div>
            <!-- content @e -->
        </div>
        <!-- main @e -->
    </div>
    <!-- app-root @e -->
    <!-- JavaScript -->
    <script src="{{url('assets/js/jquery.min.js')}}" type="text/javascript"></script>
    <script src="{{ url('assets') }}/dashlite/js/bundle.js?ver=2.9.1"></script>
    <script src="{{ url('assets') }}/dashlite/js/scripts.js?ver=2.9.1"></script>
    <!-- select region modal -->

    <script src="{{ url('assets') }}/dashlite/js/example-toastr.js?ver=2.9.1"></script>

    @include('admin.layouts.messages')

</html>