<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hdd extends Model
{
    protected $fillable =[
        'sn',
        'model',
        'nm_fabricante_id',
        'nm_capacidad_hdd_id',
        'computadora_id',
        'state'
    ];

    public function nm_fabricante(){
        return $this->belongsTo(NmFabricante::class);
    }

    public function nm_capacidad_hdd(){
        return $this->belongsTo(NmCapacidadHdd::class);
    }

    public function computadora(){
        return $this->belongsTo(Computadora::class);
    }

    /** M U T A D O R E S */
    public function setSnAttribute($value)
    {
        $this->attributes['sn'] = strtoupper($value);
    }

    public function setModelAttribute($value)
    {
        $this->attributes['model'] = strtoupper($value);
    }

    /** S C O P E */
    public function ScopeComputadora($query, $pc)
    {
        return $query->where('computadora_id', $pc);
    }

    public function ScopeStatus($query, $status)
    {
        return $query->where('state', $status);
    }
}
