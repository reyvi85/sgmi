<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NmUeb extends Model
{
    protected $fillable =['name'];

    public function computadoras(){
        return $this->hasMany(Computadora::class);
    }

    public function EntradaMedios(){
        return $this->hasMany(EntradaMedio::class);
    }

    public function entregaCintaTonners(){
        return $this->hasMany(EntregaCintaTonner::class);
    }

    public function setNameAttribute($value)
    {
        $this->attributes['name'] = strtoupper($value);
    }
}
