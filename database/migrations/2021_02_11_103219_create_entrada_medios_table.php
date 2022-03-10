<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntradaMediosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entrada_medios', function (Blueprint $table) {
            $table->id();
            $table->integer('medio');
            $table->unsignedBigInteger('nm_ueb_id');
            $table->unsignedBigInteger('nm_departamento_id');
            $table->text('descripcion');
            $table->timestamps();

            $table->foreign('nm_ueb_id')->references('id')->on('nm_uebs');
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
        Schema::dropIfExists('entrada_medios');
    }
}
