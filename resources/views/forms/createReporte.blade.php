@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-8 offset-2">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-wrench"></i> Nuevo reporte de Avería</h3>
                </div>
                <div class="card-body">
                    <form action="{{route('averia.store')}}" method="post">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="nombre">NOMBRE:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="{{old('nombre')}}">
                            </div>

                            <div class="form-group col-md-2">
                                <label for="nombre"># INVENTARIO:</label>
                                <input type="text" class="form-control" id="numero_inventario" name="numero_inventario" value="{{old('numero_inventario')}}">
                            </div>

                            <div class="form-group col-md-5">
                                <label for="nm_averia_id">AVERÍA:</label>
                                <select id="nm_averia_id" class="form-control" name="nm_averia_id">
                                    @foreach($averias as $row)
                                    <option value="{{$row->id}}" {{(old('nm_averia_id') == $row->id)?'selected':''}}>{{$row->name}}</option>
                                        @endforeach
                                </select>
                            </div>


                    </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="nm_departamento_id">DEPARTAMENTO:</label>
                                <select id="nm_departamento_id" class="form-control" name="nm_departamento_id">
                                    @foreach($dpto as $row)
                                    <option value="{{$row->id}}" {{(old('nm_departamento_id') == $row->id)?'selected':''}}>{{$row->name}}</option>
                                        @endforeach
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="lugar">RED:</label>
                                <select id="lugar" class="form-control" name="lugar">
                                    @foreach(getLugarAveria() as $key=>$value)
                                    <option value="{{$key}}" {{(old('lugar')==$key)?'selected':''}}>{{$value}}</option>
                                        @endforeach
                                </select>
                            </div>
                            @if (Auth::user()->dpto == 1)
                            <div class="form-group col-md-4">
                                <label for="num_reporte_etecsa"># REPORTE ETECSA:</label>
                                <input type="text" class="form-control" id="num_reporte_etecsa" name="num_reporte_etecsa" value="{{old('num_reporte_etecsa')}}">
                            </div>
                            @endif
                        </div>
                        <label for="description">DESCRIPCIÓN:</label>
                        <textarea class="form-control" id="description" placeholder="..." name="description"></textarea>
                </div>
                <div class="card-footer text-right">
                    <a href="{{route('averia.index')}}" class="btn btn-secondary"><i class="fa fa-minus-circle"></i> Cancelar</a>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    @endsection
