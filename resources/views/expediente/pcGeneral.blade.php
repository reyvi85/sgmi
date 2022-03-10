@if ($modeMin == false)
    <div class="card">
        <div class="card-header">
            <h5>DATOS GENERALES</h5>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <strong>#INVENTARIO: </strong> {{$computadora->numero_inventario}} <br>
                    <strong>#SELLO: </strong> {{$computadora->sellos->first()->number}} <a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-external-link-square-alt" title="Historico de Sellos"></i></a><br>
                    <strong>IP: </strong> {{$computadora->ip}}
                </div>

                <div class="col-md-6">
                    <strong>MAC: </strong> {{$computadora->mac}} <br>
                    <strong>UEB: </strong> {{$computadora->NmUeb->name}} <br>
                    <strong>DEPARTAMENTO: </strong> {{$computadora->NmDepartamento->name}}
                </div>
            </div>

        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Histórico de sellos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @component('expediente.historicoSellos',['pc'=>$computadora])@endcomponent
                </div>
            </div>
        </div>
    </div>
    @else
    <strong>#INVENTARIO: </strong> {{$computadora->numero_inventario}} <br>
    <strong>#SELLO: </strong> {{$computadora->sellos->first()->number}} <a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-external-link-square-alt" title="Historico de Sellos"></i></a><br>
    <strong>IP: </strong> {{$computadora->ip}}
    <strong>MAC: </strong> {{$computadora->mac}} <br>
    <strong>UEB: </strong> {{$computadora->NmUeb->name}} <br>
    <strong>DEPARTAMENTO: </strong> {{$computadora->NmDepartamento->name}}
@endif
