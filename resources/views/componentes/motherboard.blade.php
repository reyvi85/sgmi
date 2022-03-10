@extends('layouts.app')
@section('content')
    @component('partial.AddComponentTemplaste',['computadora'=>$computadora])
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"><h5><i class="fas fa-list"></i> Motherboard
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
                                        <th scope="col">Modelo</th>
                                        <th scope="col">Fabricante</th>
                                        <th scope="col">Gneración</th>
                                        <th scope="col">Socket</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($lista as $row)
                                        <tr>
                                            <th scope="row">{{$row->sn}}</th>
                                            <td>{{$row->model}}</td>
                                            <td>{{$row->nm_fabricante->name}}</td>
                                            <td>{{$row->nm_generacion->name}}</td>
                                            <td>{{$row->socket}}</td>
                                            <td class="text-right">
                                                <form action="{{route('board.destroy', $row->id)}}" method="post">
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
            </div>
        </div>



        <!-- MODAL PARA AÑADIR COMPONENTE-->
    <div class="modal fade" id="ADD" tabindex="-1" role="dialog" aria-labelledby="ADD-CD" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar motherboard</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('board.store', $computadora->id)}}" method="post">
                        @csrf

                            <div class="form-group">
                                <label for="validationDefault01">Numero de Serie:</label>
                                <input type="text" class="form-control" id="validationDefault01" placeholder="sn" name="sn" value="{{old('sn')}}">
                            </div>
                        <div class="form-group">
                            <label for="validationDefault02">Modelo:</label>
                            <input type="text" class="form-control" id="validationDefault02" placeholder="Modelo" name="model" value="{{old('model')}}">
                        </div>
                        <div class="form-group">
                            <label for="validationDefault02">Socket:</label>
                            <input type="text" class="form-control" id="validationDefault02" placeholder="Socket" name="socket" value="{{old('socket')}}">
                        </div>
                            <div class="form-group">
                                <label for="validationDefault02">Fabricante:</label>
                                <select class="custom-select" name="nm_fabricante_id">
                                    @foreach($fabricantes as $row)
                                        <option value="{{$row->id}}">{{$row->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        <div class="form-group">
                            <label for="validationDefault02">Generación:</label>
                            <select class="custom-select" name="nm_generacion_id">
                                @foreach($generacion as $row)
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
                            <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Editar motherboard</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="{{route('board.update', $row->id)}}" method="post">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="validationDefault01">Numero de Serie:</label>
                                    <input type="text" class="form-control" id="validationDefault01" placeholder="sn" name="sn" value="{{$row->sn}}">
                                </div>
                                <div class="form-group">
                                    <label for="validationDefault02">Modelo</label>
                                    <input type="text" class="form-control" id="validationDefault02" placeholder="Modelo" name="model" value="{{$row->model}}">
                                </div>
                                <div class="form-group">
                                    <label for="validationDefault02">Socket</label>
                                    <input type="text" class="form-control" id="validationDefault02" placeholder="Socket" name="socket" value="{{$row->socket}}">
                                </div>
                                <div class="form-group">
                                    <label for="validationDefault02">Fabricante:</label>
                                    <select class="custom-select" name="nm_fabricante_id">
                                        @foreach($fabricantes as $rowF)
                                            <option value="{{$rowF->id}}" {{($rowF->id == $row->nm_fabricante_id)?'selected':''}}>{{$rowF->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="validationDefault02">Generacion:</label>
                                    <select class="custom-select" name="nm_generacion_id">
                                        @foreach($generacion as $rowC)
                                            <option value="{{$rowC->id}}" {{($rowC->id == $row->nm_generacion_id)?'selected':''}}>{{$rowC->name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="validationDefault02">Estado técnico:</label>
                                    <select class="custom-select" name="state">
                                        @foreach(getStatus() as $key=>$value)
                                            <option value="{{$key}}" {{($rowF->status == $key)?'selected':''}}>{{$value}}</option>
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