<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use App\Traits\GeneralTrait;

class CustomerMiddlware
{
    use GeneralTrait;
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @param  string|null  $guard
	 * @return mixed
	 */
	public function handle($request, Closure $next, $guard = null) {
		if (auth()->guard('api')->user()->type!='user') {
            return $this->returnError('401', trans('auth.unauthenticated'));
		}

		return $next($request);
	}
}
