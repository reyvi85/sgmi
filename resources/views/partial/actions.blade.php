<div class="dropdown text-center">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Opciones
    </button>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu">
        <a class="dropdown-item" href="{{route('computadora.show',$id)}}"><i class="fas fa-eye"></i> Ver expediente</a>
        <a class="dropdown-item" href="{{route('expediente.print',$id)}}" target="_blank"><i class="fas fa-print"></i> Imprimir</a>
        <a class="dropdown-item" href="{{route('computadora.edit',$id)}}"><i class="fas fa-edit"></i> Editar</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="{{route('board.pc',$id)}}"><i class="fas fa-plus-circle"></i> Componentes</a>
    </div>
</div>