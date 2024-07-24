<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminAuthenticated;
use App\Http\Controllers\Admin\Admins;
use App\Http\Controllers\Admin\AdminGroups;
use App\Http\Controllers\Admin\Dashboard;
use App\Http\Controllers\Admin\Settings;
use App\Http\Controllers\Admin\Categories;
use App\Http\Controllers\Admin\Products;
use App\Http\Controllers\Admin\Users;

\L::Panel(app('admin')); ///SetLangredirecttoadmin
\L::LangNonymous(); //RunRouteLang'namespace'=>'Admin',

Route::group(['prefix' => app('admin'), 'middleware' => 'Lang', 'as'=> 'admin.'], function () {
	Route::group(['middleware' => 'admin_guest'], function () {

		Route::get('/', function () {
			return redirect('/admin/login');
		});
		Route::get('login', [AdminAuthenticated::class, 'login_page']);
		Route::post('login', [AdminAuthenticated::class, 'login_post']);
		Route::view('forgot/password', 'admin.auth.forgot_password');

		Route::post('reset/password', [AdminAuthenticated::class, 'reset_password']);
		Route::get('password/reset/{token}', [AdminAuthenticated::class, 'reset_password_final']);
		Route::post('password/reset/{token}', [AdminAuthenticated::class, 'reset_password_change']);
	});

	Route::view('need/permission', 'admin.no_permission');

	Route::group(['middleware' => 'admin:admin'], function () {
		if (class_exists(\UniSharp\LaravelFilemanager\Lfm::class)) {
			Route::group(['prefix' => 'filemanager'], function () {
				\UniSharp\LaravelFilemanager\Lfm::routes();
			});
		}

		////////AdminRoutes/*Start*///////////////
		Route::get('/dashboard', [Dashboard::class, 'home']);

		Route::resource('admingroups', \Admin\AdminGroups::class);

		Route::resource('admins', \Admin\Admins::class);

		Route::resource('categories', \Admin\Categories::class);

		Route::resource('products', \Admin\Products::class);

        Route::resource('users', \Admin\Users::class);

		Route::resource('settings', \Admin\Settings::class);

		Route::any('logout', [AdminAuthenticated::class, 'logout']);
		Route::get('account', [AdminAuthenticated::class, 'account']);
		Route::post('account', [AdminAuthenticated::class, 'account_post']);

		////////AdminRoutes/*End*///////////////
	});
});
