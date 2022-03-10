<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Display;
//use Illuminate\Http\Request;

use App\Http\Requests\DisplayRequest;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class DisplayController extends Controller
{
    protected $nomencladores;
    protected $componentes;
    protected $estadistica;

    /**
     * LectorcdController constructor.
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository,
                                ComponentesRepository $componentesRepository,
                                EstadisticasRepository $estadisticasRepository)
    {
        $this->nomencladores = $nomencladoresRepository;
        $this->componentes = $componentesRepository;
        $this->estadistica = $estadisticasRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stastFabricante = $this->estadistica->getMonitorFabricante();
        $stastTipo = $this->estadistica->getMonitorTipo();
        $stastInch = $this->estadistica->getMonitorInch();
        return view('list.lisMonitor', compact('stastFabricante', 'stastTipo', 'stastInch'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function displayPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $tipo = $this->nomencladores->getMonitorType();
        $inch = $this->nomencladores->getInchMonitor();
        $lista = $this->componentes->getDispalyPc($computadora->id);
        return view('componentes.monitor', compact('computadora', 'fabricantes','tipo', 'inch','lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DisplayRequest $request, Computadora $computadora)
    {
        $computadora->monitors()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('monitor.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Display  $display
     * @return \Illuminate\Http\Response
     */
    public function update(DisplayRequest $request, Display $display)
    {
       // dd($request);
        $display->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('monitor.pc', $display->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Display  $display
     * @return \Illuminate\Http\Response
     */
    public function destroy(Display $display)
    {
        $display->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('monitor.pc', $display->computadora_id);
    }
}
