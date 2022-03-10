<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Reporte extends Model
{
   protected $fillable =[
       'user_id',
       'nm_averia_id',
       'state',
       'fecha_cierre',
       'lugar',
       'num_reporte_etecsa',
       'dpto'
   ];

   public function user(){
       return $this->belongsTo(User::class);
   }

   public function nm_averia(){
       return $this->belongsTo(NmAveria::class);
   }



    public function setLugarAttribute($value)
    {
        $this->attributes['lugar'] = strtoupper($value);
    }

    public function ScopeInformatica($query)
    {
        return $query->where('dpto', 1);
    }

    public function ScopeRadio($query)
    {
        return $query->where('dpto', 2);
    }
}
