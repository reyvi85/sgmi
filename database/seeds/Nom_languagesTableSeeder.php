<?php

use Illuminate\Database\Seeder;

class Nom_languagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Nom_language::class, 100)->create();
    }
}
