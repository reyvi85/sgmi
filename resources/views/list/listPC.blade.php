@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"><h5><i class="fas fa-list"></i> Computadoras
                        <button type="button" class="close" data-toggle="modal" data-target="#AddPC"><span aria-hidden="true" class="fas fa-laptop"></span> Añadir</button>
                    </h5></div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table class="table" id="pcs">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col"># Inventario</th>
                                    <th scope="col"># Sello</th>
                                    <th scope="col">IP</th>
                                    <th scope="col">MAC</th>
                                    <th scope="col">UEB</th>
                                    <th scope="col">Departamento</th>
                                    <th scope="col">SO</th>
                                    <th></th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </div>

    @include('estadisticas.computadoras')


    <!-- Modal -->
    <div class="modal fade" id="AddPC" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fas fa-laptop"></i> Agregar nueva PC</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form  action="{{route('computadora.store')}}" method="post">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nombre :</label>
                                <input type="text" class="form-control @error('nombre') is-invalid @enderror" placeholder="Nombre de la pc" name="nombre" value="{{old('nombre')}}">
                                @error('nombre')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-3">
                                <label># Inventario :</label>
                                <input type="text" class="form-control @error('numero_inventario') is-invalid @enderror" placeholder="# inventario" name="numero_inventario" value="{{old('numero_inventario')}}">
                                @error('numero_inventario')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-3">
                                <label># Sello :</label>
                                <input type="text" class="form-control @error('numero_sello') is-invalid @enderror" placeholder="# sello" name="numero_sello" value="{{old('numero_sello')}}">
                                @error('numero_sello')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label>IP:</label>
                                <input type="text" class="form-control @error('ip') is-invalid @enderror" placeholder="Ip" name="ip" value="{{old('ip')}}">
                                @error('ip')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-4">
                                <label>MAC:</label>
                                <input type="text" class="form-control @error('mac') is-invalid @enderror" placeholder="Mac" name="mac" value="{{old('mac')}}">
                                @error('mac')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            <div class="form-group col-md-4">
                                <label>UEB:</label>
                                <select class="custom-select mr-sm-2  @error('nm_ueb_id') is-invalid @enderror" name="nm_ueb_id">
                                    <option selected value="">-- Seleccione --</option>
                                    @foreach($ueb as $item)
                                        <option value="{{$item->id}}" {{(old('nm_ueb_id') == $item->id)?'selected':''}}>{{$item->name}}</option>
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
                                        <option value="{{$item->id}}" {{(old('nm_departamento_id') == $item->id)?'selected':''}}>{{$item->name}}</option>
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
                                        <option value="{{$item->id}}" {{(old('nm_sistema_id') == $item->id)?'selected':''}}>{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('nm_sistema_id')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                        </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar computadora</button>
                </div>
                </form>
                </div>
            </div>
        </div>
    </div>

    @endsection

@section('script')
    <script>
        $(document).ready(function () {
            $('#pcs').DataTable({
                "serverSide":true,
                "ajax":"{{url('api/pcs')}}",
                "columns":[
                    {data: 'id'},
                    {data: 'nombre'},
                    {data: 'numero_inventario'},
                    {data: 'ultimo_sello'},
                    {data: 'ip'},
                    {data: 'mac'},
                    {data: 'UEB'},
                    {data: 'Dpto'},
                    {data: 'SO'},
                    {data: 'btn'},
                ]
            });
        });
    </script>
    @endsection

