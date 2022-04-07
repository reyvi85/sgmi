<?php

namespace App\Http\Controllers;

use App\Http\Requests\EntregaCintaTonnersRequest;
use App\Models\EntregaCintaTonner;
use App\Repository\NomencladoresRepository;
use App\Repository\SgmiRepository;
use Illuminate\Http\Request;

class EntregaCintaTonnersController extends Controller
{
    protected $nomencladores;
    protected $repository;

    /**
     * EntregaCintaTonnersController constructor.
     * @param $nomencladores
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladores, SgmiRepository $repository)
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
        $ct = $this->nomencladores->getCintasTonnersOnly();
        $data = $this->repository->getEntregaCintasTonners();
        return view('componentes.entregaCintasTonners', compact('uebs', 'ct', 'data'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EntregaCintaTonnersRequest $request)
    {
        EntregaCintaTonner::create($request->all());
        return redirect()->route('entregaCintaTonner.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EntregaCintaTonner  $entregaCintaTonner
     * @return \Illuminate\Http\Response
     */
    public function update(EntregaCintaTonnersRequest $request, EntregaCintaTonner $entregaCintaTonner)
    {
        $entregaCintaTonner->fill($request->all())->save();
        return redirect()->route('entregaCintaTonner.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EntregaCintaTonner  $entregaCintaTonner
     * @return \Illuminate\Http\Response
     */
    public function destroy(EntregaCintaTonner $entregaCintaTonner)
    {
        $entregaCintaTonner->delete();
        return redirect()->route('entregaCintaTonner.index');
    }
}
