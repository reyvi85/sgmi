<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(Nom_countriesTableSeeder::class);
        $this->call(Nom_continetsTableSeeder::class);
        $this->call(Nom_languagesTableSeeder::class);
        $this->call(Nom_municipalitiesTableSeeder::class);
        $this->call(Nom_regionsTableSeeder::class);
    }
}
