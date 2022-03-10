<?php

namespace App\Http\Controllers;

use App\Models\Computadora;
use App\Models\Printer;
//use Illuminate\Http\Request;

use App\Http\Requests\PrinterRequest;
use App\Repository\ComponentesRepository;
use App\Repository\EstadisticasRepository;
use App\Repository\NomencladoresRepository;

class PrinterController extends Controller
{
    protected $nomencladores;
    protected $componentes;
    protected $estadistica;

    /**
     * LectorcdController constructor.
     * @param $repository
     */
    public function __construct(NomencladoresRepository $nomencladoresRepository,
                                ComponentesRepository $componentesRepository, EstadisticasRepository $estadisticasRepository)
    {
        $this->nomencladores = $nomencladoresRepository;
        $this->componentes = $componentesRepository;
        $this->estadistica = $estadisticasRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       // $stastFabricante = $this->estadistica->getPrinterFabricante();
      //  $stastTipo = $this->estadistica->getPrinterTipo();
        return view('list.listPrinters');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function printerPC(Computadora $computadora)
    {
        $tipo = $this->nomencladores->getModelPrinter();
        $lista = $this->componentes->getPrinterPc($computadora->id);
        return view('componentes.printer', compact('computadora','tipo', 'lista'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PrinterRequest $request, Computadora $computadora)
    {
        $computadora->printers()->create($request->all());
        flash('Se agregó un nuevo dispositvo a esta PC')->success()->important();
        return redirect()->route('printer.pc', $computadora->id);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Printer  $printer
     * @return \Illuminate\Http\Response
     */
    public function update(PrinterRequest $request, Printer $printer)
    {
        $printer->fill($request->all())->save();
        flash('Se realizaron los cambios correctamente')->success()->important();
        return redirect()->route('printer.pc', $printer->computadora_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Printer  $printer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Printer $printer)
    {
        $printer->delete();
        flash('Se eliminó correctamente el dispositivo seleccionado')->error()->important();
        return redirect()->route('printer.pc', $printer->computadora_id);
    }
}
