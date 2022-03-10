<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnNmModelPrinterToPrinters extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('printers', function (Blueprint $table) {
           $table->unsignedBigInteger('nm_model_printer_id')->after('sn');
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
        Schema::table('printers', function (Blueprint $table) {
            $table->dropColumn('nm_model_printer_id');
            $table->dropForeign('printers_nm_model_printer_id_foreign');
        });
    }
}
