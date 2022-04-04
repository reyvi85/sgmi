<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntregaCintaTonnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entrega_cinta_tonners', function (Blueprint $table) {
            $table->id();
            $table->integer('cantidad');
            $table->string('series')->nullable();
            $table->text('nota')->nullable();
            $table->unsignedBigInteger('nm_ueb_id');
            $table->unsignedBigInteger('cinta_tonner_id');
            $table->timestamps();

            $table->foreign('nm_ueb_id')->references('id')->on('nm_uebs')->onDelete('Cascade');
            $table->foreign('cinta_tonner_id')->references('id')->on('cinta_tonners')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('entrega_cinta_tonners');
    }
}
