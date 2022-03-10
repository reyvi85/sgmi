<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmCapacidadHdd extends Model
{
    protected $fillable =['name'];

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
