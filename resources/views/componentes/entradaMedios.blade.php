@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h5><i class="fas fa-list"></i> Entrega de Medios
                        <button type="button" class="close" data-toggle="modal" data-target="#ADD"><span aria-hidden="true" class="fas fa-plus-circle"></span> Añadir</button>
                    </h5></div>
                    <div class="card-body">
                        @if (count($data) == 0)
                            <p class="text-center text-muted">No hay datos que mostrar</p>
                        @else
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Equipo</th>
                                    <th scope="col">UEB</th>
                                    <th scope="col">Departamento</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $row)
                                <tr>
                                    <th scope="row">{{$row->id}}</th>
                                    <td>{{getMediosInformaticos($row->medio)}}</td>
                                    <td>{{$row->nm_ueb->name}}</td>
                                    <td>{{$row->nm_departamento->name}}</td>
                                    <td  class="align-middle" style="width: 15%">
                                        <form action="{{route('entradaMedio.destroy', $row->id)}}" method="post">
                                            @csrf
                                            @method('DELETE')
                                            <a class="btn btn-link" href="javascript:void(0)" data-toggle="modal" data-target="#ShowDetail-{{$row->id}}"><i class="fas fa-eye" title="Ver detalles"></i></a>
                                            <a class="btn btn-link" href="javascript:void(0)" data-toggle="modal" data-target="#EDIT-{{$row->id}}"><i class="fas fa-edit" title="Editar"></i></a>
                                            <button type="submit" class="btn btn-link" onclick="return confirm('Está seguro que quiere eliminar este elemento?')"><i class="fas fa-trash" title="Eliminar"></i></button>
                                        </form>
                                    </td>
                                </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        @endif
                        <div class="d-flex justify-content-center">{{ $data->links() }}</div>
                    </div>
            </div>
        </div>

    </div>

    <!-- MODAL PARA AÑADIR COMPONENTE-->
    <div class="modal fade" id="ADD" tabindex="-1" role="dialog" aria-labelledby="ADD-CD" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-plus-circle"></i> Entregar medio</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('entradaMedio.store')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="validationDefault02">Medio:</label>
                            <select class="custom-select" name="medio">
                                @foreach(getMediosInformaticos() as $key=>$value)
                                    <option value="{{$key}}">{{$value}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="validationDefault02">UEB:</label>
                            <select class="custom-select" name="nm_ueb_id">
                                @foreach($uebs as $row)
                                    <option value="{{$row->id}}">{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="validationDefault02">Departamento:</label>
                            <select class="custom-select" name="nm_departamento_id">
                                @foreach($dptos as $row)
                                    <option value="{{$row->id}}">{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="validationTextarea">Descripción:</label>
                            <textarea class="form-control" id="validationTextarea" name="descripcion"></textarea>
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
@foreach($data as $rowD)
   <!-- Modal ver Detalles -->
    <div class="modal fade" id="ShowDetail-{{$rowD->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-eye"></i> Detalles del equipo / {{getMediosInformaticos($rowD->medio)}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6"><strong>UEB:</strong> {{$rowD->nm_ueb->name}}</div>
                        <div class="col-md-6"><strong>DEPARTAMENTO:</strong> {{$rowD->nm_departamento->name}}</div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            {{$rowD->descripcion}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--- Editar Medio --->
   <div class="modal fade" id="EDIT-{{$rowD->id}}" tabindex="-1" role="dialog" aria-labelledby="EDIT-{{$rowD->id}}" aria-hidden="true">
       <div class="modal-dialog modal-lg" role="document">
           <div class="modal-content">
               <div class="modal-header">
                   <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-edit"></i> Editar entrega de medio</h5>
                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                       <span aria-hidden="true">&times;</span>
                   </button>
               </div>
               <div class="modal-body">
                   <form id="edit-{{$rowD->id}}" action="{{route('entradaMedio.update', $rowD->id)}}" method="post">
                       @method('PUT')
                       @csrf
                       <div class="form-group">
                           <label for="validationDefault02">Medio:</label>
                           <select class="custom-select" name="medio">
                               @foreach(getMediosInformaticos() as $key=>$value)
                                   <option value="{{$key}}" {{($rowD->medio == $key)?'selected':''}}>{{$value}}</option>
                               @endforeach
                           </select>
                       </div>

                       <div class="form-group">
                           <label for="validationDefault02">UEB:</label>
                           <select class="custom-select" name="nm_ueb_id">
                               @foreach($uebs as $row)
                                   <option value="{{$row->id}}" {{($rowD->nm_ueb_id == $row->id)?'selected':''}}>{{$row->name}}</option>
                               @endforeach
                           </select>
                       </div>

                       <div class="form-group">
                           <label for="validationDefault02">Departamento:</label>
                           <select class="custom-select" name="nm_departamento_id">
                               @foreach($dptos as $row)
                                   <option value="{{$row->id}}" {{($rowD->nm_departamento_id == $row->id)?'selected':''}}>{{$row->name}}</option>
                               @endforeach
                           </select>
                       </div>

                       <div class="form-group">
                           <label for="validationTextarea">Descripción:</label>
                           <textarea class="form-control" id="validationTextarea" name="descripcion">{{$rowD->descripcion}}</textarea>
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