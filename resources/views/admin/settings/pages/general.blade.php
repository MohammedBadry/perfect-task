        <div class="nk-block-head nk-block-head-lg">
            <div class="nk-block-between">
                <div class="nk-block-head-content">
                    <h6 class="nk-block-title">الإعدادات العامة</h6>
                </div>
                <div class="nk-block-head-content align-self-start d-lg-none">
                    <a href="#" class="toggle btn btn-icon btn-trigger mt-n1" data-target="userAside"><em class="icon ni ni-menu-alt-r"></em></a>
                </div>
            </div>
        </div><!-- .nk-block-head -->
        <div class="nk-block">

										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('sitename_ar',trans('admin.sitename_ar'),['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('sitename_ar',setting()->sitename_ar,['class'=>'form-control','placeholder'=>trans('admin.sitename_ar')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('sitename_en',trans('admin.sitename_en'),['class'=>'control-label']) !!}
													<div class="form-control-wrap">
													{!! Form::text('sitename_en',setting()->sitename_en,['class'=>'form-control','placeholder'=>trans('admin.sitename_en')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('email', 'الإيميل',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('email',setting()->email,['class'=>'form-control','placeholder'=> 'الإيميل']) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('mobile', 'رقم الجوال',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('mobile',setting()->mobile,['class'=>'form-control','placeholder'=> 'رقم الجوال']) !!}
													</div>
												</div>
											</div>
											<!--div class="col-sm-4">
												<div class="form-group">
												{!! Form::label('phone', 'رقم الهاتف',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('phone',setting()->phone,['class'=>'form-control','placeholder'=> 'رقم الهاتف']) !!}
													</div>
												</div>
											</div-->
										</div>
										<!--div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('android_link', 'رابط أندرويد',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('android_link',setting()->android_link,['class'=>'form-control','placeholder'=>'رابط أندرويد']) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('apple_link', 'رابط IOS',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('apple_link',setting()->apple_link,['class'=>'form-control','placeholder'=>'رابط IOS']) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-4">
												<div class="form-group">
									                {!! Form::label('address', 'العنوان',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('address',setting()->address,['class'=>'form-control','placeholder'=> 'العنوان']) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
												{!! Form::label('latitude', 'خط الطول',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('latitude',setting()->latitude,['class'=>'form-control','placeholder'=> 'خط الطول']) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
												{!! Form::label('longitude', 'خط العرض',['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                {!! Form::text('longitude',setting()->longitude,['class'=>'form-control','placeholder'=> 'خط العرض']) !!}
													</div>
												</div>
											</div>
										</div-->
										<div class="row gy-4">
											<div class="col-sm-4">
												<div class="form-group">
													<label class="form-label" for="default-06">{{trans('admin.logo')}}</label>
													<div class="form-control-wrap">
														<div class="custom-file">
															<input type="file" name="logo" multiple class="custom-file-input" id="logo">
															<label class="custom-file-label" for="logo">{{ trans('admin.upload') }}</label>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<br />
												@include('admin.show_image',['image'=>setting()->logo])
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													<label class="form-label" for="default-06">{{trans('admin.icon')}}</label>
													<div class="form-control-wrap">
														<div class="custom-file">
															<input type="file" name="icon" multiple class="custom-file-input" id="icon">
															<label class="custom-file-label" for="icon">{{ trans('admin.upload') }}</label>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<br />
												@include('admin.show_image',['image'=>setting()->icon])
											</div>
										</div>

        
        </div>