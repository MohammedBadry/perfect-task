<?php
namespace App\Http\Middleware;

use Closure;

class VendorGuest {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @param  string|null  $guard
	 * @return mixed
	 */
	public function handle($request, Closure $next, $guard = null) {
		if (admin()->user() && admin()->user()->is_vendor==1) {
			return redirect(url('vendor/dashboard'));
		}
		return $next($request);

	}
}
