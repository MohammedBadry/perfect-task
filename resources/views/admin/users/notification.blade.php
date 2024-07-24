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
                								{!! Form::open(['url'=>aurl('push-notifications/send'),'method'=>'post','class'=>'form-horizontal form-row-seperated']) !!}

                                                    <div class="nk-wizard-content">
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="topic">المرسل إليه</label>
                                                                    <div class="form-control-wrap">
                                                                        <select class="form-control" name="topic" id="topic">
                                                                            <option value="" selected>اختر التطبيق</option>
                                                                            <option value="ez_client">المستخدمين</option>
                                                                            <option value="ez_delivery">الديلفري</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="title">العنوان</label>
                                                                    <div class="form-control-wrap">
                														{!! Form::text('title', old('title') ,['class'=>'form-control','placeholder'=>'العنوان']) !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row gy-3">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="form-label" for="message">التفاصيل</label>
                                                                    <div class="form-control-wrap">
                														{!! Form::textarea('message', old('message') ,['class'=>'form-control','placeholder'=>'التفاصيل']) !!}
                                                                    </div>
                                                                </div>
                                                            </div><!-- .col -->
                                                        </div><!-- .row -->
                                                        <div class="row gy-3">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <button type="submit" class="btn btn-primary">{{ trans('admin.save') }}</button>
                                                                </div>
                                                            </div>
                                                        </div><!-- .row -->
                                                    </div>
                                                </form>
								</div>
							</div><!-- .card-preview -->
						</div><!-- .nk-block -->
					</div><!-- .components-preview -->
				</div>
			</div>
		</div>
	</div>
@endsection
