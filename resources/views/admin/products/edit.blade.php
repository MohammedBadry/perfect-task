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
									{!! Form::open(['url'=>url(request()->segment('1').'/products/'.$products->id),'method'=>'put','id'=>'products','files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
									<div class="preview-block">
										<div class="row gy-4">
											<div class="col-sm-4">
												<div class="form-group">
													{!! Form::label('name_ar',trans('admin.name_ar'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_ar',$products->name_ar,['class'=>'form-control','placeholder'=>trans('admin.name_ar')]) !!}
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="form-group">
													{!! Form::label('name_en',trans('admin.name_en'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
														{!! Form::text('name_en',$products->name_en,['class'=>'form-control','placeholder'=>trans('admin.name_en')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-12">
												<div class="form-group">
                                                    {!! Form::label('description_ar',trans('admin.description_ar'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
                                                        {!! Form::textarea('description_ar',$products->description_ar,['class'=>'form-control tinymce-toolbar','placeholder'=>trans('admin.description_ar')]) !!}
													</div>
												</div>
											</div>
										</div>
										<div class="row gy-4">
											<div class="col-sm-12">
												<div class="form-group">
                                                    {!! Form::label('description_en',trans('admin.description_en'),['class'=>' control-label']) !!}
													<div class="form-control-wrap">
                                                        {!! Form::textarea('description_en',$products->description_en,['class'=>'form-control tinymce-toolbar','placeholder'=>trans('admin.description_en')]) !!}
													</div>
												</div>
											</div>
										</div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                {!! Form::label('category_id', 'القسم',['class'=>' control-label']) !!}
                                                <div class="form-control-wrap">
                                                    <select name="category_id" class="form-control select2" onchange="getSub($(this).val())" required>
                                                        <option value="">اختر القسم</option>
                                                        @foreach(App\Models\Category::get() as $category)
                                                            <option value="{{$products->category_id}}" @if($products->category_id==$category->id) selected @endif>{{$products->category->name_ar}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
										<div class="row gy-4">
											<div class="col-sm-6">
												<div class="form-group">
													<label class="form-label" for="default-06">الصورة</label>
													<div class="form-control-wrap">
														<div class="custom-file">
															<input type="file" name="image" class="custom-file-input" id="customFile">
															<label class="custom-file-label" for="customFile">اختر الصورة</label>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-2">
												<br />
												@include('admin.show_image',['image'=>$products->image])
											</div>
										</div>
										<div class="row g-3">
											<div class="col-lg-7 offset-lg-5">
												<div class="form-group mt-2">
													<button type="submit" name="add_back" class="btn btn-lg btn-primary">{{trans('admin.save')}}</button>
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
