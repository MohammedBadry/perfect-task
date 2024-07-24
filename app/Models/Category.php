<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{


    protected $table    = 'categories';
    protected $fillable = [
        'id',
        'name_ar',
        'name_en',
        'created_at',
        'updated_at',
    ];

    protected $perPage = 10;
}
