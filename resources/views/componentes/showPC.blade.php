@extends('layouts.app')
@section('content')
    <div class="row py-2">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-laptop"></i> Expediente de la PC:  <strong>{{$computadora->nombre}}</strong>
                        <a class="close btn btn-link" href="{{route('expediente.print', $computadora->id)}}" target="_blank"><span aria-hidden="true" class="fas fa-print"></span> Imprimir</a>
                    </h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            @include('expediente.pcGeneral', ['modeMin'=>false])
                            @include('expediente.Monitor', ['modeMin'=>false])
                            @include('expediente.Teclado', ['modeMin'=>false])
                            @include('expediente.Mouse', ['modeMin'=>false])
                        </div>
                        <div class="col-md-4">
                            @include('expediente.Board', ['modeMin'=>false])
                            @include('expediente.Microprocesador', ['modeMin'=>false])
                            @include('expediente.Hdd', ['modeMin'=>false])
                            @include('expediente.Printer', ['modeMin'=>false])

                        </div>

                        <div class="col-md-4">
                            @include('expediente.LectorCD', ['modeMin'=>false])
                            @include('expediente.RAM', ['modeMin'=>false])
                            @include('expediente.Fuente', ['modeMin'=>false])
                            @include('expediente.Tvideo', ['modeMin'=>false])
                            @include('expediente.Speaker', ['modeMin'=>false])
                        </div>
                    </div>
                </div>
                @if (Auth::user()->admin == true)
                    <div class="card-footer">
                        <div class="col-md-12 text-right">
                            <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#eliminarPC"><i class="fas fa-trash"></i> Eliminar equipo</button>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>

    @if (Auth::user()->admin == true)
        <!-- Modal -->
        <div class="modal fade" id="eliminarPC" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-trash"></i> Eliminar PC / {{$computadora->nombre}}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Confirmas realmente que deseas eliminar la pc <strong>{{$computadora->nombre}}</strong>?
                        Al llevar a cabo esta acción todo lo asociado a este equipo será eliminado definitivamente.
                        <ul>
                            <li>Historicos de hardwere</li>
                            <ul>
                                <li>Motherboard</li>
                                <li>Microprocesador</li>
                                <li>Fuente</li>
                                <li>RAM</li>
                                <li>Lector de discos</li>
                                <li>Monitor</li>
                                <li>Teclado</li>
                                <li>Mouse</li>
                                <li>UPS</li>
                                <li>Impresora</li>
                            </ul>
                        </ul>

                        <h3 class="text-muted text-center">Realmente vas a eliminar a <strong>{{$computadora->nombre}}</strong> </h3>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <form action="{{route('computadora.destroy', $computadora)}}" method="post">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i> Eliminar</button>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    @endif
    @endsection