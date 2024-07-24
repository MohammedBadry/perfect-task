<?php
namespace App\Http\Requests\Admin;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class ProductsRequest extends FormRequest {

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
            'name_ar'=>'required',
            'name_en'=>'required',
            'description_ar'=>'required',
            'description_en'=>'required',
            'category_id'=>'required|exists:categories,id',
            'image'=>'required|image',
		];
	}

	protected function onUpdate() {
		return [
            'name_ar'=>'required',
            'name_en'=>'required',
            'name_urdu'=>'sometimes|nullable',
            'description_ar'=>'required',
            'description_en'=>'required',
            'category_id'=>'required|exists:categories,id',
            'image'=>'nullable|image',
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
            'name_ar'=>trans('admin.name_ar'),
            'name_en'=>trans('admin.name_en'),
            'description_ar'=>trans('admin.name_ar'),
            'description_en'=>trans('admin.name_en'),
            'category_id'=>trans('admin.category_id'),
            'image'=>trans('admin.image'),
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
