<?php

namespace App\Http\Controllers;

use App\Models\NmConector;
use App\Http\Requests\Nomencladores\ConectorUpdateRequest,
    App\Http\Requests\Nomencladores\ConectorStoreRequest;
use App\Repository\NomencladoresRepository;

class NmConectorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmConector::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmConector',compact('lista'));
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
    public function store(ConectorStoreRequest $request)
    {
        NmConector::create($request->all());
        return redirect()->route('nmConector.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\NmConector  $nmConector
     * @return \Illuminate\Http\Response
     */
    public function show(NmConector $nmConector)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\NmConector  $nmConector
     * @return \Illuminate\Http\Response
     */
    public function edit(NmConector $nmConector)
    {
        return view('nomencladores.Conector.editConector', compact('nmConector'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmConector  $nmConector
     * @return \Illuminate\Http\Response
     */
    public function update(ConectorUpdateRequest $request, NmConector $nmConector)
    {
        $nmConector->fill($request->all())->save();
        return redirect()->route('nmConector.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmConector  $nmConector
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmConector $nmConector)
    {
        $nmConector->delete();
        return redirect()->route('nmConector.index');
    }
}
