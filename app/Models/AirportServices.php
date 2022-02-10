<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AirportServices extends Model
{
    use HasFactory;

    protected $fillable = [
        'firstname',
            'lastname',
            'email',
            'arival_date',
            'flight_company',
            'flight_no',
            'phone',
            'passport_number',
            'arival_country',
            'adult',
            'kids',
            'taxi_type',
            'location'
    ];
}
