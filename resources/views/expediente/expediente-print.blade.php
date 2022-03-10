@extends('layouts.appPrint')
@section('content')
    <div class="row py-2">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-laptop"></i> Expediente de la PC:  <strong>{{$computadora->nombre}}</strong></h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            @include('expediente.pcGeneral')
                            @include('expediente.Monitor')
                            @include('expediente.Teclado')
                            @include('expediente.Mouse')
                            @include('expediente.Board')
                            @include('expediente.Microprocesador')

                            @include('expediente.Hdd')
                            @include('expediente.Printer')
                            @include('expediente.LectorCD')
                            @include('expediente.RAM')
                            @include('expediente.Fuente')
                            @include('expediente.Tvideo')
                            @include('expediente.Speaker')
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection