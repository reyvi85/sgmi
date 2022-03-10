@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h5><i class="fas fa-laptop"></i> Computadora / <strong>{{$computadora->nombre}}</strong></h5></div>
                <div class="card-body">
                    <form  action="{{route('computadora.update', $computadora->id)}}" method="post">
                        @csrf
                        @method('PUT')
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nombre :</label>
                                <input type="text" class="form-control @error('nombre') is-invalid @enderror" placeholder="Nombre de la pc" name="nombre" value="{{$computadora->nombre}}">
                                @error('nombre')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-3">
                                <label># Inventario :</label>
                                <input type="text" class="form-control @error('numero_inventario') is-invalid @enderror" placeholder="# inventario" name="numero_inventario" value="{{$computadora->numero_inventario}}">
                                @error('numero_inventario')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-3">
                                <label># Sello :</label>
                                <input type="text" class="form-control @error('numero_sello') is-invalid @enderror" placeholder="# sello" name="numero_sello" value="{{$computadora->sellos->last()->number}}">
                                @error('numero_sello')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>IP:</label>
                                <input type="text" class="form-control @error('ip') is-invalid @enderror" placeholder="Ip" name="ip" value="{{$computadora->ip}}">
                                @error('ip')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-4">
                                <label>MAC:</label>
                                <input type="text" class="form-control @error('mac') is-invalid @enderror" placeholder="Mac" name="mac" value="{{$computadora->mac}}">
                                @error('mac')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-4">
                                <label>UEB:</label>
                                <select class="custom-select mr-sm-2  @error('nm_ueb_id') is-invalid @enderror" name="nm_ueb_id">
                                    <option selected value="">-- Seleccione --</option>
                                    @foreach($ueb as $item)
                                        <option value="{{$item->id}}" {{($computadora->nm_ueb_id == $item->id)?'selected':''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('nm_ueb_id')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>Departamentos:</label>
                                <select class="custom-select mr-sm-2 @error('nm_departamento_id') is-invalid @enderror" name="nm_departamento_id">
                                    <option value="">-- Seleccione --</option>
                                    @foreach($dpto as $item)
                                        <option value="{{$item->id}}" {{($computadora->nm_departamento_id == $item->id)?'selected':''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('nm_departamento_id')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>

                            <div class="form-group col-md-4">
                                <label>Sistema operativo:</label>
                                <select class="custom-select mr-sm-1 @error('nm_sistema_id') is-invalid @enderror" name="nm_sistema_id">
                                    <option value="">-- Seleccione --</option>
                                    @foreach($os as $item)
                                        <option value="{{$item->id}}" {{($computadora->nm_sistema_id == $item->id)?'selected':''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('nm_sistema_id')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                        </div>


                </div>
                <div class="modal-footer">
                    <a href="{{route('computadora.index')}}" class="btn btn-secondary"><i class="fas fa-minus-circle"></i> Cancelar</a>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar cambios</button>
                </div>
                </form>
            </div>
    </div>
    </div>
@endsection
