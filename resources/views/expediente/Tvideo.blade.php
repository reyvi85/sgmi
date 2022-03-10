@if ($modeMin == false)
    <div class="py-2">
        <div class="card">
            <div class="card-header">
                <h5>TARJETA DE VIDEO</h5>
            </div>
            <div class="card-body">
                @if (count($computadora->tvideo) == 0)
                    <p class="text-center text-muted">No hay dispositivos que mostrar</p>
                @else
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">SN</th>
                                <th scope="col" class="text-center">MODELO</th>
                                <th scope="col" class="text-center">FABRICANTE</th>
                                <th scope="col" class="text-center">CAPACIDAD</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($computadora->tvideo as $row)
                                <tr>
                                    <th scope="row">{{$row->sn}}</th>
                                    <td class="text-center">{{$row->model}}</td>
                                    <td class="text-center">{{selectName($fabricantes, $row->nm_fabricante_id)}}</td>
                                    <td class="text-center">{{$row->nm_velocidad_ram->name}}</td>
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
    @if (count($computadora->tvideo) == 0)
        <p class="text-center text-muted">No hay dispositivos que mostrar</p>
    @else
        @foreach($computadora->tvideo as $row)
            <strong>#SERIE: </strong> {{$row->sn}}<br>
            <strong>MODELO: </strong>{{$row->model}}<br>
            <strong>FABRICANTE: </strong>{{selectName($fabricantes, $row->nm_fabricante_id)}}<br>
            <strong>CAPACIDAD: </strong> {{$row->nm_velocidad_ram->name}}<br>
            <hr>
        @endforeach
    @endif
@endif

