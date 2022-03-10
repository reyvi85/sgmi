<?php

namespace App\Http\Controllers;

use App\Models\NmPotencia;
use App\Http\Requests\Nomencladores\PotenciaStoreRequest,
    App\Http\Requests\Nomencladores\PotenciaUpdateRequest;

class NmPotenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmPotencia::orderBy('name','ASC')->paginate();
        //return view('nomencladores.Potencia.lista',compact('lista'));
        return view('nomencladores.NmPotencia',compact('lista'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PotenciaStoreRequest $request)
    {
        NmPotencia::create($request->all());
        return redirect()->route('nmPotencia.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmPotencia  $nmPotencia
     * @return \Illuminate\Http\Response
     */
    public function update(PotenciaUpdateRequest $request, NmPotencia $nmPotencium)
    {
        $nmPotencium->fill($request->all())->save();
        return redirect()->route('nmPotencia.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmPotencia  $nmPotencia
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmPotencia $nmPotencium)
    {
        $nmPotencium->delete();
        return redirect()->route('nmPotencia.index');
    }
}
