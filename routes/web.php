<?php
use \Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
   return view('home');

});
Route::get('averias/', 'ReporteAveriaController@publicList')->name('averiaPublica.list');
Route::get('averias/publica/{averium}', 'ReporteAveriaController@publicShow')->name('averiaPublica.show');

Route::prefix('administrar')->middleware(['auth','CheckAdmin'])->group(function (){
    Route::prefix('usuarios')->group(function () {
        Route::get('/', 'UserController@index')->name('user.index');
        Route::post('/', 'UserController@store')->name('user.store');
        Route::put('editar/{user}', 'UserController@update')->name('user.update');
        Route::delete('eliminar/{user}', 'UserController@destroy')->name('user.destroy');
    });
    Route::resource('entradaMedio', 'EntradaMediosController')->except(['show','create', 'edit']);
    Route::resource('entregaCintaTonner', 'EntregaCintaTonnersController')->except(['show','create', 'edit']);
    Route::resource('entregaBateria', 'EntregaBateriasController')->except(['show','create', 'edit']);
    Route::get('cmd/{comando?}', function($comando = 'list'){
        Artisan::call($comando);
        dd(Artisan::output());
    })->name('cmd');

});




Route::prefix('reportes')->middleware(['auth'])->group(function () {
    Route::resource('nmAveria', 'NmAveriasController')->except(['show','create','edit']);
    Route::resource('averia', 'ReporteAveriaController');
});

Route::prefix('nomencladores')->middleware(['auth','CheckDpto:1'])->group(function () {
    Route::resource('nmUeb', 'NmUebController')->except(['show','create', 'edit']);
    Route::resource('nmDepartamento', 'NmDepartamentoController')->except(['show', 'create','edit']);
    Route::resource('nmSistema', 'NmSistemaController')->except(['show', 'create','edit']);
    Route::resource('nmFabricante', 'NmFabricanteController')->except(['show', 'create','edit']);
    Route::resource('nmPotencia', 'NmPotenciaController')->except(['show', 'create','edit']);
    Route::resource('nmCapacidadHdd', 'NmCapacidadHddController')->except(['show', 'create','edit']);
    Route::resource('nmConector', 'NmConectorController')->except(['show', 'create','edit']);
    Route::resource('nmMonitor', 'NmMonitorController')->except(['show', 'create','edit']);

    Route::resource('nmPrinter', 'NmPrinterController')->except(['show', 'create','edit']);
    Route::resource('nmModelPrinter', 'NmModelPrinterController')->except(['show', 'create','edit']);
    Route::resource('cintaTonner', 'CintaTonnersController')->except(['show', 'create','edit']);




    Route::resource('nmVoltaje', 'NmVoltajeController')->except(['show', 'create','edit']);
    Route::resource('nmRam', 'NmRamController')->except(['show', 'create','edit']);
    Route::resource('nmVelocidadRam', 'NmVelocidadRamController')->except(['show', 'create','edit']);
    Route::resource('nmProcesador', 'NmProcesadorController')->except(['show', 'create','edit']);
    Route::resource('nmGeneracion', 'NmGeneracionController')->except(['show', 'create','edit']);
    Route::resource('nmInchMonitor', 'NmInchMonitorController')->except(['show', 'create','edit']);

});

