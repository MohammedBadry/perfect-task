<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class VendorAutenticated {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @param  string|null  $guard
	 * @return mixed
	 */
	public function handle($request, Closure $next, $guard = null) {
		if (Auth::guard($guard)->check() && admin()->user()->is_vendor==1) {
			return $next($request);
		}
		//return redirect(aurl('login'));
		return redirect(url(request()->segment('1').'/login'));

	}
}
