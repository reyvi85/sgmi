<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Microprocesador;
//use Illuminate\Http\Request;
use App\Http\Requests\MicroprocesadorRequest;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class MicroprocesadorController extends Controller
{

    protected $nomencladores;
    protected $componentes;
    protected $estadistica;


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
        $statiscFabricante = $this->estadistica->getMicroFabricante();
        $statiscTipo = $this->estadistica->getMicroTipo();
        $statisVelocidad = $this->estadistica->getMicroVelocidad();
        return view('list.listMicroprocesador', compact('statiscFabricante', 'statiscTipo', 'statisVelocidad'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function procesadorPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $tipo = $this->nomencladores->getProcesadorType();
        $lista = $this->componentes->getMicroprocesadorPc($computadora->id);
        return view('componentes.microprocesador', compact('computadora', 'fabricantes','tipo', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(MicroprocesadorRequest $request, Computadora $computadora)
    {
        $computadora->microprocesadors()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('procesador.pc', $computadora->id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Microprocesador  $microprocesador
     * @return \Illuminate\Http\Response
     */
    public function update(MicroprocesadorRequest $request, Microprocesador $microprocesador)
    {
        $microprocesador->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('procesador.pc', $microprocesador->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Microprocesador  $microprocesador
     * @return \Illuminate\Http\Response
     */
    public function destroy(Microprocesador $microprocesador)
    {
        $microprocesador->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('procesador.pc', $microprocesador->computadora_id);
    }
}
