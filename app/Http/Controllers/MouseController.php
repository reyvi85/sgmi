<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Raton;
use App\Models\Teclado;
//use Illuminate\Http\Request;
use App\Http\Requests\MouseRequest;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class MouseController extends Controller
{
    protected $nomencladores;
    protected $componentes;
    protected $estadistica;

    /**
     * LectorcdController constructor.
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository,
                                ComponentesRepository $componentesRepository, EstadisticasRepository $estadisticasRepository)
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
        $stastFabricante = $this->estadistica->getMouseFabricante();
        $stastTipo = $this->estadistica->getMouseTipo();
       return view('list.listMouse', compact('stastTipo', 'stastFabricante'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function tecladoPC(Computadora $computadora)
    {
        $fabricantes = $this->nomencladores->getFabricantes();
        $conector = $this->nomencladores->getConector();
        $lista = $this->componentes->getMousePc($computadora->id);
        return view('componentes.mouse', compact('computadora', 'fabricantes','conector', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(MouseRequest $request, Computadora $computadora)
    {
        $computadora->ratons()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('mouse.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Teclado  $teclado
     * @return \Illuminate\Http\Response
     */
    public function update(MouseRequest $request, Raton $raton)
    {
        $raton->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('mouse.pc', $raton->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Teclado  $teclado
     * @return \Illuminate\Http\Response
     */
    public function destroy( Raton $raton)
    {
        $raton->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('mouse.pc', $raton->computadora_id);
    }
}
