<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TouristPass extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'firstname',
            'lastname',
            'country',
            'pass_type',
            'start_type',
            'tour_type',
            'request_date',
            'phone',
            'email'
    ];
}
