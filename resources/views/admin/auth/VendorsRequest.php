<?php
namespace App\Http\Controllers\Validations;

use Illuminate\Foundation\Http\FormRequest;

class VendorsRequest extends FormRequest {

	/**
	 *
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize() {
		return true;
	}

	/**
	 *
	 * Get the validation rules that apply to the request.
	 *
	 * @return array (onCreate,onUpdate,rules) methods
	 */
	protected function onCreate() {
		return [
			'name' => 'required|string',
			'email' => 'required|email|unique:admins',
			'mobile' => 'required|regex:/[0-9]{8}/|unique:admins',
			'photo_profile' => '' . it()->image() . '|nullable|sometimes',
			'password' => 'required|confirmed|max:255|min:6',
			'about_company' => 'required|string',
			'Commercial_registration_type' => 'required|string',
			'year_founded' => 'required|string',
			'employees_number' => 'required|string',
			//'category_id' => 'required|exists:categories,id',
			//'address' => 'required',
			//'latitude' => 'required',
			//'longitude' => 'required',
			//'group_id' => 'required|numeric|exists:admin_groups,id',
		];
	}

	protected function onUpdate() {
		return [
			'name' => 'required|string',
			'email' => 'required|email|unique:admins,email,' . request()->segment(3),
			'mobile' => 'required|regex:/[0-9]{8}/|unique:admins,mobile,' . request()->segment(3),
			'photo_profile' => '' . it()->image() . '|nullable|sometimes',
			'password' => 'sometimes|nullable|max:255|min:6',
			'about_company' => 'required|string',
			'Commercial_registration_type' => 'required|string',
			'year_founded' => 'required|string',
			'employees_number' => 'required|string',
			//'category_id' => 'required|exists:categories,id',
			//'address' => 'sometimes|nullable',
			//'latitude' => 'sometimes|nullable',
			//'longitude' => 'sometimes|nullable',
			//'group_id' => 'required|numeric|exists:admin_groups,id',
		];
	}

	public function rules() {
		return request()->isMethod('put') || request()->isMethod('patch') ?
		$this->onUpdate() : $this->onCreate();
	}

	/**
	 *
	 * Get the validation attributes that apply to the request.
	 *
	 * @return array
	 */
	public function attributes() {
		return [
			'name' => trans('admin.name'),
			'email' => trans('admin.email'),
			'mobile' => trans('admin.mobile'),
			'photo_profile' => trans('admin.photo_profile'),
			'password' => trans('admin.password'),
			'category_id' => trans('admin.category_id'),
			'about_company' => trans('admin.about_company'),
			'Commercial_registration_type' => trans('admin.Commercial_registration_type'),
			'year_founded' => trans('admin.year_founded'),
			'employees_number' => trans('admin.employees_number'),
			'address' => trans('admin.address'),
			'latitude' => trans('admin.latitude'),
			'longitude' => trans('admin.longitude'),
		];
	}

	/**
	 *
	 * response redirect if fails or failed request
	 *
	 * @return redirect
	 */
	public function response(array $errors) {
		return $this->ajax() || $this->wantsJson() ?
		response([
			'status' => false,
			'StatusCode' => 422,
			'StatusType' => 'Unprocessable',
			'errors' => $errors,
		], 422) :
		back()->withErrors($errors)->withInput(); // Redirect back
	}

}
