<?php
/**
 * Created by PhpStorm.
 * User: reyvi
 * Date: 27/1/2020
 * Time: 11:15
 */

namespace App\Repository;
use App\Models\NmAveria;
use App\Models\NmCapacidadHdd;
use App\Models\NmConector;
use App\Models\NmDepartamento;
use App\Models\NmFabricante;
use App\Models\NmGeneracion;
use App\Models\NmInchMonitor;
use App\Models\NmModelPrinter;
use App\Models\NmMonitor;
use App\Models\NmPotencia;
use App\Models\NmPrinter;
use App\Models\NmProcesador;
use App\Models\NmRam;
use App\Models\NmSistema;
use App\Models\NmUeb;
use App\Models\NmVelocidadRam;
use App\Models\Views\ViewStatiscAveria;

class NomencladoresRepository
{

    public function getFabricantes(){
        return NmFabricante::orderBy('name','ASC')->get();
    }

    public function getSistemaOperativo(){
        return NmSistema::orderBy('name','ASC')->get();
    }

    public function getDepartamentos(){
        return NmDepartamento::orderBy('name','ASC')->get();
    }

    public function getUEBs(){
        return NmUeb::orderBy('name','ASC')->get();
    }

    public function getCapacidadHDD(){
        return NmCapacidadHdd::orderBy('name','ASC')->get();
    }

    public function getTipoRam(){
        return NmRam:: orderBy('name','ASC')->get();
    }

    public function getVelocidadRam(){
        return NmVelocidadRam::orderBy('name','ASC')->get();
    }

    public function getPotencia(){
        return NmPotencia::orderBy('name','ASC')->get();
    }

    public function getConector(){
        return NmConector::orderBy('name','ASC')->get();
    }

    public function getMonitorType(){
        return NmMonitor::orderBy('name','ASC')->get();
    }

    public function getPrinterType(){
        return NmPrinter::orderBy('name','ASC')->get();
    }
    public function getModelPrinter(){
        return NmModelPrinter::orderBy('name','ASC')->get();
    }

    public function getBoardGeneracion(){
        return NmGeneracion::orderBy('name','ASC')->get();
    }

    public function getProcesadorType(){
        return NmProcesador::orderBy('name','ASC')->get();
    }

    public function getInchMonitor(){
        return NmInchMonitor::orderBy('name','ASC')->get();
    }

    public function getAverias(){
        return NmAveria::Departamento()->orderBy('name','ASC')->get();
    }


    public function getYearsAverias(){
        return ViewStatiscAveria::groupBy('anno')->get()->pluck('anno');
    }

}