<?php

namespace App\Http\Controllers;

use App\Http\Requests\EntregaBateriasRequest;
use App\Models\EntregaBateria;
use App\Repository\NomencladoresRepository;
use App\Repository\SgmiRepository;
use Illuminate\Http\Request;

class EntregaBateriasController extends Controller
{
    protected $nomencladores;
    protected $repository;

    /**
     * EntregaBateriasController constructor.
     * @param $nomencladores
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladores,SgmiRepository $repository)
    {
        $this->nomencladores = $nomencladores;
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $uebs = $this->nomencladores->getUEBs();
        $data = $this->repository->getEntregaBaterias();
        return view('componentes.entregaBaterias', compact('uebs', 'data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EntregaBateriasRequest $request)
    {
       EntregaBateria::create($request->all());
        return redirect()->route('entregaBateria.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EntregaBateria  $entregaBateria
     * @return \Illuminate\Http\Response
     */
    public function update(EntregaBateriasRequest $request, EntregaBateria $entregaBaterium)
    {
        $entregaBaterium->fill($request->all())->save();
        return redirect()->route('entregaBateria.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EntregaBateria  $entregaBateria
     * @return \Illuminate\Http\Response
     */
    public function destroy(EntregaBateria $entregaBaterium)
    {
        $entregaBaterium->delete();
        return redirect()->route('entregaBateria.index');
    }
}
