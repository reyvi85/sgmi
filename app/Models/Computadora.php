<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Computadora extends Model
{
    protected $fillable =[
        'nombre',
        'numero_inventario',
        'ip',
        'mac',
        'nm_ueb_id',
        'nm_departamento_id',
        'nm_sistema_id',
        'user_id'
    ];

    public function NmSistema(){
        return $this->belongsTo(NmSistema::class);
    }

    public function NmUeb(){
        return $this->belongsTo(NmUeb::class);
    }

    public function NmDepartamento(){
        return $this->belongsTo(NmDepartamento::class);
    }

    public function lectorCD(){
        return $this->hasMany(Lectorcd::class);
    }

    public function hdds(){
        return $this->hasMany(Hdd::class);
    }

    public function rams(){
        return $this->hasMany(Ram::class);
    }

    public function fuentes(){
        return $this->hasMany(Fuente::class);
    }

    public function teclados(){
        return $this->hasMany(Teclado::class);
    }

    public function ratons(){
        return $this->hasMany(Raton::class);
    }

    public function backups(){
        return $this->hasMany(Backup::class);
    }

    public function monitors(){
        return $this->hasMany(Display::class);
    }

    public function printers(){
        return $this->hasMany(Printer::class);
    }

    public function boards(){
        return $this->hasMany(Motherboard::class);
    }

    public function microprocesadors(){
        return $this->hasMany(Microprocesador::class);
    }

    public function tvideo(){
        return $this->hasMany(Tvideo::class);
    }

    public function speakers(){
        return $this->hasMany(Speaker::class);
    }

    public function sellos(){
      return $this->hasMany(Sello::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    /** M U T A D O R E S**/
    public function setNombreAttribute($value)
    {
        $this->attributes['nombre'] = strtoupper($value);
    }
    public function setMacAttribute($value)
    {
        $this->attributes['mac'] = strtoupper($value);
    }
}
