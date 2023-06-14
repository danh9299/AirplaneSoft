<?php

namespace Database\Seeders;
use Faker\Factory as Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Flight;
class FlightTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for ($i = 0; $i < 70; $i++) { // Creating 50 posts just for example.
            Flight::create([
                
                'Aircraft_ID' => $faker->numerify('###'),
                'Departure_Airport'=>$faker->text(rand(5, 15)),
                'Arrival_Airport'=>$faker->text(rand(5, 15)),
                'Departure_Time'=>$faker->time(),
                'Arrival_Time'=>$faker->time(),
                'Flight_Duration'=>$faker->time(),
 ]);
        //
       
    
}
    }}