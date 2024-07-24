<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AdminAuthenticated;
use App\Http\Controllers\Admin\Dashboard;
use App\Http\Controllers\Admin\Products;
use App\Http\Controllers\Admin\Orders;
use App\Http\Controllers\Admin\Deliveries;
use App\Http\Controllers\Admin\Branches;
use App\Http\Controllers\Admin\WithdrawalRequests;

\L::Panel(app('admin')); ///SetLangredirecttoadmin
\L::LangNonymous(); //RunRouteLang'namespace'=>'Admin',

Route::group(['prefix' => 'vendor', 'middleware' => 'Lang', 'as'=> 'vendor.'], function () {
	Route::group(['middleware' => 'vendor_guest'], function () {

		Route::get('/', function () {
			return redirect('/vendor/login');
		});
		Route::get('register', [AdminAuthenticated::class, 'register_page']);
		Route::post('register', [AdminAuthenticated::class, 'register_post']);
		Route::get('login', [AdminAuthenticated::class, 'login_page']);
		Route::post('login', [AdminAuthenticated::class, 'login_post']);
		Route::view('forgot/password', 'admin.auth.forgot_password');

		Route::post('reset/password', [AdminAuthenticated::class, 'reset_password']);
		Route::post('password/reset/{token}', [AdminAuthenticated::class, 'reset_password_final']);
		Route::post('password/reset/{token}', [AdminAuthenticated::class, 'reset_password_change']);
	});

	Route::view('need/permission', 'admin.no_permission');

	Route::group(['middleware' => 'vendor:admin'], function () {
		if (class_exists(\UniSharp\LaravelFilemanager\Lfm::class)) {
			Route::group(['prefix' => 'filemanager'], function () {
				\UniSharp\LaravelFilemanager\Lfm::routes();
			});
		}

		////////AdminRoutes/*Start*///////////////
		Route::get('/dashboard', [Dashboard::class, 'home']);
		Route::any('logout', [AdminAuthenticated::class, 'logout']);
		Route::get('account', [AdminAuthenticated::class, 'account']);
		Route::post('account', [AdminAuthenticated::class, 'account_post']);

		Route::get('categories/getsub/{id}', [Products::class, 'getSub']);
		Route::resource('products', \Admin\Products::class);
		Route::get('p/features/{id}', [Products::class, 'deleteFeature'])->name('products.features.destroy');

		Route::resource('order-statuses', \Admin\OrderStatuses::class);
		Route::get('/orders', [Orders::class, 'index'])->name('orders.index');
		Route::get('/orders/{id}', [Orders::class, 'show'])->name('orders.show');
		Route::delete('/orders/{id}', [Orders::class, 'destroy'])->name('orders.destroy');
		Route::put('/orders/{id}/status/{status}', [Orders::class, 'changeStatus'])->name('orders.changeStatus');
		Route::get('/orders/notification/mark-all-as-read', [Orders::class, 'markAllAsRead'])->name('orders.mark-all-as-read');
		Route::get('/orders/location/preview/', [Orders::class, 'locationPreview'])->name('orders.location-preview');

		Route::resource('branches', \Admin\Branches::class);
		Route::get('/branches/{id}/ratings/', [Branches::class, 'branchRatings'])->name('branches.ratings');
		Route::resource('deliveries', \Admin\Deliveries::class);


		Route::resource('withdrawal-requests', \Admin\WithdrawalRequests::class);
		////////AdminRoutes/*End*///////////////
	});
});


