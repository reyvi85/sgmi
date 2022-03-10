<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\ProcesadorStoreRequest;
use App\Http\Requests\Nomencladores\ProcesadorUpdateRequest;
use App\Models\NmProcesador;
use Illuminate\Http\Request;

class NmProcesadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmProcesador::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmProcesador', compact('lista'));
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
    public function store(ProcesadorStoreRequest $request)
    {
        NmProcesador::create($request->all());
        flash('Se creó un nuevo procesador')->success()->important();
        return redirect()->route('nmProcesador.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\NmProcesador  $nmProcesador
     * @return \Illuminate\Http\Response
     */
    public function show(NmProcesador $nmProcesador)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\NmProcesador  $nmProcesador
     * @return \Illuminate\Http\Response
     */
    public function edit(NmProcesador $nmProcesador)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmProcesador  $nmProcesador
     * @return \Illuminate\Http\Response
     */
    public function update(ProcesadorUpdateRequest $request, NmProcesador $nmProcesador)
    {
        $nmProcesador->fill($request->all())->save();
        flash('Se editó correctamente este procesador!')->success()->important();
        return redirect()->route('nmProcesador.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmProcesador  $nmProcesador
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmProcesador $nmProcesador)
    {
        $nmProcesador->delete();
        flash('Se eliminó corecctamente el procesador seleccionado!')->success()->important();
        return redirect()->route('nmProcesador.index');
    }
}
