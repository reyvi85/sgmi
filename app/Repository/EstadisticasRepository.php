<?php
/**
 * Created by PhpStorm.
 * User: reyvi
 * Date: 7/10/2020
 * Time: 08:40
 */

namespace App\Repository;


use App\Models\Views\ViewStatiscAveria;
use App\User;
use Illuminate\Support\Facades\DB;
use App\Models\NmSistema;
use App\Models\NmUeb;

class EstadisticasRepository
{

    public function getComputadorasStatisc($tablaNomenclador, $foreignKey)
    {
         return DB::table($tablaNomenclador)
                ->select($tablaNomenclador.'.name', $tablaNomenclador.'.id')
                ->selectRaw('COUNT(computadoras.id) as computadoras_count')
                ->join('computadoras', 'computadoras.'.$foreignKey, $tablaNomenclador.'.id')
                ->groupByRaw($tablaNomenclador.'.id')
                ->orderBy('computadoras_count', 'desc')
                ->get();
    }

    public function getUserComputadoras(){
        return User::withcount(['computadoras'=>function($query){
           // $query->orderBy('computadoras_count ', 'DESC');
        }])
            ->where('id', '<>',1)
            ->where('dpto', 1)
            ->orderByRaw('(select count(*) from computadoras where users.id = computadoras.user_id) DESC')
            ->get();
    }

    public function getComponentStatisc($tablaComponente, $tablaNomenclador, $foreignKey, $status=1)
    {
         return DB::table($tablaNomenclador)
                ->select($tablaNomenclador.'.name', $tablaNomenclador.'.id')
                ->selectRaw('COUNT('.$tablaComponente.'.id) as totalComponentes')
                ->where($tablaComponente.'.state', $status)
             ->join($tablaComponente, $tablaComponente.'.'.$foreignKey, $tablaNomenclador.'.id')
                ->groupByRaw($tablaNomenclador.'.id')
                ->orderBy('totalComponentes', 'desc')
                ->get();
    }

    public function getComponetItem($tabla, $campo, $state =1){
        return DB::table($tabla)
            ->select($campo.' as name')
            ->selectRaw('COUNT(id) as totalComponentes')
            ->where('state', $state)
            ->groupBy($campo)
            ->orderBy('totalComponentes', 'desc')
            ->get();
    }

    public function getBoardGeneracion($state =1){
        return $this->getComponentStatisc(
            'motherboards',
            'nm_generacions',
            'nm_generacion_id',
            $state
        );
    }

    public function getBoardFabricante($state =1){
        return $this->getComponentStatisc(
            'motherboards',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getBoardSocket($state =1){
        return $this->getComponetItem('motherboards', 'socket', $state);
    }

    public function getBoardModel($state =1){
        return $this->getComponetItem('motherboards', 'model', $state);
    }

    public function getMicroFabricante($state =1){
        return $this->getComponentStatisc(
            'microprocesadors',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getMicroTipo($state =1){
        return $this->getComponentStatisc(
            'microprocesadors',
            'nm_procesadors',
            'nm_procesador_id',
            $state
        );
    }

    public function getMicroVelocidad($state =1){
        return $this->getComponetItem('microprocesadors', 'velocidad', $state);
    }
/**
 * FUENTES INTERNAS
**/
    public function getFuenteFabricante($state =1){
        return $this->getComponentStatisc(
            'fuentes',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getFuentePotencia($state =1){
        return $this->getComponentStatisc(
            'fuentes',
            'nm_potencias',
            'nm_potencia_id',
            $state
        );
    }

/**
 * DISCO DUROS
**/

    public function getHddFabricante($state =1){
        return $this->getComponentStatisc(
            'hdds',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getHddCapacidad($state =1){
        return $this->getComponentStatisc(
            'hdds',
            'nm_capacidad_hdds',
            'nm_capacidad_hdd_id',
            $state
        );
    }
/**
 * MEMORIAS RAMS
**/

    public function getRAMFabricante($state =1){
        return $this->getComponentStatisc(
            'rams',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getRAMVelocidad($state =1){
        return $this->getComponentStatisc(
            'rams',
            'nm_velocidad_rams',
            'nm_velocidad_ram_id',
            $state
        );
    }

    public function getRAMTipo($state =1){
        return $this->getComponentStatisc(
            'rams',
            'nm_rams',
            'nm_ram_id',
            $state
        );
    }

    /**
     * Lector CD
     **/
    public function getCDFabricante($state =1){
        return $this->getComponentStatisc(
            'lectorcds',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    /**
     * MONITOR
     **/
    public function getMonitorFabricante($state =1){
        return $this->getComponentStatisc(
            'displays',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getMonitorTipo($state =1){
            return $this->getComponentStatisc(
                'displays',
                'nm_monitors',
                'nm_monitor_id',
                $state
            );
        }

    public function getMonitorInch($state =1){
        return $this->getComponentStatisc(
            'displays',
            'nm_inch_monitors',
            'nm_inch_monitor_id',
            $state
        );
    }
/**
     * TECLADO
     **/
    public function getTecladoFabricante($state =1){
        return $this->getComponentStatisc(
            'teclados',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getTecladoTipo($state =1){
            return $this->getComponentStatisc(
                'teclados',
                'nm_conectors',
                'nm_conector_id',
                $state
            );
        }
/**
     * MOUSE
     **/
    public function getMouseFabricante($state =1){
        return $this->getComponentStatisc(
            'ratons',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getMouseTipo($state =1){
            return $this->getComponentStatisc(
                'ratons',
                'nm_conectors',
                'nm_conector_id',
                $state
            );
        }
/**
     * BACKUP
     **/
    public function getBackupFabricante($state =1){
        return $this->getComponentStatisc(
            'backups',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getBackupPotencia($state =1){
            return $this->getComponentStatisc(
                'backups',
                'nm_potencias',
                'nm_potencia_id',
                $state
            );
        }
/**
     * IMPRESORAS
     **/
    public function getPrinterFabricante($state =1){
        return $this->getComponentStatisc(
            'printers',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getPrinterTipo($state =1){
            return $this->getComponentStatisc(
                'printers',
                'nm_printers',
                'nm_printer_id',
                $state
            );
        }

    /**
     * Tarjetas de videos
     **/
    public function getTvideoFabricante($state =1){
        return $this->getComponentStatisc(
            'tvideos',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }
    public function getTvideoCapacidad($state =1){
        return $this->getComponentStatisc(
            'tvideos',
            'nm_velocidad_rams',
            'nm_velocidad_ram_id',
            $state
        );
    }

    /**
     * SPEAKER
     **/
    public function getSpeakerFabricante($state =1){
        return $this->getComponentStatisc(
            'speakers',
            'nm_fabricantes',
            'nm_fabricante_id',
            $state
        );
    }

    public function getStatiscAverias($year = null){
        return ViewStatiscAveria::Year($year)
            ->orderBy('mes', 'ASC')
            ->get();
    }

}