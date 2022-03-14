<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnInventarioToAverias extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('averias', function (Blueprint $table) {
            $table->string('numero_inventario', 100)->nullable()->after('nm_departamento_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('averias', function (Blueprint $table) {
            $table->dropColumn('numero_inventario');
        });
    }
}
