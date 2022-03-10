@extends('layouts.app')
@section('content')
<div class="col-md-8 offset-2">
    <div class="card">
        <div class="card-header"><h5><i class="fas fa-user"></i> Usuarios en el Sistema
                <button type="button" class="close" data-toggle="modal" data-target="#ADD"><span aria-hidden="true" class="fas fa-plus-circle"></span> Añadir</button>
            </h5></div>
        <div class="card-body">
            <!-- ########## LISTA ################ -->
            @if (count($usr) == 0)
                <p class="text-center">No hay ningún usuario que mostrar</p>
            @else
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Email</th>
                            <th scope="col">Departamento</th>
                            <th scope="col">Rol</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($usr as $row)
                            <tr>
                                <th scope="row">{{$row->name}}</th>
                                <td>{{$row->email}}</td>
                                <td>{!! getDpto($row->dpto) !!}</td>
                                <td>{!!getRole($row->admin)!!}</td>

                                <td class="text-right">
                                    <form action="{{route('user.destroy', $row->id)}}" method="post">
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
                <div class="d-flex justify-content-center">{{ $usr->links() }}</div>
            @endif
        </div>
    </div>
</div>


<!-- MODAL PARA AÑADIR COMPONENTE-->
<div class="modal fade" id="ADD" tabindex="-1" role="dialog" aria-labelledby="ADD-CD" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Agregar Usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="{{route('user.store')}}" method="post">
                    @csrf

                    <div class="form-group">
                        <label for="validationDefault01">Nombre:</label>
                        <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}"  autocomplete="name" autofocus>
                    </div>

                    <div class="form-group">
                        <label for="validationDefault01">E-mail:</label>
                        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}"  autocomplete="email">
                    </div>

                    <div class="form-group">
                        <label for="validationDefault02">Contraseña:</label>
                        <input id="password" type="password" class="form-control" name="password"  autocomplete="new-password">
                    </div>

                    <div class="form-group">
                        <label for="validationDefault02">Confirmar contraseña:</label>
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation"  autocomplete="new-password">
                    </div>

                    <div class="form-group">
                        <label for="validationDefault02">Departamento:</label>
                        <select class="custom-select" name="dpto">
                            @foreach(getListDepartamento() as $key=>$value)
                                <option value="{{$key}}" {{(old('dpto') == $key)?'selected':''}}>{{$value}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="validationDefault02">Rol:</label>
                        <select class="custom-select" name="admin">
                            <option value="0">Usuario</option>
                            <option value="1">Administrador</option>
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
@foreach($usr as $row)
    <div class="modal fade" id="EDIT-{{$row->id}}" tabindex="-1" role="dialog" aria-labelledby="EDIT-{{$row->id}}" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Editar usuario / {{$row->name}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('user.update', $row->id)}}" method="post">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="validationDefault01">Nombre:</label>
                            <input id="name" type="text" class="form-control" name="name" value="{{ $row->name }}" required autocomplete="name" autofocus>
                        </div>

                        <div class="form-group">
                            <label for="validationDefault01">E-mail:</label>
                            <input id="email" type="email" class="form-control" name="email" value="{{ $row->email }}" required autocomplete="email">
                        </div>

                        <div class="form-group">
                            <label for="validationDefault02">Contraseña:</label>
                            <input id="password" type="password" class="form-control" name="password">
                            <small id="emailHelp" class="form-text text-muted">Escribir contraseña si desea cambiarla.</small>
                        </div>

                        <div class="form-group">
                            <label for="validationDefault02">Departamento:</label>
                            <select class="custom-select" name="dpto">
                                @foreach(getListDepartamento() as $key=>$value)
                                    <option value="{{$key}}" {{($row->dpto == $key)?'selected':''}}>{{$value}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="validationDefault02">Rol:</label>
                            <select class="custom-select" name="admin">
                                <option value="0" {{($row->admin == 0)?'selected':''}}>Usuario</option>
                                <option value="1" {{($row->admin == 1)?'selected':''}}>Administrador</option>
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


@endsection