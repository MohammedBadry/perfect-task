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
                                            <div class="card-inner">
                                                <div class="table-responsive">
                                                    <table class="table table-orders nowrap nk-tb-list is-separate">
                                                        <thead>
                                                            <tr>
                                                                <th>{{trans('admin.record_id')}}</th>
                                                                <th>{{trans('admin.image')}}</th>
                                                                <th>{{trans('admin.name')}}</th>
                                                                <th>{{trans('admin.email')}}</th>
                                                                <th>{{trans('admin.mobile')}}</th>
                                                                <th>{{trans('admin.created_at')}}</th>
                                                                <th>{{trans('admin.status')}}</th>
                                                                <th>{{trans('admin.action')}}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($admins as $admin)
                                                            <tr>
                                                                <td>{{$admin->id}}</td>
                                                                <td>
                                                                    @include('admin.show_image',['image'=>$admin->photo_profile])
                                                                </td>
                                                                <td>{{$admin->name}}</td>
                                                                <td>{{$admin->email}}</td>
                                                                <td>{{$admin->mobile}}</td>
                                                                <td>{{$admin->created_at}}</td>
                                                                <td>
                                                                    @if($admin->status==1)
                                                                    <span class="tb-status text-success">{{trans('admin.active')}}</span>
                                                                    @else
                                                                    <span class="tb-status text-warning">{{trans('admin.in-active')}}</span>
                                                                    @endif
                                                                </td>
                                                                <td class="tb-odr-action">
                                                                    @include('admin.admins.buttons.actions', ['id' => $admin->id])
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div>{{ $admins->links() }}</div>
                                            </div>
                                        </div><!-- .card-preview -->
                                    </div> <!-- nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>

@endsection
