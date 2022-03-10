<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnInchToDisplays extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('displays', function (Blueprint $table) {
           $table->unsignedBigInteger('nm_inch_monitor_id')->after('nm_monitor_id')->default(1);
           $table->foreign('nm_inch_monitor_id')->references('id')->on('nm_inch_monitors')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('displays', function (Blueprint $table) {
            $table->dropColumn('nm_inch_monitor_id');
        });
    }
}
