<div class="dropdown text-center">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Opciones
    </button>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu">
        <h5 class="dropdown-header font-weight-bold">{{$nombre}}</h5>
        <a class="dropdown-item" href="{{route('computadora.show',$id)}}"><i class="fas fa-eye"></i> Ver expediente</a>
        <a class="dropdown-item" href="{{route('expediente.print',$id)}}" target="_blank"><i class="fas fa-print"></i> Imprimir</a>
        <a class="dropdown-item" href="{{route('computadora.edit',$id)}}"><i class="fas fa-edit"></i> Editar</a>
        <div class="dropdown-divider"></div>
        <h5 class="dropdown-header">Componentes</h5>
        @include('partial.componentesLink',["computadora"=>$id])




    </div>
</div>
