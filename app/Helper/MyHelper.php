<?php

function getMeses($mes = null){
    $meses = array(1=>"Enero", 2=>"Febrero", 3=>"Marzo", 4=>"Abril", 5=>"Mayo", 6=>"Junio", 7=>"Julio", 8=>"Agosto", 9=>"Septiembre", 10=>"Octubre", 11=>"Noviembre",12=>"Diciembre");
    $data = (!is_null($mes))?$meses[$mes]:$meses;
    return $data;
}

function getStatus(){
    return [
        1=>'Operativo',
        2=>'En taller',
        3=>'Baja'
    ];
}

function getListDepartamento(){
    return[
        1=>'Informática',
        2=>'Comunicaciones'
    ];
}

function getLugarAveria(){
    return [
        1=>'CORPORATIVA',
        2=>'OPERATIVA',
    ];
}

function getStatusAveria(){
    return [
       1=>'Abierto',
       2=>'En Proceso',
       3=>'Cerrado',
       4=>'Sin solución'
    ];
}

function getMediosInformaticos($medio = null){
    $medios = [
        1=>'Motherboard',
        2=>'Microprocesador',
        3=>'Funte Interna',
        4=>'HDD',
        5=>'Memoria RAM',
        6=>'Lector CD/DVD',
        7=>'Tarjeta de Video',
        8=>'Bateria de UPS',
        9=>'Otros',
        10=>'UPS',
        11=>'Tarjetas de Red',
        12=>'Teclado',
        13=>'Mouse'
    ];

    return (is_null($medio)?$medios:$medios[$medio]);
}

function statusAveria($status){
    return getStatusAveria()[$status];
}

function getRole($rol = 0)
{
    switch ($rol) {
        case 1:
            return '<span class="badge badge-pill badge-primary">Administrador</span>';

        default:
            return '<span class="badge badge-pill badge-secondary">Usuario</span>';
    }
}

function getDpto($dpto = 1)
{
    switch ($dpto) {
        case 1:
            return '<span class="badge badge-pill badge-primary">Informática</span>';
            break;
        case 2:
            return '<span class="badge badge-pill badge-secondary">Comunicaciones</span>';
            break;
    }
}

function stateAveria(){
    return [1=>'Reportado', 2=>'En proceso', 3=>'Cerrado'];
}

function lugarAveria(){
    return [1=>'ELECCMG ', 2=>'DESPACHO'];
}

function selectName($colection, $idNomenclador){
    return $colection->where('id', $idNomenclador)->first()->name;
}