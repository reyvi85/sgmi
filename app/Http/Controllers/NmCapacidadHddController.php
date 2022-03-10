<?php

namespace App\Http\Controllers;

use App\Models\NmCapacidadHdd;
use App\Http\Requests\Nomencladores\HddStoreRequest,
    App\Http\Requests\Nomencladores\HddUpdateRequest;

class NmCapacidadHddController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmCapacidadHdd::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmHDD',compact('lista'));
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
    public function store(HddStoreRequest $request)
    {
        NmCapacidadHdd::create($request->all());
        return redirect()->route('nmCapacidadHdd.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmCapacidadHdd  $nmCapacidadHdd
     * @return \Illuminate\Http\Response
     */
    public function update(HddUpdateRequest $request, NmCapacidadHdd $nmCapacidadHdd)
    {
        $nmCapacidadHdd->fill($request->all())->save();
        return redirect()->route('nmCapacidadHdd.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmCapacidadHdd  $nmCapacidadHdd
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmCapacidadHdd $nmCapacidadHdd)
    {
        $nmCapacidadHdd->delete();
        return redirect()->route('nmCapacidadHdd.index');
    }
}
