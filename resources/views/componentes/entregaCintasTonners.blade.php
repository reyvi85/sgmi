@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h5><i class="fas fa-list"></i> Entrega de Cintas/Tonners
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
                                    <th scope="col">UEB</th>
                                    <th scope="col">Cinta/Tonner</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col"># Inventario</th>
                                    <th scope="col">Serie</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $row)
                                <tr>
                                    <th scope="row">{{$row->id}}</th>
                                    <td>{{$row->nm_ueb->name}}</td>
                                    <td>{{$row->cintaTonner->name}}</td>
                                    <td>{{$row->cantidad}}</td>
                                    <td>{{$row->numero_inventario}}</td>
                                    <td>{{$row->serie}}</td>
                                    <td>{{$row->created_at}}</td>
                                    <td  class="align-middle" style="width: 15%">
                                        <form action="{{route('entregaCintaTonner.destroy', $row->id)}}" method="post">
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
                <form action="{{route('entregaCintaTonner.store')}}" method="post">
                    @csrf
                <div class="modal-body">

                    <div class="form-row">
                        <div class="form-group col-2">
                            <label for="validationTextarea">Cantidad:</label>
                            <input type="text" class="form-control" id="cantidad" name="cantidad" value="{{ old('cantidad') }}">
                        </div>

                        <div class="form-group col-2">
                            <label for="validationTextarea"># Inventario:</label>
                            <input type="text" class="form-control" id="cantidad" name="numero_inventario" value="{{ old('numero_inventario') }}">
                        </div>

                        <div class="form-group col-8">
                            <label for="validationTextarea">Series:</label>
                            <input type="text" class="form-control" id="series" name="series" value="{{ old('numero_inventario') }}">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-6">
                            <label for="validationDefault02">UEB:</label>
                            <select class="custom-select" name="nm_ueb_id">
                                @foreach($uebs as $row)
                                    <option value="{{$row->id}}" {{($row->id == old('nm_ueb_id'))?'selected':''}}>{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group col-6">
                            <label for="validationDefault02">Cintas/Tonners:</label>
                            <select class="custom-select" name="cinta_tonner_id">
                                @foreach($ct as $row)
                                    <option value="{{$row->id}}" {{($row->id == old('cinta_tonner_id'))?'selected':''}}>{{$row->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>


                        <div class="form-group">
                            <label for="validationTextarea">Descripción:</label>
                            <textarea class="form-control" id="validationTextarea" name="nota">{{old('nota')}}</textarea>
                        </div>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>

                </div>
                </form>
            </div>
        </div>
    </div>
@foreach($data as $rowD)
   <!-- Modal ver Detalles -->
    <div class="modal fade" id="ShowDetail-{{$rowD->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-eye"></i> Detalles de la entrega</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-3"><strong>UEB:</strong> {{$rowD->nm_ueb->name}}</div>
                        <div class="col-md-3"><strong># Inventario: </strong> {{$rowD->numero_inventario}}</div>
                        <div class="col-md-3"><strong>Cinta/Tonner: </strong> {{$rowD->cintaTonner->name}}</div>
                        <div class="col-md-3"><strong>Cantidad: </strong> {{$rowD->cantidad}}</div>
                    </div>
                    <div><strong>Series:</strong> {{$rowD->series}}</div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            {{$rowD->nota}}
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
               <form action="{{route('entregaCintaTonner.update', $rowD->id)}}" method="post" id="FormEDIT-{{$rowD->id}}">
                   @csrf
                   @method('PUT')
                   <div class="modal-body">

                       <div class="form-row">
                           <div class="form-group col-2">
                               <label for="validationTextarea">Cantidad:</label>
                               <input type="text" class="form-control" id="cantidad" name="cantidad" value="{{$rowD->cantidad}}">
                           </div>

                           <div class="form-group col-2">
                               <label for="validationTextarea"># Inventario:</label>
                               <input type="text" class="form-control" id="cantidad" name="numero_inventario" value="{{$rowD->numero_inventario}}">
                           </div>

                           <div class="form-group col-8">
                               <label for="validationTextarea">Series:</label>
                               <input type="text" class="form-control" id="series" name="series" value="{{$rowD->series}}">
                           </div>
                       </div>

                       <div class="form-row">
                           <div class="form-group col-6">
                               <label for="validationDefault02">UEB:</label>
                               <select class="custom-select" name="nm_ueb_id">
                                   @foreach($uebs as $row)
                                       <option value="{{$row->id}}" {{($row->id == $rowD->nm_ueb_id)?'selected':''}}>{{$row->name}}</option>
                                   @endforeach
                               </select>
                           </div>

                           <div class="form-group col-6">
                               <label for="validationDefault02">Cintas/Tonners:</label>
                               <select class="custom-select" name="cinta_tonner_id">
                                   @foreach($ct as $row)
                                       <option value="{{$row->id}}" {{($row->id == $rowD->cinta_tonner_id)?'selected':''}}>{{$row->name}}</option>
                                   @endforeach
                               </select>
                           </div>
                       </div>


                       <div class="form-group">
                           <label for="validationTextarea">Descripción:</label>
                           <textarea class="form-control" id="validationTextarea" name="nota">{{$rowD->nota}}</textarea>
                       </div>


                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                       <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>

                   </div>
               </form>
           </div>
       </div>
   </div>
@endforeach

    @endsection
