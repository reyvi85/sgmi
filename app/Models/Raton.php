<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Raton extends Model
{
    protected $fillable = [
        'sn',
        'inventario',
        'nm_fabricante_id',
        'nm_conector_id',
        'computadora_id',
        'state'
    ];

    public function nm_fabricante(){
        return $this->belongsTo(NmFabricante::class);
    }

    public function nm_conector(){
        return $this->belongsTo(NmConector::class);
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
