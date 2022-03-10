<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmDepartamento extends Model
{
    protected $fillable =['name'];

    public function computadoras(){
        return $this->hasMany(Computadora::class);
    }

    public function averias(){
        return $this->hasMany(Averia::class);
    }

    public function EntradaMedios(){
        return $this->hasMany(EntradaMedio::class);
    }

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
