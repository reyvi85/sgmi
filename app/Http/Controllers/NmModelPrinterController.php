<?php

namespace App\Http\Controllers;

use App\Http\Requests\Nomencladores\NmModelPrinterStoreRequest;
use App\Http\Requests\Nomencladores\NmModelPrinterUpdateRequest;
use App\Models\NmModelPrinter;
use App\Repository\NomencladoresRepository;
use Illuminate\Http\Request;

class NmModelPrinterController extends Controller
{
    protected $nomencalador;

    /**
     * NmModelPrinterController constructor.
     * @param $nomencalador
     */
    public function __construct(NomencladoresRepository $nomencalador)
    {
        $this->nomencalador = $nomencalador;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lista = NmModelPrinter::with(['nm_fabricante', 'nm_printer'])->orderBy('name','ASC')->get();
        $tipo = $this->nomencalador->getPrinterType();
        $fabricantes = $this->nomencalador->getFabricantes();
        return view('nomencladores.NmModelPrinter',compact('lista', 'tipo', 'fabricantes'));
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
    public function store(NmModelPrinterStoreRequest $request)
    {
        NmModelPrinter::create($request->all());
        return redirect()->route('nmModelPrinter.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\NmModelPrinter  $nmModelPrinter
     * @return \Illuminate\Http\Response
     */
    public function update(NmModelPrinterUpdateRequest $request, NmModelPrinter $nmModelPrinter)
    {
       $nmModelPrinter->fill(request()->all())->save();
        return redirect()->route('nmModelPrinter.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\NmModelPrinter  $nmModelPrinter
     * @return \Illuminate\Http\Response
     */
    public function destroy(NmModelPrinter $nmModelPrinter)
    {
        $nmModelPrinter->delete();
        return redirect()->route('nmModelPrinter.index');
    }
}
