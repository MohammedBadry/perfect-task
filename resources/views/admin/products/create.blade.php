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
                                    {!! Form::open(['url'=>url(request()->segment('1').'/products'),'id'=>'products','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
									<div class="preview-block">
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('name_ar',trans('admin.name_ar'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_ar',old('name_ar'),['class'=>'form-control','placeholder'=>trans('admin.name_ar')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													{!! Form::label('name_en',trans('admin.name_en'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_en',old('name_en'),['class'=>'form-control','placeholder'=>trans('admin.name_en')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-12">
												<div class="form-group">
                                                    {!! Form::label('description_ar',trans('admin.description_ar'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
                                                        {!! Form::textarea('description_ar',old('description_ar'),['class'=>'form-control tinymce-toolbar','placeholder'=>trans('admin.description_ar')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-12">
												<div class="form-group">
                                                    {!! Form::label('description_en',trans('admin.description_en'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
                                                        {!! Form::textarea('description_en',old('description_en'),['class'=>'form-control tinymce-toolbar','placeholder'=>trans('admin.description_en')]) !!}
													</div>
												</div>
											</div>
										</div>
											<div class="col-sm-6">
												<div class="form-group">
                                                    {!! Form::label('category_id', 'القسم الرئيسي',['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														<select class="form-control select2" name="category_id" onchange="getSub($(this).val())">
															<option value="">اختر القسم</option>
															@foreach(App\Models\Category::get() as $category)
																<option value="{{$category->id}}" >{{$category->name_ar}}</option>
															@endforeach
														</select>
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-12">
                                                <label class="form-label" for="default-06">الصورة</label>
                                            </div>
											<div id="newimage" class="col-sm-12">
                                                <div class="row gy-4" id="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label class="form-label" for="customFile">اختر الصورة</label>
                                                            <div class="form-control-wrap">
                                                                <input type="file" name="image" class="form-control"  required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
    										</div>
										</div>
										<div class="row g-3">
											<div class="col-lg-7 offset-lg-5">
												<div class="form-group mt-2">
													<button type="submit" name="add" class="btn btn-lg btn-primary">إضافة</button>
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
