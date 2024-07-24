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
                                                <h4 class="nk-block-title">مبيعات العميل: {{$user->name}}</h4>

                                                <a href="{{aurl('sales/'.$user->id.'/create')}}" target="_blank" rel="noopener noreferrer">إضافة مبيعة</a>
                                            </div>
                                        </div>
                                        <div class="card card-preview">
                                            <div class="card-inner">
                                                <div class="table-responsive">
                                                    <table class="table table-orders nowrap nk-tb-list is-separate">
                                                        <thead>
                                                            <tr>
                                                                <th>{{trans('admin.record_id')}}</th>
                                                                <th>العميل</th>
                                                                <th>الإجمالي</th>
                                                                <th>التاريخ</th>
                                                                <th>{{trans('admin.action')}}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($sales as $sale)
                                                            <tr>
                                                                <td>{{$sale->id}}</td>
                                                                <td>{{$sale->user->name}}</td>
                                                                <td>{{$sale->sale_total()}}</td>
                                                                <td>{{$sale->created_at}}</td>
                                                                <td class="tb-odr-action">
                                                                    @include('admin.sales.buttons.actions', ['id' => $sale->id])
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div>{{ $sales->links() }}</div>
                                            </div>
                                        </div><!-- .card-preview -->
                                    </div> <!-- nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>

@endsection
