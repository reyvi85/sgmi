@extends('layouts.app')

@section('content')
    @if (Auth()->user()->admin == 1)
        <div class="row">
            <div class="col-md-8 offset-2 text-right pt-2 py-2">

                <form method="post" action="{{route('averia.destroy', $averium->id)}}">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-lg" type="submit"><i class="fas fa-trash"></i> ELIMINAR</button>
                </form>

            </div>
        </div>
    @endif

    <div class="row">
        <div class="col-md-8 offset-2">
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

                        @if (Auth::user()->dpto == 1)
                            <strong># Reporte ETECSA:</strong> {{$averium->num_reporte_etecsa}}<br>
                        @endif
                        <strong>DESCRIPCIÓN:</strong> {{$averium->description}} <br>
                        @if ($averium->estado == 3)
                            <hr>
                            <strong>SOLUCIÓN:</strong> {{$averium->solucion}} <br>
                            <strong>SOLUCIONADO POR:</strong> {{$averium->userSolucion->name}} <br>
                            <strong>FECHA SOLUCIÓN:</strong> {{$averium->updated_at}} <br>
                        @endif
                    </p>
                        @if ($averium->estado == 2)
                    <hr>
                    <form action="{{route('averia.update', $averium->id)}}" method="post">
                        @method('PUT')
                        @csrf
                        <label for="solucion">SOLUCIÓN:</label>
                        <textarea class="form-control" id="solucion" placeholder="..." name="solucion"></textarea>

                </div>
                <div class="card-footer text-right">
                    <a class="btn btn-secondary" href="{{route('averia.index')}}"><i class="fas fa-minus-circle"></i> Cancelar</a>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar y cerrar avería</button>
                </div>
                </form>
                @endif
            </div>
        </div>
    </div>
    @endsection