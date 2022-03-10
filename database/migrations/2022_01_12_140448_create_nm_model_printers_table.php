<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNmModelPrintersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nm_model_printers', function (Blueprint $table) {
            $table->id();
            $table->string('name', 100);
            $table->unsignedBigInteger('nm_printer_id');
            $table->unsignedBigInteger('nm_fabricante_id');
            $table->timestamps();

            $table->foreign('nm_printer_id')->references('id')->on('nm_printers')->onDelete('Cascade');
            $table->foreign('nm_fabricante_id')->references('id')->on('nm_fabricantes')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nm_model_printers');
    }
}
