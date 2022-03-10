@extends('layouts.appPrint')
@section('content')
    <div class="row py-2">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-laptop"></i> Expediente de la PC:  <strong>{{$computadora->nombre}}</strong></h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="text-uppercase">Datos Generales</th>
                                    <th scope="col" class="text-uppercase">Monitor</th>
                                    <th scope="col" class="text-uppercase">Teclado</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       <!--- COMPUTADORA --->
                                        @include('expediente.pcGeneral', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- Monitor --->
                                        @include('expediente.Monitor', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- Monitor --->
                                        @include('expediente.Teclado', ['modeMin'=>true])
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="text-uppercase">MOUSE</th>
                                    <th scope="col" class="text-uppercase">motherboard</th>
                                    <th scope="col" class="text-uppercase">MICROPROCESADOR</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <!--- MOUSE --->
                                        @include('expediente.Mouse', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- motherboard --->
                                        @include('expediente.Board', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- MICROPROCESADOR --->
                                        @include('expediente.Microprocesador', ['modeMin'=>true])
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="text-uppercase">HDD</th>
                                    <th scope="col" class="text-uppercase">IMPRESORA</th>
                                    <th scope="col" class="text-uppercase">LECTOR CD/DVD</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <!--- HDD --->
                                        @include('expediente.Hdd', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- IMPRESORA --->
                                        @include('expediente.Printer', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- LECTOR CD/DVD --->
                                        @include('expediente.LectorCD', ['modeMin'=>true])
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="text-uppercase">RAM</th>
                                    <th scope="col" class="text-uppercase">FUENTE</th>
                                    <th scope="col" class="text-uppercase">TARJETA DE VIDEO</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <!--- RAM --->
                                        @include('expediente.RAM', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- FUENTE --->
                                        @include('expediente.Fuente', ['modeMin'=>true])
                                    </td>
                                    <td>
                                        <!-- TARJETA DE VIDEO --->
                                        @include('expediente.Tvideo', ['modeMin'=>true])
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col" class="text-uppercase">SPEAKER</th>
                                    <th scope="col" class="text-uppercase"></th>
                                    <th scope="col" class="text-uppercase"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <!--- HDD --->
                                        @include('expediente.Speaker', ['modeMin'=>true])
                                    </td>
                                    <td>

                                    </td>
                                    <td>

                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection