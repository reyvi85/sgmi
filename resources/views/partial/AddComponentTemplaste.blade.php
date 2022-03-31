<div class="row">
    <div class="col-md-6">
        <h1><i class="fas fa-laptop"></i> Añadir componentes</h1>
    </div>

    <div class="col-md-3">
        <a class="btn btn-primary" href="{{route('computadora.show', $computadora->id)}}"> <i class="fas fa-eye"></i> Ver expediente</a>
        <a class="btn btn-primary" href="{{route('expediente.print', $computadora->id)}}" target="_blank"> <i class="fas fa-print"></i> Imprimir</a>
    </div>

    <div class="col-md-3">
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle btn-block" type="button" id="ADD_Components" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-list"></i> Lista de componentes
            </button>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="ADD_Components">
                @include('partial.componentesLink',["computadora"=>$computadora->id])
            </div>
        </div>
    </div>
    <hr>
</div>
<div class="row">
    <hr>
    <div class="col-md-6">
        <p><strong>Nombre: </strong>{{$computadora->nombre}}</p>
        <p><strong># de Inventario: </strong>{{$computadora->numero_inventario}}</p>
        <p><strong># de Sello: </strong>{{$computadora->sellos->last()->number}}</p>
        <p><strong>IP: </strong>{{$computadora->ip}}</p>
    </div>

    <div class="col-md-6">
        <p><strong>MAC: </strong>{{$computadora->mac}}</p>
        <p><strong>Sistema Operativo: </strong>{{$computadora->NmSistema->name}}</p>
        <p><strong>UEB: </strong>{{$computadora->NmUeb->name}}</p>
        <p><strong>Departamento: </strong>{{$computadora->NmDepartamento->name}}</p>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <hr>
    </div>
</div>
{{$slot}}
