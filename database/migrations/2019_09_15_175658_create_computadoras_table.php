<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComputadorasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('computadoras', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre', 100)->unique();
            $table->string('numero_inventario', 100)->nullable();
            $table->string('ip', 100)->nullable();
            $table->string('mac', 100)->nullable();
            $table->unsignedBigInteger('nm_ueb_id');
            $table->unsignedBigInteger('nm_departamento_id');
            $table->unsignedBigInteger('nm_sistema_id');
            $table->timestamps();

            /***RELACIONES */
            $table->foreign('nm_ueb_id')->references('id')->on('nm_uebs')->onDelete('Cascade');
            $table->foreign('nm_departamento_id')->references('id')->on('nm_departamentos')->onDelete('Cascade');
            $table->foreign('nm_sistema_id')->references('id')->on('nm_sistemas')->onDelete('Cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('computadoras');
    }
}
