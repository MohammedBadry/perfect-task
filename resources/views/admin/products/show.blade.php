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
                                <section class="content">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="card card-info">
                                                    <div class="card-body">
                                                        <table class="table">
                                                            <tr>
                                                                <th class="w-10px">ID</th>
                                                                <td>{{$products->id}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">الصورة الأساسية</th>
                                                                <td>
                                                                    @include('admin.show_image',['image'=>$products->image])
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">الصور الإضافية</th>
                                                                <td>
                                                                    @foreach($products->images as $item)
                                                                        @include('admin.show_image',['image'=>$item->image])
                                                                    @endforeach
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.name_ar')}}</th>
                                                                <td>{{$products->name_ar}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.name_en')}}</th>
                                                                <td>{{$products->name_en}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.description_ar')}}</th>
                                                                <td>{!! $products->description_ar !!}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.description_en')}}</th>
                                                                <td>{!! $products->description_en !!}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.unit')}}</th>
                                                                <td>@if($products->unit) {{$products->unit->name_ar}} @endif</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.price')}}</th>
                                                                <td>{{$products->price}}</td>
                                                            </tr>
                                                            @if(admin()->user()->is_vendor==0)
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.vendor_id')}}</th>
                                                                <td>{{$products->vendor->name}}</td>
                                                            </tr>
                                                            @endif
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.category_id')}}</th>
                                                                <td>@if($products->category) {{$products->category->name_ar}} @endif</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.minimum_order')}}</th>
                                                                <td>{{$products->minimum_order}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.preparing_time')}}</th>
                                                                <td>{{$products->preparing_time}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">{{trans('admin.maximum_car_load')}}</th>
                                                                <td>{{$products->maximum_car_load}}</td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">الميزات الإضافية</th>
                                                                <td>
                                                                    <div class="container-fluid row">
                                                                    @foreach ($products->features as $item)
                                                                        <div class="  card col-md-3 col-sm-12 p-3 mb-2 bg-white rounded m-1 grow">
                                                                            <div><span class="text-bold">الميزة عربي : </span><small>{{$item->name_ar }} </small></div>
                                                                            <div><span class="text-bold">الميزة إنجليزي : </span><small>{{$item->name_en }} </small></div>
                                                                        </div>
                                                                        @endforeach
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th class="w-10px">حمولات السيارات لكل ({{$products->unit->name_ar}})</th>
                                                                <td>
                                                                    <div class="container-fluid row">
                                                                    @foreach ($products->car_loads as $cload)
                                                                        <div class="  card col-md-3 col-sm-12 p-3 mb-2 bg-white rounded m-1 grow">
                                                                            <div>
                                                                                <span class="text-bold">{{$cload->car->name_ar }} : </span> <br>
                                                                                من: <small>{{$cload->from }} </small><br>
                                                                                إلى: <small>{{$cload->to }} </small>
                                                                            </div>
                                                                        </div>
                                                                        @endforeach
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!--/.card-->
                                            </div>
                                            <!--/.col-md-12-->
                                        </div>
                                        <!-- /.row -->
                                    </div><!-- /.container-fluid -->
                                </section>

						</div><!-- .nk-block -->
					</div><!-- .components-preview -->
				</div>
			</div>
		</div>
	</div>
@endsection
