<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSolucionColumnToAverias extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('averias', function (Blueprint $table) {
            $table->text('solucion')->after('description')->nullable();
            $table->integer('solucion_user')->after('solucion')->nullable();
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
            $table->dropColumn('solucion');
            $table->dropColumn('solucion_user');
        });
    }
}
