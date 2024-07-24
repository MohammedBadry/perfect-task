<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAdminsTable extends Migration {
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up() {
		Schema::create('admins', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name');
			$table->string('email')->unique();
			$table->string('mobile')->unique();
			$table->string('photo_profile')->nullable();
			$table->string('password');
			$table->bigInteger('group_id')->unsigned()->nullable();
			$table->integer('category_id')->nullable();
			$table->boolean('is_vendor')->default(1);
			$table->string('address')->nullable();
			$table->string('latitude')->nullable();
			$table->string('longitude')->nullable();
			$table->boolean('status')->default(0);
			$table->boolean('read')->default(0);
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
		Schema::dropIfExists('admins');
	}
}
