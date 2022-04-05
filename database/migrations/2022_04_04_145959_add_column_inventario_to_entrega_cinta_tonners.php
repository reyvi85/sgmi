<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnInventarioToEntregaCintaTonners extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('entrega_cinta_tonners', function (Blueprint $table) {
            $table->string('numero_inventario', 100)->nullable()->after('series');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('entrega_cinta_tonners', function (Blueprint $table) {
            $table->dropColumn('numero_inventario');
        });
    }
}
