<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class NmAveria extends Model
{
    protected $fillable = ['name', 'dpto'];

    public function reportes(){
        return $this->hasMany(Reporte::class);
    }

    public function ScopeDepartamento($query)
    {
        return $query->where('dpto', Auth::user()->dpto);
    }

}
