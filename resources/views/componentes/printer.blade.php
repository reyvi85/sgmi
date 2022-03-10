@extends('layouts.app')
@section('content')
    @component('partial.AddComponentTemplaste',['computadora'=>$computadora])
<div class="card">
    <div class="card-header"><h5><i class="fas fa-list"></i> Impresoras
            <button type="button" class="close" data-toggle="modal" data-target="#ADD"><span aria-hidden="true" class="fas fa-plus-circle"></span> Añadir</button>
        </h5></div>
    <div class="card-body">
<!-- ########## LISTA ################ -->
        @if (count($lista) == 0)
            <p class="text-center">No hay ningún dispositivo que mostrar</p>
        @else
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Serie</th>
                        <th scope="col">Inventario</th>
                        <th scope="col">Modelo</th>
                        <th scope="col">Fabricante</th>
                        <th scope="col">Tipo</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($lista as $row)
                        <tr>
                            <th scope="row">{{$row->sn}}</th>
                            <td>{{$row->inventario}}</td>
                            <td>{{$row->nm_model_printer->name}}</td>
                            <td>{{$row->nm_model_printer->nm_fabricante->name}}</td>
                            <td>{{$row->nm_model_printer->nm_printer->name}}</td>
                            <td class="text-right">
                                <form action="{{route('printer.destroy', $row->id)}}" method="post">
                                    @csrf
                                    @method('DELETE')
                                    <a href="javascript:void(0);" class="btn btn-link" data-toggle="modal" data-target="#EDIT-{{$row->id}}"><i class="fas fa-edit" title="Editar"></i></a>
                                    <button class="btn btn-link" type="submit" onclick="return confirm('Está seguro que quiere eliminar este elemento')" title="Eliminar"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        @endif
    </div>
</div>

        <!-- MODAL PARA AÑADIR COMPONENTE-->
    <div class="modal fade" id="ADD" tabindex="-1" role="dialog" aria-labelledby="ADD-CD" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar impresora</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('printer.store', $computadora->id)}}" method="post">
                        @csrf

                            <div class="form-group">
                                <label for="validationDefault01">Numero de Serie:</label>
                                <input type="text" class="form-control" id="validationDefault01" placeholder="sn" name="sn" value="{{old('sn')}}">
                            </div>
                            <div class="form-group">
                                <label for="validationDefault02"># Inventario:</label>
                                <input type="text" class="form-control" id="validationDefault02" placeholder="# Inventario" name="inventario" value="{{old('inventario')}}">
                            </div>


                        <div class="form-group">
                            <label for="validationDefault02">Modelo:</label>
                            <select class="custom-select" name="nm_model_printer_id">
                                @foreach($tipo as $row)
                                    <option value="{{$row->id}}">{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

        <!--- MODALS EDITAR COMPONENTES --->
        @foreach($lista as $row)
            <div class="modal fade" id="EDIT-{{$row->id}}" tabindex="-1" role="dialog" aria-labelledby="EDIT-CD-{{$row->id}}" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Editar impresora</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('printer.update', $row->id)}}" method="post">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="validationDefault01">Numero de Serie:</label>
                                    <input type="text" class="form-control" id="validationDefault01" placeholder="sn" name="sn" value="{{$row->sn}}">
                                </div>
                                <div class="form-group">
                                    <label for="validationDefault02">Inventario</label>
                                    <input type="text" class="form-control" id="validationDefault02" placeholder="# Inventario" name="inventario" value="{{$row->inventario}}">
                                </div>

                                <div class="form-group">
                                    <label for="validationDefault02">Modelo: <strong>({{$row->model}})</strong></label>
                                    <select class="custom-select" name="nm_model_printer_id">
                                        @foreach($tipo as $rowC)
                                            <option value="{{$rowC->id}}" {{($rowC->id == $row->nm_model_printer_id)?'selected':''}}>{{$rowC->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="validationDefault02">Estado técnico:</label>
                                    <select class="custom-select" name="state">
                                        @foreach(getStatus() as $key=>$value)
                                            <option value="{{$key}}" {{($row->status == $key)?'selected':''}}>{{$value}}</option>
                                        @endforeach
                                    </select>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
    @endcomponent
    @endsection