<?php

use Illuminate\Database\Seeder;

class Nom_regionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Nom_region::class, 100)->create();
    }
}
