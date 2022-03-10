<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmVelocidadRam extends Model
{
    protected $fillable =  ['name'];

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
