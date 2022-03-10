@if ($modeMin == false)
    <div class="py-2">
        <div class="card">
            <div class="card-header">
                <h5>TECLADO</h5>
            </div>
            <div class="card-body">
                @if (count($computadora->teclados) == 0)
                    <p class="text-center text-muted">No hay dispositivos que mostrar</p>
                @else
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">SN</th>
                                <th scope="col" class="text-center"># INVENTARIO</th>
                                <th scope="col" class="text-center">FABRICANTE</th>
                                <th scope="col" class="text-center">TIPO</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($computadora->teclados as $row)
                                <tr>
                                    <th scope="row">{{$row->sn}}</th>
                                    <td class="text-center">{{$row->inventario}}</td>
                                    <td class="text-center">{{selectName($fabricantes, $row->nm_fabricante_id)}}</td>
                                    <td class="text-center">{{$row->nm_conector->name}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @endif
            </div>
        </div>
    </div>
    @else
    @if (count($computadora->teclados) == 0)
        <p class="text-center text-muted">No hay dispositivos que mostrar</p>
    @else
        @foreach($computadora->teclados as $row)
            <strong>#SERIE: </strong>{{$row->sn}} <BR>
            <strong># INVENTARIO: </strong>{{$row->inventario}}<BR>
            <strong>FABRICANTE: </strong>{{selectName($fabricantes, $row->nm_fabricante_id)}}<BR>
            <strong>TIPO: </strong>{{$row->nm_conector->name}}<BR>
            <HR>
        @endforeach
    @endif

@endif

