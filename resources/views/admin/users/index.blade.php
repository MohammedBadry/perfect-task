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
                                                <a href="#" data-toggle="modal" data-target="#addUsers" class="btn btn-primary">استيراد العملاء</a>
                                            </div>
                                        </div>
                                        <div class="card card-preview">
                                        <div class="row">
                                                <form action="{{aurl('users')}}" method="get">
                                                    <div class="card-inner">
                                                        <div class="preview-block">
                                                            <div class="row gy-4">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group mt-2">
                                                                        <div class="form-control-wrap">
                                                                            <input type="text" name="name" value="{{request()->get('name')}}" placeholder="اسم العميل" class="form-control">
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
                                                                <th>{{trans('admin.name')}}</th>
                                                                <th>{{trans('admin.email')}}</th>
                                                                <th>{{trans('admin.mobile')}}</th>
                                                                <th>كود التغعيل</th>
                                                                <th>{{trans('admin.created_at')}}</th>
                                                                <th>{{trans('admin.otp_status')}}</th>
                                                                <th>{{trans('admin.action')}}</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($users as $admin)
                                                            <tr>
                                                                <td>{{$admin->id}}</td>
                                                                <td>
                                                                    @include('admin.show_image',['image'=>$admin->photo_profile])
                                                                </td>
                                                                <td>{{$admin->name}}</td>
                                                                <td>{{$admin->email}}</td>
                                                                <td>{{$admin->mobile}}</td>
                                                                <td>{{$admin->otp_code}}</td>
                                                                <td>{{$admin->created_at}}</td>
                                                                <td>
                                                                    @if($admin->status==1)
                                                                    <span class="tb-status text-success">{{trans('admin.active')}}</span>
                                                                    @else
                                                                    <span class="tb-status text-warning">{{trans('admin.in-active')}}</span>
                                                                    @endif
                                                                </td>
                                                                <td class="tb-odr-action">
                                                                    @include('admin.users.buttons.actions', ['id' => $admin->id])
                                                                </td>
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div>{{ $users->links() }}</div>
                                            </div>
                                        </div><!-- .card-preview -->
                                    </div> <!-- nk-block -->
                                </div><!-- .components-preview -->
                            </div>
                        </div>
                    </div>
                </div>

                    <div class="modal fade" id="addUsers">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">استيراد العملاء</h4>
                                    <button class="close" data-dismiss="modal">x</button>
                                </div>
                                {!! Form::open(['url'=>route('admin.users.import'),'files'=>true,'class'=>'form-horizontal form-row-seperated']) !!}
                                <div class="modal-body">
                                    <div class="preview-block">
                                        <div class="row gy-4">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label class="form-label" for="default-06">الملف</label>
                                                    <div class="form-control-wrap">
                                                        <div class="custom-file">
                                                            <input type="file" name="excel_file" class="custom-file-input" id="customFile">
                                                            <label class="custom-file-label" for="customFile">اختر الملف</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    {!! Form::submit('إضافة', ['class' => 'btn btn-primary btn-flat']) !!}
                                    <a class="btn btn-default btn-flat" data-dismiss="modal">{{trans('admin.cancel')}}</a>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>

@endsection
