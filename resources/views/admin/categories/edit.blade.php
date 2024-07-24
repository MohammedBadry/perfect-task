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
								{!! Form::open(['url'=>aurl('categories/'.$categories->id),'method'=>'put','id'=>'categories','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
									<div class="preview-block">
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('name_ar',trans('admin.name_ar'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_ar', $categories->name_ar ,['class'=>'form-control','placeholder'=>trans('admin.name_ar')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('name_en',trans('admin.name_en'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_en', $categories->name_en ,['class'=>'form-control','placeholder'=>trans('admin.name_en')]) !!}
													</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row g-3">
											<div class="col-lg-7 offset-lg-5">
												<div class="form-group mt-2">
													<button type="submit" name="save" class="btn btn-lg btn-primary">{{ trans('admin.save') }}</button>
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
