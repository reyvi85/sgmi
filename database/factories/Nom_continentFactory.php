<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Nom_continent;
use Faker\Generator as Faker;

$factory->define(Nom_continent::class, function (Faker $faker) {
    return [
        'description' => $faker->unique()->locale,
    ];
});
