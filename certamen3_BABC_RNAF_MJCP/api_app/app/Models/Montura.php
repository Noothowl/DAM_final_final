<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Montura extends Model
{
    use HasFactory;
    protected $table='monturas';
    protected $primarykey ='id';
    public $incrementing=false;
    protected $keytype ='String';
}
