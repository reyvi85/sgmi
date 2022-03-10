<?php

use Illuminate\Database\Seeder;

class Nom_continetsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Nom_continent::class, 100)->create();
    }
}
