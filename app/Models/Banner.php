<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Banner extends Model
{
    //
    use Notifiable;

    protected $table = 'banner';

    protected $guarded = ['id'];
}
