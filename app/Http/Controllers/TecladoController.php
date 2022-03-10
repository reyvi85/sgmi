<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Teclado;
use Illuminate\Http\Request;
use App\Http\Requests\TecladoRequest;

use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;


class TecladoController extends Controller
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
    public function index(Request $request)
    {
      //  dd($request->server('HTTP_HOST'));
        $stastFabricante = $this->estadistica->getTecladoFabricante();
        $stastTipo = $this->estadistica->getTecladoTipo();
       return view('list.listTeclados', compact('stastFabricante', 'stastTipo'));
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
        $lista = $this->componentes->getTecladoPc($computadora->id);
        return view('componentes.teclado', compact('computadora', 'fabricantes','conector', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TecladoRequest $request, Computadora $computadora)
    {
        $computadora->teclados()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('teclado.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Teclado  $teclado
     * @return \Illuminate\Http\Response
     */
    public function update(TecladoRequest $request, Teclado $teclado)
    {
        $teclado->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('teclado.pc', $teclado->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Teclado  $teclado
     * @return \Illuminate\Http\Response
     */
    public function destroy(Teclado $teclado)
    {
        $teclado->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('teclado.pc', $teclado->computadora_id);
    }
}
