<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmGeneracion extends Model
{
    protected $fillable =['name'];

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
