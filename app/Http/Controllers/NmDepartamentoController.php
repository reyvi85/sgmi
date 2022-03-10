<?php

namespace App\Http\Controllers;

use App\Models\NmDepartamento;
//use Illuminate\Http\Request;
use App\Http\Requests\Nomencladores\DepartamentoStoreRequest;
use App\Http\Requests\Nomencladores\DepartamentoUpdateRequest;

class NmDepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmDepartamento::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmDepartamentos',compact('lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DepartamentoStoreRequest $request)
    {
        NmDepartamento::create($request->all());
        return redirect()->route('nmDepartamento.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmDepartamento  $nmDepartamento
     * @return \Illuminate\Http\Response
     */
    public function update(DepartamentoUpdateRequest $request, NmDepartamento $nmDepartamento)
    {
        $nmDepartamento->fill($request->all())->save();
        return redirect()->route('nmDepartamento.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmDepartamento  $nmDepartamento
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmDepartamento $nmDepartamento)
    {
        $nmDepartamento->delete();
        return redirect()->route('nmDepartamento.index');
    }
}
