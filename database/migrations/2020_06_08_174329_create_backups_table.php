<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBackupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('backups', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('sn', 100);
            $table->string('model', 100);
            $table->string('inventario', 100);
            $table->unsignedBigInteger('nm_fabricante_id');
            $table->unsignedBigInteger('nm_potencia_id');
            $table->unsignedBigInteger('computadora_id');
            $table->enum('state', [1,2,3])->default(1);
            $table->timestamps();

            $table->foreign('nm_fabricante_id')->references('id')->on('nm_fabricantes')->onDelete('Cascade');
            $table->foreign('nm_potencia_id')->references('id')->on('nm_potencias')->onDelete('Cascade');
            $table->foreign('computadora_id')->references('id')->on('computadoras')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('backups');
    }
}
