<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\AdminResetPassword;
use App\Models\Admin;
use App\Models\Category;
use App\Models\VendorCategory;
use App\Http\Controllers\Validations\VendorsRequest;
use Carbon\Carbon;
use App\Events\NewVendorNotification;
use DB;
use Mail;

class AdminAuthenticated extends Controller {

	public function login_page() {
		return view('admin.auth.login', ['title' => trans('admin.login_page')]);
	}

	public function login_post() {
		$rememberme = request('rememberme') == 1 ? true : false;
		if (admin()->attempt(['email' => request('email'), 'password' => request('password')], $rememberme)) {
			//return redirect(aurl('/dashboard'));
			if(admin()->user()->status==1) {
				return redirect(url(request()->segment('1').'/dashboard'));
			} else {
				admin()->logout();
				session()->flash('error', trans('حسابك قيد المراجعة'));
				return redirect(url(request()->segment('1').'/login'));
			}
		} else {
			session()->flash('error', trans('admin.error_loggedin'));
			return back();
		}
	}

	public function register_page() {
		$categories = Category::main()->get();
		return view('admin.auth.register', ['title' => trans('admin.register_page'), 'categories' => $categories]);
	}

	public function register_post(VendorsRequest $request) {

		$data = $request->except("_token", "_method", "category_id");
		if (request()->hasFile('photo_profile')) {
			$data['photo_profile'] = it()->upload('photo_profile', 'admins');
		} else {
			$data['photo_profile'] = "";
		}

		$data['password'] = bcrypt(request('password'));
		$data['group_id'] = 2;

		\DB::beginTransaction();
		$vendor = Admin::create($data);
        if(request()->hasFile('commercial_register')){
            $vendor->commercial_register = it()->upload('commercial_register','admins/'.$vendor->id);
            $vendor->save();
        }
        if(request()->hasFile('tax_certificate')){
            $vendor->tax_certificate = it()->upload('tax_certificate','admins/'.$vendor->id);
            $vendor->save();
        }

        if($request->category_id!=[]) {
            for ($i = 0; $i < count($request->category_id); $i++) {
				VendorCategory::create([
					'vendor_id' => $vendor->id,
					'category_id' => $request->category_id[$i],
				]);
            }
        }
		\DB::commit();

        //send notification to admin
        //event(new NewVendorNotification($vendor));
		session()->flash('success', "تم إنشاء حسابك بنجاح وفي انتظار مراجعة الأدمن");
		return back();
	}

	public function logout() {
		admin()->logout();
		//return redirect(aurl('/dashboard'));
		return redirect(url(request()->segment('1').'/login'));
	}

	public function reset_password_change($tokenstr) {

		$this->validate(request(),
			[
				'password' => 'required|min:6|confirmed',
				'password_confirmation' => 'required',
				'email' => 'required|email',
			], [], [
				'password' => trans('admin.password'),
				'password_confirmation' => trans('admin.password_confirmation'),
			]);
		$token = DB::table('password_resets')->where('token', $tokenstr)->where('created_at', '>', Carbon::now()->subHours(2))->first();

		if (!empty($token)) {
			$admin = Admin::where('email', $token->email)->update(['password' => bcrypt(request('password'))]);
			session()->flash('success', trans('admin.password_is_changed'));
			if (request()->has('andlogin')) {
				auth()->guard('admin')->attempt(['email' => $token->email, 'password' => request('password')]);
				//return redirect(aurl('/'));
				return redirect(url(request()->segment('1').'/'));
			}
			DB::table('password_resets')->where('token', $tokenstr)->delete();
			//return redirect(aurl('login'));
			$user = Admin::where('email', $token->email)->first();
   			return redirect(url('admin/login'));
		} else {
			session()->flash('error', trans('admin.time_token_ended'));
			//return redirect(aurl('login'));
			return redirect(url(request()->segment('1').'/login'));
		}
	}

	public function reset_password_final($token) {

		$token = DB::table('password_resets')->where('token', $token)->where('created_at', '>', Carbon::now()->subHours(2))->first();

		empty($token) ? session()->flash('error', trans('admin.time_token_ended')) : '';

		return !empty($token) ? view('admin.auth.reset_password', ['token' => $token]) :
		//redirect(aurl('login'));
		redirect(url(request()->segment('1').'/login'));

	}
	public function reset_password() {
		$user = Admin::where('email', request('email'))->first();
		if (!empty($user)) {
			$token = app('auth.password.broker')->createToken($user);
			$data = DB::table('password_resets')->insert([
				'email' => request('email'),
				'token' => $token,
				'created_at' => Carbon::now(),
			]);
			$sendmail = Mail::to(request('email'))->send(new AdminResetPassword([
				//'url' => aurl('password/reset/' . $token),
				'url' => url(request()->segment('1').'/password/reset/' . $token),
				'data' => $user,
			]));
			session()->flash('success', trans('admin.reset_link_sent'));
			//return redirect(aurl('forgot/password'));
			return redirect(url(request()->segment('1').'/forgot/password'));
		} else {
			session()->flash('error', trans('admin.email_not_found'));
			//return redirect(aurl('forgot/password'));
			return redirect(url(request()->segment('1').'/forgot/password'));
		}
	}

	public function account() {
		return view('admin.auth.account', ['title' => trans('admin.account')]);
	}

	public function account_post() {

		$rules = [
			'name' => 'required',
			'email' => 'required|email|unique:admins,email,' . admin()->user()->id,
			'password' => 'sometimes|nullable|confirmed',
			'password_confirmation' => '',
			'photo_profile' => 'sometimes|nullable|' . it()->image(),
		];
		$data = $this->validate(request(), $rules, [], [
			'name' => trans('admin.name'),
			'email' => trans('admin.email'),
			'password' => trans('admin.password'),
			'password_confirmation' => '',
		]);
		///// Check the Already Password ///////
		if (!empty(request('password')) && \Hash::check(request('password'), admin()->user()->password)) {
			session()->flash('error', trans('admin.the_password_is_old'));
			return back();
		}
		///// Check the Already Password ///////
		unset($data['password_confirmation']);
		if (!empty(request('password'))) {
			$data['password'] = bcrypt(request('password'));
		} else {
			unset($data['password']);
		}
		if (request()->hasFile('photo_profile')) {
			it()->delete(admin()->user()->photo_profile);
			$data['photo_profile'] = it()->upload('photo_profile', 'admin/' . admin()->user()->id);
		}
		admin()->user()->update($data);
		session()->flash('success', !empty(request('password')) ? trans('admin.updated_account_and_password') : trans('admin.updated'));
		return back();
	}

}
