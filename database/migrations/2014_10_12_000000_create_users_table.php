<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('users', function (Blueprint $table) {
			$table->id();
			$table->string('name');
			$table->string('email')->unique();
			$table->timestamp('email_verified_at')->nullable();
			$table->string('mobile')->unique();
			$table->string('whatsapp')->unique()->nullable();
			$table->string('otp_code')->nullable();
			$table->string('otp_trals')->default(0);
			$table->string('password');
			$table->string('fcm_token')->nullable();
			$table->string('device_type')->nullable();
			$table->string('national_id')->nullable();
			$table->string('car_front_image')->nullable();
			$table->string('car_back_image')->nullable();
			$table->string('licence_image')->nullable();
			$table->string('type');
			$table->string('address')->nullable();
			$table->string('latitude')->nullable();
			$table->string('longitude')->nullable();
			$table->boolean('status')->default(0);
			$table->boolean('approved')->default(0);
			$table->enum('payment_status', ['pending', 'paid'])->default('pending');
			$table->string('payment_id')->nullable();
			$table->string('package_id')->nullable();
			$table->string('expire_date')->nullable();
			$table->float('wallet_balance')->nullable();
			$table->boolean('read')->default(0);
			$table->string('otp_date')->nullable();
			$table->string('otp_verify_date')->nullable();
			$table->rememberToken();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down() {
		Schema::dropIfExists('users');
	}
}
