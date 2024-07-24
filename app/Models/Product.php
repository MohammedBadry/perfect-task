<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $table    = 'products';

    protected $fillable = [
        'id',
        'name_ar',
        'name_en',
        'description_ar',
        'description_en',
        'category_id',
        'image',
        'created_at',
        'updated_at',
    ];

    protected $perPage = 10;

    /**
     * category_id relation method
     * @param void
     * @return object data
     */
    public function category()
    {
        return $this->belongsTo(\App\Models\Category::class);
    }

}
