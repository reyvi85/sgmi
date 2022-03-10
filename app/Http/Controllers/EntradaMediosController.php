<?php

namespace App\Http\Controllers;

use App\Models\EntradaMedio;
use App\Repository\NomencladoresRepository;
use App\Repository\SgmiRepository;
use Illuminate\Http\Request;

class EntradaMediosController extends Controller
{
    protected $nomencladores;
    protected $repository;

    /**
     * EntradaMediosController constructor.
     * @param $nomencladores
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository, SgmiRepository $sgmiRepository)
    {
        $this->nomencladores = $nomencladoresRepository;
        $this->repository = $sgmiRepository;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $uebs = $this->nomencladores->getUEBs();
        $dptos = $this->nomencladores->getDepartamentos();
        $data = $this->repository->getMedios();
        return view('componentes.entradaMedios', compact('data','uebs', 'dptos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        EntradaMedio::create($request->all());
        flash('Se creo una nueva entrada de Medio!')->important()->success();
        return redirect()->back();
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\EntradaMedio  $entradaMedio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, EntradaMedio $entradaMedio)
    {
        $entradaMedio->fill($request->all())->save();
        flash('Se realizaron cambios con éxito!')->important()->success();
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\EntradaMedio  $entradaMedio
     * @return \Illuminate\Http\Response
     */
    public function destroy(EntradaMedio $entradaMedio)
    {
       $entradaMedio->delete();
       flash('Se eliminó el medio seleccionado!')->important()->error();
       return redirect()->back();
    }
}
