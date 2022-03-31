<?php

use Illuminate\Http\Request;
use App\Models\Views\Pc,
    App\Models\Views\ViewHdd,
    App\Models\Views\ViewMotherboard
    ;
use App\Repository\DataTableDataRepository;

$repository = new  DataTableDataRepository();

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/
Route::get('pcs', function () {
    return datatables()->eloquent(Pc::query())
        ->addColumn('btn','partial/actions')
        ->rawColumns(['btn'])
        ->toJson();
});

Route::get('hdds/{state?}', function ($state=null) use($repository) {
    return $repository->getHdds($state);
})->where('state', '[1-3]');


Route::get('boards/{state?}', function ($state=null) use($repository) {
    return $repository->getBoard($state);
})->where('state', '[1-3]');

Route::get('microprocesadors/{state?}', function ($state=null) use($repository) {
    return $repository->getMicro($state);
})->where('state', '[1-3]');

Route::get('fuentes/{state?}', function ($state=null) use($repository) {
    return $repository->getFuentes($state);
})->where('state', '[1-3]');

Route::get('rams/{state?}', function ($state=null) use($repository) {
    return $repository->getRams($state);
})->where('state', '[1-3]');

Route::get('cds/{state?}', function ($state=null) use($repository) {
    return $repository->getLectorcd($state);
})->where('state', '[1-3]');

Route::get('monitors/{state?}', function ($state=null) use($repository) {
    return $repository->getDisplay($state);
})->where('state', '[1-3]');

Route::get('teclados/{state?}', function ($state=null) use($repository) {
    return $repository->getTeclado($state);
})->where('state', '[1-3]');

Route::get('mouses/{state?}', function ($state=null) use($repository) {
    return $repository->getMouse($state);
})->where('state', '[1-3]');

Route::get('backups/{state?}', function ($state=null) use($repository) {
    return $repository->getBackup($state);
})->where('state', '[1-3]');

Route::get('printers/{state?}', function ($state=null) use($repository) {
    return $repository->getPrinters($state);
})->where('state', '[1-3]');

Route::get('tvideo/{state?}', function ($state=null) use($repository) {
    return $repository->getTvideo($state);
})->where('state', '[1-3]');

Route::get('speaker/{state?}', function ($state=null) use($repository) {
    return $repository->getSpeaker($state);
})->where('state', '[1-3]');

Route::get('averias/{dpto?}/{state?}', function ($dpto =null, $state=null) use($repository) {
    return $repository->getAverias($dpto,$state);
})->where('state', '[1-3]');

Route::get('averias-publicas/', function () use($repository) {
    return $repository->getAveriasPublicas();
});




