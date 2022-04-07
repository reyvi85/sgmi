<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EntregaBateria extends Model
{
    use HasFactory;

    protected $fillable = [
        'cantidad',
        'numero_inventario',
        'nm_ueb_id',
        'nota'
    ];

    public function nm_ueb(){
        return $this->belongsTo(NmUeb::class);
    }
}
