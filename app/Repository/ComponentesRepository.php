<?php
/**
 * Created by PhpStorm.
 * User: Reyvi
 * Date: 22/4/2020
 * Time: 15:26
 */

namespace App\Repository;
use App\Models\Backup;
use App\Models\Computadora;
use App\Models\Display;
use App\Models\Fuente;
use App\Models\Hdd;
use  App\Models\Lectorcd;
use App\Models\Microprocesador;
use App\Models\Motherboard;
use App\Models\Printer;
use App\Models\Ram;
use App\Models\Raton;
use App\Models\Speaker;
use App\Models\Teclado;
use App\Models\Tvideo;
use Illuminate\Support\Facades\Auth;


class ComponentesRepository
{

    /**
     * Componentes constructor.
     */
    public function __construct()
    {

    }

    public function dataPC($request){
        return [
            'nombre'=>$request->nombre,
            'numero_inventario'=>$request->numero_inventario,
            'numero_sello'=>$request->numero_sello,
            'ip'=>$request->ip,
            'mac'=>$request->mac,
            'nm_ueb_id'=>$request->nm_ueb_id,
            'nm_departamento_id'=>$request->nm_departamento_id,
            'nm_sistema_id'=>$request->nm_sistema_id,
            'user_id'=>Auth::id()
        ];
    }

    public function getLectorCDpc($pc, $status = 1)
    {
        return Lectorcd::with('nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getHddPc($pc, $status = 1)
    {
        return Hdd::with('nm_fabricante', 'nm_capacidad_hdd')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getRamPc($pc, $status = 1)
    {
        return Ram::with('nm_ram','nm_fabricante', 'nm_velocidad_ram')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getFuentePc($pc, $status = 1)
    {
        return Fuente::with('nm_potencia','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getTecladoPc($pc, $status = 1)
    {
        return Teclado::with('nm_conector','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getMousePc($pc, $status = 1)
    {
        return Raton::with('nm_conector','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getBackupPc($pc, $status = 1)
    {
        return Backup::with('nm_potencia','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getDispalyPc($pc, $status = 1)
    {
        return Display::with('nm_monitor','nm_fabricante', 'nm_inch_monitor')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getPrinterPc($pc, $status = 1)
    {
        return Printer::with('nm_model_printer', 'nm_model_printer.nm_printer','nm_model_printer.nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getMotherboardPc($pc, $status = 1)
    {
        return Motherboard::with('nm_generacion','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getMicroprocesadorPc($pc, $status = 1)
    {
        return Microprocesador::with('nm_procesador','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getTVideosPc($pc, $status = 1)
    {
        return Tvideo::with('nm_velocidad_ram','nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getSpeakerPc($pc, $status = 1)
    {
        return Speaker::with('nm_fabricante')
            ->Computadora($pc)
            ->Status($status)
            ->orderBy('id','DESC')
            ->get();
    }

    public function getAllComponentsPc($pcID, $state=1){
       return Computadora::with([
           'NmSistema', 'NmUeb', 'NmDepartamento','sellos'=>function($query){
               $query->orderBy('id','DESC');
           },'sellos.user',
           'boards'=>function($query)use($state){
                $query->Status($state);
           },'boards.nm_generacion',
           'microprocesadors'=>function($query)use($state){
               $query->Status($state);
           }, 'microprocesadors.nm_procesador',
           'fuentes'=>function($query)use($state){
               $query->Status($state);
           },'fuentes.nm_potencia',

           'hdds'=>function($query)use($state){
               $query->Status($state);
           }, 'hdds.nm_capacidad_hdd',

           'rams'=>function($query)use($state){
               $query->Status($state);
           },'rams.nm_ram','rams.nm_velocidad_ram',

           'lectorCD'=>function($query)use($state){
               $query->Status($state);
           },

           'monitors'=>function($query)use($state){
               $query->Status($state);
           }, 'monitors.nm_monitor',

          'teclados'=>function($query)use($state){
            $query->Status($state);
          }, 'teclados.nm_conector',

          'ratons'=>function($query)use($state){
            $query->Status($state);
          },'ratons.nm_conector',

          'backups'=>function($query)use($state){
            $query->Status($state);
          }, 'backups.nm_potencia',

           'printers'=>function($query)use($state){
               $query->Status($state);
           }, 'printers.nm_model_printer',

           'tvideo'=>function($query)use($state){
               $query->Status($state);
           }, 'tvideo.nm_velocidad_ram',


       ])->find($pcID);
    }



}