@if ($modeMin == false)
    <div class="py-2">
        <div class="card">
            <div class="card-header">
                <h5>RAM</h5>
            </div>
            <div class="card-body">
                @if (count($computadora->rams) == 0)
                    <p class="text-center text-muted">No hay dispositivos que mostrar</p>
                @else
                    <div class="table-responsive">
                        <table class="table table-sm">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">SN</th>
                                <th scope="col" class="text-center">VELOCIDAD</th>
                                <th scope="col" class="text-center">FABRICANTE</th>
                                <th scope="col" class="text-center">TIPO</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($computadora->rams as $row)
                                <tr>
                                    <th scope="row">{{$row->sn}}</th>
                                    <td class="text-center">{{$row->nm_velocidad_ram->name}}</td>
                                    <td class="text-center">{{selectName($fabricantes, $row->nm_fabricante_id)}}</td>
                                    <td class="text-center">{{$row->nm_ram->name}}</td>
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
    @if (count($computadora->rams) == 0)
        <p class="text-center text-muted">No hay dispositivos que mostrar</p>
    @else
        @foreach($computadora->rams as $row)
            <strong>#SERIE: </strong> {{$row->sn}}<br>
            <strong>VELOCIDAD: </strong>{{$row->nm_velocidad_ram->name}}<br>
            <strong>FABRICANTE: </strong>{{selectName($fabricantes, $row->nm_fabricante_id)}}<br>
            <strong>TIPO: </strong> {{$row->nm_ram->name}}<br>
            <hr>
        @endforeach
    @endif
@endif

