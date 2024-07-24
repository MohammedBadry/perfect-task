<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class Settings extends Controller {

	public function __construct() {

		$this->middleware('AdminRole:settings_show', [
			'only' => ['index', 'show'],
		]);
		$this->middleware('AdminRole:settings_edit', [
			'only' => ['store'],
		]);

	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		return view('admin.settings.index', ['title' => trans('admin.settings')]);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		$rules = [
			'sitename_ar' => 'sometimes|nullable',
			'sitename_en' => 'sometimes|nullable',
			'email' => 'sometimes|nullable',
			'logo' => 'sometimes|nullable|' . it()->image(),
			'icon' => 'sometimes|nullable|' . it()->image(),
		];

		$data = $this->validate(request(), $rules, [], [
			'sitename_ar' => trans('admin.sitename_ar'),
			'sitename_en' => trans('admin.sitename_en'),
			'email' => trans('admin.email'),
			'logo' => trans('admin.logo'),
			'icon' => trans('admin.icon'),
		]);
		if (request()->hasFile('logo')) {
			$data['logo'] = it()->upload('logo', 'setting');
		}
		if (request()->hasFile('icon')) {
			$data['icon'] = it()->upload('icon', 'setting');
		}
		Setting::orderBy('id', 'desc')->update($data);
		session()->flash('success', trans('admin.updated'));

		if(request()->page!='') {
			return redirect(url(request()->segment('1').'/settings').'/?page='.request()->page);
		}
		return redirect(url(request()->segment('1').'/settings'));

	}

}
