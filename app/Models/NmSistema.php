<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmSistema extends Model
{
    protected $fillable =['name'];

    public function computadoras(){
        return $this->hasMany(Computadora::class);
    }

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
