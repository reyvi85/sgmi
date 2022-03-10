<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ram extends Model
{
    protected $fillable =[
        'sn',
        'nm_velocidad_ram_id',
        'nm_fabricante_id',
        'nm_ram_id',
        'computadora_id'
    ];

    public function nm_ram(){
        return $this->belongsTo(NmRam::class);
    }

    public function nm_fabricante(){
        return $this->belongsTo(NmFabricante::class);
    }

    public function nm_velocidad_ram(){
        return $this->belongsTo(NmVelocidadRam::class);
    }

    public function computadora(){
        return $this->belongsTo(Computadora::class);
    }

    /** M U T A D O R E S */
    public function setSnAttribute($value)
    {
        $this->attributes['sn'] = strtoupper($value);
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
