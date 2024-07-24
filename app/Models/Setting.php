<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
	protected $table = 'settings';
	protected $fillable = [
		'sitename_ar',
		'sitename_en',
		'email',
		'logo',
		'icon',
		'address',
		'latitude',
		'longitude',
		'system_status',
		'system_message',
		'theme_setting',
	];
}
