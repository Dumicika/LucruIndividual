<?php
    namespace App\Models;

    use Illuminate\Database\Eloquent\Model;

    class Device extends Model {
        protected $table = 'produse';
        protected $fillable = [
            "titlu", "brand", "type", "an_publicare", "isbn", "descriere", "pret"
        ];
    }
    