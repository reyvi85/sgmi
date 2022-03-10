<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Nom_municipality;
use Faker\Generator as Faker;

$factory->define(Nom_municipality::class, function (Faker $faker) {
    return [
        'description' => $faker->unique()->city,
    ];
});
