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
                                                                <th>{{trans('admin.group_name')}}</th>
                                                                <th>{{trans('admin.created_at')}}</th>
                                                                <th>{{trans('admin.action')}}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($admingroups as $group)
                                                            <tr>
                                                                <td>{{$group->id}}</td>
                                                                <td>{{$group->group_name}}</td>
                                                                <td>{{$group->created_at}}</td>
                                                                <td class="tb-odr-action">
                                                                    @include('admin.admingroups.buttons.actions', ['id' => $group->id])
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div>{{ $admingroups->links() }}</div>
                                            </div>
                                        </div><!-- .card-preview -->
                                    </div> <!-- nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>

@endsection
