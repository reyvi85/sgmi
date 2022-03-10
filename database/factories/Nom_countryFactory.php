<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Nom_country;
use Faker\Generator as Faker;

$factory->define(Nom_country::class, function (Faker $faker) {
    return [
        'description' => $faker->unique()->country,
    ];
});
