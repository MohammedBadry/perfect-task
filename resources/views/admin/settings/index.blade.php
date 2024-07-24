@extends('admin.layouts.master')
@section('content')

                <div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="nk-block">
                                    <div class="nk-block-head">
                                        <div class="nk-block-head-content">
                                            <h4 class="title nk-block-title">{{!empty($title)?$title:''}}</h4>
                                        </div>
                                    </div>
                                    <div class="card card-bordered">
                                        <div class="card-aside-wrap">

        							        {!! Form::open(['url'=>url(request()->segment('1').'/settings'),'id'=>'settings','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
                                                <div class="card-inner card-inner-lg">
                                                    @if(request()->get('page') && request()->get('page')!='')
                                                        @include('admin.settings.pages.'.request()->get('page'))
                                                        <input type="hidden" name="page" value="{{request()->get('page')}}">
                                                    @else
                                                        @include('admin.settings.pages.general')
                                                    @endif
                                                    <div class="row g-3">
                                                        <div class="col-lg-7 offset-lg-5">
                                                            <div class="form-group mt-2">
                                                                <button type="submit" name="save" class="btn btn-lg btn-primary">{{ trans('admin.save') }}</button>
                                                            </div>
                                                        </div>
                                                    </div>
            									</div>
        									{!! Form::close() !!}

                                            <div class="card-aside card-aside-left user-aside toggle-slide toggle-slide-left toggle-break-lg" data-content="userAside" data-toggle-screen="lg" data-toggle-overlay="true">
                                                <div class="card-inner-group" data-simplebar>
                                                    <div class="card-inner p-0">
                                                        <ul class="link-list-menu">
                                                            <li><a class="@if(request()->get('page')=='') active @endif" href="{{aurl('settings')}}"><em class="icon ni ni-home-fill"></em><span>الإعدادات العامة</span></a></li>
                                                        </ul>
                                                    </div><!-- .card-inner -->
                                                </div><!-- .card-inner-group -->
                                            </div><!-- card-aside -->
                                        </div><!-- .card-aside-wrap -->
                                    </div><!-- .card -->
                                </div><!-- .nk-block -->
                            </div>
                        </div>
                    </div>
                </div>

@endsection
