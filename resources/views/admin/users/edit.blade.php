@extends('admin.layouts.master')
@section('content')

	<div class="nk-content ">
		<div class="container-fluid">
			<div class="nk-content-inner">
				<div class="nk-content-body">
					<div class="components-preview wide-md mx-auto">
						<div class="nk-block nk-block-lg">
							<div class="nk-block-head">
								<div class="nk-block-head-content">
									<h4 class="title nk-block-title">{{ !empty($title)?$title:'' }}</h4>
								</div>
							</div>
							<div class="card card-preview">

								<div class="card-inner">
                								{!! Form::open(['url'=>url(request()->segment('1').'/users/'.$admins->id),'method'=>'put','id'=>'admins','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}

                                                    <div class="nk-wizard-head">
                                                        <h5>المعلومات الشخصية</h5>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="name">الاسم بالكامل</label>
                                                                    <div class="form-control-wrap">
                														{!! Form::text('name', $admins->name ,['class'=>'form-control','placeholder'=>trans('admin.name')]) !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="mobile">رقم الجوال</label>
                                                                    <div class="form-control-wrap">
                                                                        {!! Form::text('mobile', $admins->mobile ,['class'=>'form-control','placeholder'=>trans('admin.mobile')]) !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                <label class="form-label" for="email">البريد الالكتروني</label>
                                                                    <div class="form-control-wrap">
                                                                    {!! Form::text('email', $admins->email ,['class'=>'form-control','placeholder'=>trans('admin.email')]) !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="password">Password</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="password" data-msg="Required" class="form-control required" id="password" name="password">
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                        </div>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="partial_payment">الدفع الجزئي</label>
                                                                    <div class="form-control-wrap">
                                                                        <select class="form-control" name="partial_payment" id="partial_payment">
                                                                            <option value="" disabled>اختر </option>
                                                                            <option value="1" @if($admins->partial_payment=='1') selected @endif>{{trans('admin.active')}}</option>
                                                                            <option value="0" @if($admins->partial_payment=='0') selected @endif>{{trans('admin.in-active')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="status">{{trans('admin.otp_status')}}</label>
                                                                    <div class="form-control-wrap">
                                                                        <select class="form-control" name="status" id="status">
                                                                            <option value="" disabled>اختر الحالة</option>
                                                                            <option value="1" @if($admins->status=='1') selected @endif>{{trans('admin.active')}}</option>
                                                                            <option value="0" @if($admins->status=='0') selected @endif>{{trans('admin.in-active')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                        </div><!-- .row -->
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <button type="submit" class="btn btn-primary">{{ trans('admin.save') }}</button>
                                                                </div>
                                                            </div>
                                                        </div><!-- .row -->
                                                    </div>
                                                    <!--div class="nk-wizard-head">
                                                        <h5>Step 3</h5>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-2">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="fw-token-address">Token Address</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="text" data-msg="Required" class="form-control required" id="fw-token-address" name="fw-token-address" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <label class="form-label">I want to contribute</label>
                                                                <ul class="d-flex flex-wrap g-2">
                                                                    <li>
                                                                        <div class="custom-control custom-radio">
                                                                            <input type="radio" data-msg="Required" class="custom-control-input required" name="fw-ethcount" id="fw-lt1eth" required>
                                                                            <label class="custom-control-label" for="fw-lt1eth">Less than 1 ETH</label>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="custom-control custom-radio">
                                                                            <input type="radio" data-msg="Required" class="custom-control-input required" name="fw-ethcount" id="fw-ov1eth" required>
                                                                            <label class="custom-control-label" for="fw-ov1eth">Over than 1 ETH</label>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="fw-telegram-username">Telegram Username</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="text" data-msg="Required" class="form-control required" id="fw-telegram-username" name="fw-telegram-username" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div-->
                                                </form>
								</div>
							</div><!-- .card-preview -->
						</div><!-- .nk-block -->
					</div><!-- .components-preview -->
				</div>
			</div>
		</div>
	</div>
@endsection
