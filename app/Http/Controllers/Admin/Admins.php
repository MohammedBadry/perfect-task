<?php
namespace App\Http\Controllers\Admin;
use App\DataTables\AdminsDataTable;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Validations\AdminsRequest;
use App\Models\Admin;
use App\Models\Category;

class Admins extends Controller {

	public function __construct() {

		$this->middleware('AdminRole:admins_show', [
			'only' => ['index', 'show'],
		]);
		$this->middleware('AdminRole:admins_add', [
			'only' => ['create', 'store'],
		]);
		$this->middleware('AdminRole:admins_edit', [
			'only' => ['edit', 'update'],
		]);
		$this->middleware('AdminRole:admins_delete', [
			'only' => ['destroy', 'multi_delete'],
		]);
	}

	/**
	 * Display a listing of the resource.
	 * @return \Illuminate\Http\Response
	 */
	public function index(AdminsDataTable $admins) {
		$admins = Admin::admins()->paginate();
		return view('admin.admins.index', ['title' => trans('admin.admins'), 'admins' => $admins]);
	}

	/**
	 * Show the form for creating a new resource.
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$categories = Category::get();
		return view('admin.admins.create', ['title' => trans('admin.create'), 'categories' => $categories]);
	}

	/**
	 * Store a newly created resource in storage.
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response Or Redirect
	 */
	public function store(AdminsRequest $request) {
		$data = $request->except("_token", "_method");
		if (request()->hasFile('photo_profile')) {
			$data['photo_profile'] = it()->upload('photo_profile', 'admins');
		} else {
			$data['photo_profile'] = "";
		}

		$data['is_vendor'] = 0;
		$data['status'] = 1;
		$data['password'] = bcrypt(request('password'));

		Admin::create($data);
		return redirectWithSuccess(url(request()->segment('1').'/admins'), trans('admin.added'));
	}

	/**
	 * Display the specified resource.
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id) {
		$admins = Admin::find($id);
		return is_null($admins) || empty($admins) ?
		backWithError(trans("admin.undefinedRecord")) :
		view('admin.admins.show', [
			'title' => trans('admin.show'),
			'admins' => $admins,
		]);
	}

	/**
	 * edit the form for creating a new resource.
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id) {
		$admins = Admin::find($id);
		$categories = Category::get();
		return is_null($admins) || empty($admins) ?
		backWithError(trans("admin.undefinedRecord")) :
		view('admin.admins.edit', [
			'title' => trans('admin.edit'),
			'admins' => $admins,
			'categories' => $categories,
		]);
	}

	/**
	 * update a newly created resource in storage.
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function updateFillableColumns() {
		$fillableCols = [];
		foreach (array_keys((new AdminsRequest)->attributes()) as $fillableUpdate) {
			if (!is_null(request($fillableUpdate))) {
				$fillableCols[$fillableUpdate] = request($fillableUpdate);
			}
		}
		return $fillableCols;
	}

	public function update(AdminsRequest $request, $id) {
		// Check Record Exists
		$admins = Admin::find($id);
		if (is_null($admins) || empty($admins)) {
			return backWithError(trans("admin.undefinedRecord"));
		}
		$data = $this->updateFillableColumns();

		if (!empty(request('password'))) {
			$data['password'] = bcrypt(request('password'));
		}

		$data['status'] = request('status');

		if (request()->hasFile('photo_profile')) {
			it()->delete($admins->photo_profile);
			$data['photo_profile'] = it()->upload('photo_profile', 'admins');
		}
		Admin::where('id', $id)->update($data);
		return redirectWithSuccess(url(request()->segment('1').'/admins'), trans('admin.updated'));
	}

	/**
	 * destroy a newly created resource in storage.
	 * @param  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id) {
		$admins = Admin::find($id);
		if (is_null($admins) || empty($admins)) {
			return backWithError(trans('admin.undefinedRecord'));
		}
		if (!empty($admins->photo_profile)) {
			it()->delete($admins->photo_profile);
		}

		$admins->delete();
		return backWithSuccess(trans('admin.deleted'));

	}

}