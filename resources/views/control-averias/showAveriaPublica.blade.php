@extends('layouts.appPrint')
@section('content')
    <div class="row">
        <div class="col-md-12 text-right">
            <a class="btn btn-link" href="{{route('averiaPublica.list')}}"><i class="fas fa-arrow-circle-left"></i> Volver al listado</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-wrench"></i> Averías / <strong>{{$averium->id}}</strong> / {{statusAveria($averium->estado)}}</h3>
                </div>
                <div class="card-body">
                    <p>
                        <strong>Avería:</strong> {{$averium->nm_averia->name}}<br>
                        <strong>Fecha:</strong> {{$averium->created_at}}<br>
                        <strong>Reporta:</strong> {{$averium->nombre}}<br>
                        <strong>Recepciona:</strong> {{$averium->user->name}}<br>
                        <strong>Lugar:</strong> {{$averium->nm_departamento->name}} <br>
                            <strong># Reporte ETECSA:</strong> {{$averium->num_reporte_etecsa}}<br>
                        <strong>DESCRIPCIÓN:</strong> {{$averium->description}} <br>
                        @if ($averium->estado == 3)
                            <hr>
                            <strong>SOLUCIÓN:</strong> {{$averium->solucion}} <br>
                            <strong>SOLUCIONADO POR:</strong> {{$averium->userSolucion->name}} <br>
                            <strong>FECHA SOLUCIÓN:</strong> {{$averium->updated_at}} <br>
                        @endif
                    </p>

            </div>
        </div>
        </div>
    </div>
    @endsection