<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    use HasFactory;
    protected $primaryKey = 'Flight_ID';
    protected $fillable = ['Aircraft_ID', 'Departure_Airport', 'Arrival_Airport', 'Departure_Time','Arrival_Time','Flight_Duration'];
   

}
