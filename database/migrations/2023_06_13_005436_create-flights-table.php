<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->id('Flight_ID');
            $table->string('Aircraft_ID');
            $table->string('Departure_Airport',15);
            $table->string('Arrival_Airport',15);
            $table->time('Departure_Time');
            $table->time('Arrival_Time');
            $table->time('Flight_Duration'); //HH:MM:SS
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('flights');
    }
};
