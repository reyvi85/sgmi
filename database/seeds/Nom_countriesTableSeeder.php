<?php

use Illuminate\Database\Seeder;

class Nom_countriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Nom_country::class, 100)->create();
    }
}
