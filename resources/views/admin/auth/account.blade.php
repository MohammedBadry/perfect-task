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
									<h4 class="title nk-block-title">{{!empty($title)?$title:''}}</h4>
								</div>
							</div>
							<div class="card card-preview">
								
								<div class="card-inner">
							        {!! Form::open(['url'=>url(request()->segment(1).'/account'),'id'=>'account','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
									<div class="preview-block">
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('name',trans('admin.name'),['class'=>'control-label']) !!}
													<div class="form-control-wrap">
								                    {!! Form::text('name',admin()->user()->name,['class'=>'form-control','placeholder'=>trans('admin.name')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('email',trans('admin.email'),['class'=>'control-label']) !!}
													<div class="form-control-wrap">
								                    {!! Form::text('email',admin()->user()->email,['class'=>'form-control','placeholder'=>trans('admin.email')]) !!}
													</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('password',trans('admin.password'),['class'=>'control-label']) !!}
													<div class="form-control-wrap">
									                    {!! Form::password('password',['class'=>'form-control','placeholder'=>trans('admin.password')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
									                {!! Form::label('password_confirmation',trans('admin.password_confirmation'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
									                    {!! Form::password('password_confirmation',['class'=>'form-control','placeholder'=>trans('admin.password_confirmation')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
						                            <label for="exampleInputFile">{{ trans('admin.photo_profile') }}</label>
													<div class="form-control-wrap">
														<div class="custom-file">
															{!! Form::file('photo_profile',['class'=>'custom-file-input','placeholder'=>trans('admin.photo_profile')]) !!}
															{!! Form::label('photo_profile',trans('admin.photo_profile'),['class'=>'custom-file-label']) !!}
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<br />
						                        @include('admin.show_image',['image'=>admin()->user()->photo_profile])
											</div>
										</div>
										<div class="row g-3">
											<div class="col-lg-7 offset-lg-5">
												<div class="form-group mt-2">
											        {!! Form::submit(trans('admin.save'),['class'=>'btn btn-success btn-flat']) !!}
												</div>
											</div>
										</div>
									</div>
									{!! Form::close() !!}
									
								</div>

							</div><!-- .card-preview -->
						</div><!-- .nk-block -->
					</div><!-- .components-preview -->
				</div>
			</div>
		</div>
	</div>
@endsection