Route::prefix('equipos')->middleware(['auth'])->group(function () {
    Route::resource('computadora', 'ComputadoraController');
    Route::get('computadora/print/{computadora}', 'ComputadoraController@showPrint')->name('expediente.print');

    /** LECTOR DE CD */
    Route::get('lectorcd/', 'LectorcdController@index')->name('cd.index');
    Route::get('lectorcd/{computadora}', 'LectorcdController@lectorPC')->name('cd.pc');
    Route::post('lectorcd/{computadora}', 'LectorcdController@store')->name('cd.store');
    Route::put('lectorcd/{lectorcd}', 'LectorcdController@update')->name('cd.update');
    Route::delete('lectorcd/eliminar/{lectorcd}', 'LectorcdController@destroy')->name('cd.destroy');

    /** HDD */
    Route::get('hdd/', 'HddController@index')->name('hdd.index');
    Route::get('hdd/{computadora}', 'HddController@hddPC')->name('hdd.pc');
    Route::post('hdd/{computadora}', 'HddController@store')->name('hdd.store');
    Route::put('hdd/{hdd}', 'HddController@update')->name('hdd.update');
    Route::delete('hdd/eliminar/{hdd}', 'HddController@destroy')->name('hdd.destroy');

    /** RAM */
    Route::get('ram/', 'RamController@index')->name('ram.index');
    Route::get('ram/{computadora}', 'RamController@ramPC')->name('ram.pc');
    Route::post('ram/{computadora}', 'RamController@store')->name('ram.store');
    Route::put('ram/{ram}', 'RamController@update')->name('ram.update');
    Route::delete('ram/eliminar/{ram}', 'RamController@destroy')->name('ram.destroy');

    /** FUENTE */
    Route::get('fuente/', 'FuentesController@index')->name('fuente.index');
    Route::get('fuente/{computadora}', 'FuentesController@fuentePC')->name('fuente.pc');
    Route::post('fuente/{computadora}', 'FuentesController@store')->name('fuente.store');
    Route::put('fuente/{fuente}', 'FuentesController@update')->name('fuente.update');
    Route::delete('fuente/eliminar/{fuente}', 'FuentesController@destroy')->name('fuente.destroy');

    /** TECLADO */
    Route::get('teclado/', 'TecladoController@index')->name('teclado.index');
    Route::get('teclado/{computadora}', 'TecladoController@tecladoPC')->name('teclado.pc');
    Route::post('teclado/{computadora}', 'TecladoController@store')->name('teclado.store');
    Route::put('teclado/{teclado}', 'TecladoController@update')->name('teclado.update');
    Route::delete('teclado/eliminar/{teclado}', 'TecladoController@destroy')->name('teclado.destroy');

    /** Mouse */
    Route::get('mouse/', 'MouseController@index')->name('mouse.index');
    Route::get('mouse/{computadora}', 'MouseController@tecladoPC')->name('mouse.pc');
    Route::post('mouse/{computadora}', 'MouseController@store')->name('mouse.store');
    Route::put('mouse/{raton}', 'MouseController@update')->name('mouse.update');
    Route::delete('mouse/eliminar/{raton}', 'MouseController@destroy')->name('mouse.destroy');

    /** Backup */
    Route::get('backup/', 'BackupController@index')->name('backup.index');
    Route::get('backup/{computadora}', 'BackupController@backupPC')->name('backup.pc');
    Route::post('backup/{computadora}', 'BackupController@store')->name('backup.store');
    Route::put('backup/{backup}', 'BackupController@update')->name('backup.update');
    Route::delete('backup/eliminar/{backup}', 'BackupController@destroy')->name('backup.destroy');

    /** Monitor */
    Route::get('monitor/', 'DisplayController@index')->name('monitor.index');
    Route::get('monitor/{computadora}', 'DisplayController@displayPC')->name('monitor.pc');
    Route::post('monitor/{computadora}', 'DisplayController@store')->name('monitor.store');
    Route::put('monitor/{display}', 'DisplayController@update')->name('monitor.update');
    Route::delete('monitor/eliminar/{display}', 'DisplayController@destroy')->name('monitor.destroy');

    /** IMPRESORA */
    Route::get('impresora/', 'PrinterController@index')->name('printer.index');
    Route::get('impresora/{computadora}', 'PrinterController@printerPC')->name('printer.pc');
    Route::post('impresora/{computadora}', 'PrinterController@store')->name('printer.store');
    Route::put('impresora/{printer}', 'PrinterController@update')->name('printer.update');
    Route::delete('impresora/eliminar/{printer}', 'PrinterController@destroy')->name('printer.destroy');

    /** MOTHERBOARD */
    Route::get('board/', 'MotherboardController@index')->name('board.index');
    Route::get('board/{computadora}', 'MotherboardController@boardPC')->name('board.pc');
    Route::post('board/{computadora}', 'MotherboardController@store')->name('board.store');
    Route::put('board/{motherboard}', 'MotherboardController@update')->name('board.update');
    Route::delete('board/eliminar/{motherboard}', 'MotherboardController@destroy')->name('board.destroy');

    /** Microprocesador */
    Route::get('procesador/', 'MicroprocesadorController@index')->name('procesador.index');
    Route::get('procesador/{computadora}', 'MicroprocesadorController@procesadorPC')->name('procesador.pc');
    Route::post('procesador/{computadora}', 'MicroprocesadorController@store')->name('procesador.store');
    Route::put('procesador/{microprocesador}', 'MicroprocesadorController@update')->name('procesador.update');
    Route::delete('procesador/eliminar/{microprocesador}', 'MicroprocesadorController@destroy')->name('procesador.destroy');

    /** Tarjeta de Videos */
    Route::get('tvideo/', 'TvideoController@index')->name('tvideo.index');
    Route::get('tvideo/{computadora}', 'TvideoController@tvideoPC')->name('tvideo.pc');
    Route::post('tvideo/{computadora}', 'TvideoController@store')->name('tvideo.store');
    Route::put('tvideo/{tvideo}', 'TvideoController@update')->name('tvideo.update');
    Route::delete('tvideo/eliminar/{tvideo}', 'TvideoController@destroy')->name('tvideo.destroy');

/** SPEAKER  */
    Route::get('speaker/', 'SpeakerController@index')->name('speaker.index');
    Route::get('speaker/{computadora}', 'SpeakerController@speakerPC')->name('speaker.pc');
    Route::post('speaker/{computadora}', 'SpeakerController@store')->name('speaker.store');
    Route::put('speaker/{speaker}', 'SpeakerController@update')->name('speaker.update');
    Route::delete('speaker/eliminar/{speaker}', 'SpeakerController@destroy')->name('speaker.destroy');


});

//Route::get('/', 'LandingController@index')->name('index');

Auth::routes(['register'=>false, 'reset'=>false]);


