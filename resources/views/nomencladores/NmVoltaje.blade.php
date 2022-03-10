@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-8 offset-2">
            <div class="card">
                <div class="card-header"><h5><i class="fas fa-list"></i> Voltaje
                        <button type="button" class="close" data-toggle="modal" data-target="#ADD"><span aria-hidden="true" class="fas fa-plus-circle"></span> Añadir</button>
                    </h5></div>
                <div class="card-body">
                    <!-- ########## LISTA ################ -->
                    @if (count($lista) == 0)
                        <p class="text-center">No hay ningún tipo que mostrar</p>
                    @else
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($lista as $row)
                                    <tr>
                                        <th scope="row">{{$row->id}}</th>
                                        <td>{{$row->name}}</td>
                                        <td class="text-right">
                                            <form action="{{route('nmVoltaje.destroy', $row->id)}}" method="post">
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
            <div class="d-flex justify-content-center py-2">{{ $lista->links() }}</div>
        </div>
    </div>

    <!-- MODAL PARA AÑADIR COMPONENTE-->
    <div class="modal fade" id="ADD" tabindex="-1" role="dialog" aria-labelledby="ADD-CD" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar voltaje</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('nmVoltaje.store')}}" method="post">
                        @csrf

                        <div class="form-group">
                            <label for="validationDefault01">Nombre</label>
                            <input type="text" class="form-control" id="validationDefault01" placeholder="Nombre..." name="name" value="{{old('name')}}">
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
                        <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Editar </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{route('nmVoltaje.update', $row->id)}}" method="post">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="validationDefault01">Nombre:</label>
                                <input type="text" class="form-control" id="validationDefault01" placeholder="Nombre ..." name="name" value="{{$row->name}}">
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
    @endsection