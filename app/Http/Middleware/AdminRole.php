<?php

namespace App\Http\Middleware;

use Closure;

class AdminRole {
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next, $role) {
		if (!admin()->user()->role($role)) {
			return redirect(url(request()->segment('1').'/need/permission'));
		}
		return $next($request);
	}
}
