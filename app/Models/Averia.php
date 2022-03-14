<?php

namespace App\Models;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Averia extends Model
{
    protected $fillable = [
        'user_id',
        'nm_averia_id',
        'nm_departamento_id',
        'numero_inventario',
        'nombre',
        'lugar',
        'num_reporte_etecsa',
        'estado',
        'description',
        'solucion',
        'solucion_user',
        'flag'
    ];

    public function nm_averia(){
        return $this->belongsTo(NmAveria::class);
    }

    public function nm_departamento(){
        return $this->belongsTo(NmDepartamento::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function userSolucion(){
        return $this->belongsTo(User::class,'solucion_user');
    }

    public function setNombreAttribute($value)
    {
        $this->attributes['nombre'] = strtoupper($value);
    }

    public function setReporteEtecsaAttribute($value)
    {
        $this->attributes['num_reporte_etecsa'] = strtoupper($value);
    }
}
