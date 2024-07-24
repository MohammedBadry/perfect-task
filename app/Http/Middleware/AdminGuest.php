<?php
namespace App\Http\Middleware;

use Closure;

class AdminGuest {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @param  string|null  $guard
	 * @return mixed
	 */
	public function handle($request, Closure $next, $guard = null) {
		if (admin()->user() && admin()->user()->is_vendor==0) {
			//return redirect(aurl('/'));
			return redirect(url(request()->segment('1').'/dashboard'));
		}
		return $next($request);

	}
}
