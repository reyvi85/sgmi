<?php

use Illuminate\Database\Seeder;

class Nom_municipalitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Nom_municipality::class, 100)->create();
    }
}
