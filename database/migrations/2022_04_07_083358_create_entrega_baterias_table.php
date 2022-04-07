<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntregaBateriasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entrega_baterias', function (Blueprint $table) {
            $table->id();
            $table->integer('cantidad');
            $table->string('numero_inventario', 100);
            $table->unsignedBigInteger('nm_ueb_id');
            $table->text('nota')->nullable();
            $table->timestamps();

            $table->foreign('nm_ueb_id')->references('id')->on('nm_uebs')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('entrega_baterias');
    }
}
