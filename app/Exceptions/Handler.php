<?php
namespace App\Exceptions;

use Exception;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Response;
use Throwable;
use \Illuminate\Validation\ValidationException;
use App\Traits\GeneralTrait;

class Handler extends ExceptionHandler
{
    use GeneralTrait;
	/**
	 * A list of the exception types that are not reported.
	 *
	 * @var array
	 */
	protected $dontReport = [
		//
	];

	/**
	 * A list of the inputs that are never flashed for validation exceptions.
	 *
	 * @var array
	 */
	protected $dontFlash = [
		'current_password',
		'password',
		'password_confirmation',
	];

	protected function invalidJson($request, ValidationException $exception) {
        return $this->returnError($exception->status, trans("auth.invalidData"));
	}

	protected function unauthenticated($request, AuthenticationException $exception) {
		if ($request->expectsJson()) {
            return $this->returnError('401', trans("auth.unauthenticated"));
		}

		return redirect()->guest('login');
	}

	/**
	 * Register the exception handling callbacks for the application.
	 *
	 * @return void
	 */
	public function register() {

		$this->reportable(function (Throwable $e) {
			//
		});
	}
}
