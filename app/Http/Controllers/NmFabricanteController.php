<?php

namespace App\Http\Controllers;

use App\Models\NmFabricante;
//use Illuminate\Http\Request;
use App\Http\Requests\Nomencladores\FabricanteStoreRequest,
    App\Http\Requests\Nomencladores\FabricanteUpdateRequest;


class NmFabricanteController extends Controller
{

      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmFabricante::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmFabricantes',compact('lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FabricanteStoreRequest $request)
    {
        NmFabricante::create($request->all());
        return redirect()->route('nmFabricante.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmFabricante  $nmFabricante
     * @return \Illuminate\Http\Response
     */
    public function update(FabricanteUpdateRequest $request, NmFabricante $nmFabricante)
    {
        $nmFabricante->fill($request->all())->save();
        return redirect()->route('nmFabricante.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmFabricante  $nmFabricante
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmFabricante $nmFabricante)
    {
        $nmFabricante->delete();
        return redirect()->route('nmFabricante.index');
    }
}
