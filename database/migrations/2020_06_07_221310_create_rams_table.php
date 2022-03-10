<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rams', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('sn', 100);
            $table->unsignedBigInteger('nm_velocidad_ram_id');
            $table->unsignedBigInteger('nm_fabricante_id');
            $table->unsignedBigInteger('nm_ram_id');
            $table->unsignedBigInteger('computadora_id');
            $table->enum('state', [1,2,3])->default(1);
           // $table->unsignedBigInteger('nm_state_id');
            $table->timestamps();

            $table->foreign('nm_fabricante_id')->references('id')->on('nm_fabricantes')->onDelete('Cascade');
            $table->foreign('nm_ram_id')->references('id')->on('nm_rams')->onDelete('Cascade');
            $table->foreign('nm_velocidad_ram_id')->references('id')->on('nm_velocidad_rams')->onDelete('Cascade');
            $table->foreign('computadora_id')->references('id')->on('computadoras')->onDelete('Cascade');
           // $table->foreign('nm_state_id')->references('id')->on('nm_states')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rams');
    }
}
