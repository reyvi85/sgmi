<?php

namespace App\Http\Controllers;

use App\Models\NmPrinter;
use App\Http\Requests\Nomencladores\PrinterStoreRequest,
    App\Http\Requests\Nomencladores\PrinterUpdateRequest;

class NmPrinterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmPrinter::orderBy('name','ASC')->paginate();
        return view('nomencladores.NmPrinter',compact('lista'));
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
    public function store(PrinterStoreRequest $request)
    {
        NmPrinter::create($request->all());
        return redirect()->route('nmPrinter.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NmPrinter  $nmPrinter
     * @return \Illuminate\Http\Response
     */
    public function update(PrinterUpdateRequest $request, NmPrinter $nmPrinter)
    {
        $nmPrinter->fill($request->all())->save();
        return redirect()->route('nmPrinter.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NmPrinter  $nmPrinter
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmPrinter $nmPrinter)
    {
        $nmPrinter->delete();
        return redirect()->route('nmPrinter.index');
    }
}
