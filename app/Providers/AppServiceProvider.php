<?php
namespace App\Providers;
use Illuminate\Pagination\Paginator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Support\Facades\RateLimiter;
use App\Traits\GeneralTrait;

class AppServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap any application services.
	 *
	 * @return void
	 */

	public function boot() {

        $this->configureRateLimiting();
        
		//   \URL::forceScheme('https');
		Paginator::useBootstrap();

		app()->singleton('admin', function () {
				return 'admin';
			});
		if (file_exists(base_path('config/itconfiguration.php'))) {
			Schema::defaultStringLength(config('itconfiguration.SchemadefaultStringLength'));
			if (config('itconfiguration.ForeignKeyConstraints')) {
				Schema::enableForeignKeyConstraints();
			} else {
				Schema::disableForeignKeyConstraints();
			}
		}
	}

	/**
	 * Register any application services.
	 *
	 * @return void
	 */

	public function register() {
		//
	}
	
    protected function configureRateLimiting(): void
    {
        RateLimiter::for('global', function (Request $request) {
            return Limit::perMinute(5)->by(optional($request->user())->id ?: $request->ip())->response(function () {
                return response()->json([
                        'status' => false,
                        'code' => "429",
                        'message' => trans('auth.throttlleMessage'),
                        'data' => ''
                    ]);
                
            });
       });
        
    }
}
