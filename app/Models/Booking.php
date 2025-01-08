<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;

    protected $table = 'bookings';

    // Set primary key menjadi kode_bk
    protected $primaryKey = 'kode_bk';

    // Jika primary key bukan auto-incrementing
    public $incrementing = false;

    // Jika primary key bukan integer
    protected $keyType = 'string';

    protected $fillable = [
        'id_user',
        'kode_hotel',
        'kode_kamar',
        'kode_layanan',
        'durasi_menginap',
        'total_tagihan',
        'status_bk'
        
    ];

    // Definisikan relasi ke model User
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
    // Definisikan relasi ke model hotel
    public function hotel()
    {
        return $this->belongsTo(Hotel::class, 'kode_hotel');
    }
    // Definisikan relasi ke model kamar
    public function kamar()
    {
        return $this->belongsTo(Kamar::class, 'kode_kamar');
    }
    // Definisikan relasi ke model layanan
    public function layanan()
    {
        return $this->belongsTo(Layanan::class, 'kode_layanan');
    }

    


}