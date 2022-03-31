<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCintaTonnerNmModelPrinter extends Migration
{


    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cinta_tonner_nm_model_printer', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cinta_tonner_id');
            $table->unsignedBigInteger('nm_model_printer_id');

            $table->foreign('cinta_tonner_id')->references('id')->on('cinta_tonners')->onDelete('Cascade');
            $table->foreign('nm_model_printer_id')->references('id')->on('nm_model_printers')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cinta_tonner_nm_model_printer');
    }
}
