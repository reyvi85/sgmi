<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAveriasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('averias', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('nm_averia_id');
            $table->unsignedBigInteger('nm_departamento_id');
            $table->string('nombre');
            $table->integer('lugar')->default(1);
            $table->bigInteger('num_reporte_etecsa')->nullable();
            $table->integer('estado')->default(1);
            $table->text('description');
            $table->integer('flag')->default(1);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('nm_averia_id')->references('id')->on('nm_averias');
            $table->foreign('nm_departamento_id')->references('id')->on('nm_departamentos');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('averias');
    }
}
