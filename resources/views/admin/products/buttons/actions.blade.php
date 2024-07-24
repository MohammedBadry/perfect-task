
<div class="dropdown">
	<a class="text-soft dropdown-toggle btn btn-icon btn-trigger" data-toggle="dropdown" data-offset="-8,0"><em class="icon ni ni-more-h"></em></a>
	<div class="dropdown-menu dropdown-menu-right dropdown-menu-xs">
		<ul class="link-list-plain">
			<li><a href="{{ url(request()->segment('1').'/products/'.$id)}}" class="text-primary"><em class="icon ni ni-eye-fill"></em> {{trans('admin.show')}}</a></li>
			<li><a href="{{ url(request()->segment('1').'/products/'.$id.'/edit')}}" class="text-primary"><em class="icon ni ni-edit-fill"></em> {{trans('admin.edit')}}</a></li>
			<li><a href="#" data-toggle="modal" data-target="#delete_record{{$id}}" class="text-danger"><em class="icon ni ni-trash-fill text-danger"></em> {{trans('admin.delete')}}</a></li>
		</ul>
	</div>
</div>
<div class="modal fade" id="delete_record{{$id}}">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">{{trans('admin.delete')}}</h4>
				<button class="close" data-dismiss="modal">x</button>
			</div>
			<div class="modal-body">
				<i class="fa fa-exclamation-triangle"></i> {{trans('admin.ask_del')}} {{trans('admin.id')}} ({{$id}})
			</div>
			<div class="modal-footer">
				{!! Form::open([
				'method' => 'DELETE',
				'route' => [request()->segment('1').'.products.destroy', $id]
				]) !!}
				{!! Form::submit(trans('admin.approval'), ['class' => 'btn btn-danger btn-flat']) !!}
				<a class="btn btn-default btn-flat" data-dismiss="modal">{{trans('admin.cancel')}}</a>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>
