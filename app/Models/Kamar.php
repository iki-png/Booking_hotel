<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kamar extends Model
{
    use HasFactory;

    protected $table = 'kamars';

    // Set primary key menjadi kode_kamar
    protected $primaryKey = 'kode_kamar';

    // Jika primary key bukan auto-incrementing
    public $incrementing = false;

    // Jika primary key bukan integer
    protected $keyType = 'string';

    protected $fillable = [
        'kode_kamar',
        'nama_kamar',
        'harga_kamar',
        
    ];
}