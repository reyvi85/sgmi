<?php

namespace App\Repository;

use App\Models\Views\Pc,
    App\Models\Views\ViewHdd,
    App\Models\Views\ViewMotherboard,
    App\Models\Views\ViewMicroprocesador,
    App\Models\Views\ViewFuente,
    App\Models\Views\ViewRam,
    App\Models\Views\ViewDisplay,
    App\Models\Views\ViewLectorcd,
    App\Models\Views\ViewTeclado,
    App\Models\Views\ViewRaton
    ;
use App\Models\Views\ViewAveria;
use App\Models\Views\ViewBackup;
use App\Models\Views\ViewPrinter;
use App\Models\Views\ViewSpeaker;
use App\Models\Views\ViewTvideo;
use Illuminate\Support\Facades\Auth;

class DataTableDataRepository
{
    public function getHdds($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewHdd::query()
            ->where('state',$state))
             ->addColumn('btn','list/botonera/hdd')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getBoard($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewMotherboard::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/board')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getMicro($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewMicroprocesador::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/microprocesador')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getFuentes($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewFuente::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/fuente')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getRams($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewRam::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/rams')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getLectorcd($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewLectorcd::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/lectorCD')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getDisplay($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewDisplay::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/display')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getTeclado($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewTeclado::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/teclados')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getMouse($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewRaton::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/mouse')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getBackup($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewBackup::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/backups')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getPrinters($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewPrinter::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/printers')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getTvideo($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewTvideo::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/printers')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getSpeaker($state=null)
    {
        $state = (is_null($state))?1:$state;
        return datatables()->eloquent(ViewSpeaker::query()
            ->where('state',$state))
            ->addColumn('btn','list/botonera/speaker')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getAverias($dpto = null, $state=null)
    {
        $dpto = (is_null($dpto))?1:$dpto;
        return datatables()->eloquent(ViewAveria::query()
            ->where(function ($q) use($state, $dpto){
                $q->where('flag',$dpto);
                if(is_null($state)){
                    $q->where('num_estado','<',3);
                }else{
                    $q->where('num_estado',$state);
                }
            }))

            ->addColumn('btn','control-averias/botones')
            ->rawColumns(['btn'])
            ->toJson();
    }

    public function getAveriasPublicas()
    {
        return datatables()->eloquent(ViewAveria::query()
            ->where('num_estado','<',3))
            ->addColumn('btn','control-averias/botones_publico')
            ->rawColumns(['btn'])
            ->toJson();
    }
}
