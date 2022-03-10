<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Motherboard;
//use Illuminate\Http\Request;
use App\Http\Requests\MotherboardRequest;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class MotherboardController extends Controller
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
        $statiscFabricante = $this->estadistica->getBoardFabricante();
        $statiscGeneracion = $this->estadistica->getBoardGeneracion();
        $statiscSocket = $this->estadistica->getBoardSocket();

        return view('list.listMotherboards', compact('statiscFabricante', 'statiscGeneracion', 'statiscSocket'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function boardPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $generacion = $this->nomencladores->getBoardGeneracion();
        $lista = $this->componentes->getMotherboardPc($computadora->id);
        return view('componentes.motherboard', compact('computadora', 'fabricantes','generacion', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(MotherboardRequest $request, Computadora $computadora)
    {
        $computadora->boards()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('board.pc', $computadora->id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Motherboard  $motherboard
     * @return \Illuminate\Http\Response
     */
    public function update(MotherboardRequest $request, Motherboard $motherboard)
    {
        $motherboard->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('board.pc', $motherboard->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Motherboard  $motherboard
     * @return \Illuminate\Http\Response
     */
    public function destroy(Motherboard $motherboard)
    {
        $motherboard->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('board.pc', $motherboard->computadora_id);
    }
}
