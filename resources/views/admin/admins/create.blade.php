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
                                                <form action="{{aurl('admins')}}" method="post" enctype="multipart/form-data" class="nk-wizard nk-wizard-simple is-alter">
                                                    {!! csrf_field() !!}

                                                    <div class="nk-wizard-head">
                                                        <h5>المعلومات الشخصية</h5>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="name">الاسم بالكامل</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="text" data-msg="Required" class="form-control required" id="name" name="name" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="mobile">رقم الجوال</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="text" data-msg="Required" class="form-control required" id="mobile" name="mobile" required>
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
                                                                    <input type="text" data-msg="Required" data-msg-email="Wrong Email" class="form-control required email" id="email" name="email" required>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                					{!! Form::label('group_id',trans('admin.group_id'),['class'=>'control-label']) !!}
                                                                    <div class="form-control-wrap">
                                                					{!! Form::select('group_id',App\Models\AdminGroup::where('id', '!=', 2)->pluck('group_name','id'),old('group_id'),['class'=>'form-control select2','placeholder'=>trans('admin.choose')]) !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="password">{{trans('admin.password')}}</label>
                                                                    <div class="form-control-wrap">
                                                                        <input type="password" data-msg="Required" class="form-control required" id="password" name="password" required>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="status">الحالة</label>
                                                                    <div class="form-control-wrap">
                                                                        <select class="form-control" name="status" id="status">
                                                                            <option value="" disabled>اختر الحالة</option>
                                                                            <option value="1">{{trans('admin.active')}}</option>
                                                                            <option value="0">{{trans('admin.in-active')}}</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                        </div><!-- .row -->
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <button type="submit" class="btn btn-primary">تسجيل</button>
                                                                </div>
                                                            </div>
                                                        </div><!-- .row -->
                                                    </div>
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