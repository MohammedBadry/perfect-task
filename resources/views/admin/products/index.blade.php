@extends('admin.layouts.master')
@section('content')

                <div class="nk-content ">
                    <div class="container-fluid">
                        <div class="nk-content-inner">
                            <div class="nk-content-body">
                                <div class="components-preview wide-md mx-auto">
                                    <div class="nk-block-head nk-block-head-lg wide-sm">
                                        <div class="nk-block-head-content">
											&nbsp;
										</div>
                                    </div><!-- .nk-block-head -->
                                    <div class="nk-block nk-block-lg">
                                        <div class="nk-block-head">
                                            <div class="nk-block-head-content">
                                                <h4 class="nk-block-title">{{!empty($title)?$title:''}}</h4>
                                            </div>
                                        </div>
                                        <div class="card card-preview">
                                            <div class="row">
                                                <form action="{{aurl('products')}}" method="get">
                                                    <div class="card-inner">
                                                        <div class="preview-block">
                                                            <div class="row gy-4">
                                                                <div class="col-sm-5">
                                                                    <div class="form-group mt-2">
                                                                        <div class="form-control-wrap">
                                                                            <input type="text" name="name" value="{{request()->get('name')}}" placeholder="اسم المنتج" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-5">
                                                                    <div class="form-group mt-2">
                                                                        <div class="form-control-wrap">
                                                                            <select name="category_id" class="form-control">
                                                                                <option value="">اختر الفئة</option>
                                                                                @foreach($categories as $category)
                                                                                <option value="{{$category->id}}" {{request()->get('category_id')==$category->id?'selected':''}}>{{$category->name_ar}}</option>
                                                                                @endforeach
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-2">
                                                                    <div class="form-group mt-2">
                                                                        <button type="submit" class="btn btn-primary">بحث</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="card-inner">
                                                <div class="table-responsive">
                                                    <table class="table table-orders nowrap nk-tb-list is-separate">
                                                        <thead>
                                                            <tr>
                                                                <th>{{trans('admin.record_id')}}</th>
                                                                <th>{{trans('admin.image')}}</th>
                                                                <th>{{trans('admin.name_ar')}}</th>
                                                                <th>{{trans('admin.category_id')}}</th>
                                                                <th>{{trans('admin.category')}}</th>
                                                                <th>{{trans('admin.created_at')}}</th>
                                                                <th>{{trans('admin.action')}}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($products as $product)
                                                            <tr>
                                                                <td>{{$product->id}}</td>
                                                                <td>
                                                                    @include('admin.show_image',['image'=>$product->image])
                                                                </td>
                                                                <td>{{$product->name_ar}}</td>
                                                                <td>@if($product->category) {{$product->category->name_ar}} @endif</td>
                                                                <td>{{$product->category->name_ar??''}}</td>
                                                                <td>{{$product->created_at}}</td>
                                                                <td class="tb-odr-action">
                                                                    @include('admin.products.buttons.actions', ['id' => $product->id])
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div>{{ $products->links() }}</div>
                                            </div>
                                        </div><!-- .card-preview -->
                                    </div> <!-- nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>

@endsection
