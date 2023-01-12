<?php

namespace App\Models;

use CodeIgniter\Model;


class StockModel extends Model
{
    //nama tabel
    protected $table        = 'stock';
    //atribut yang digunakan menjadi primary key
    protected $primaryKey = 'stock_id';
    // Atribut untuk menyimpan created_at dan updated_at
    protected $useTimestamps =  true;
    protected $allowedFields = [
        'title', 'slug', 'price', 'stock', 'stock_category_id'
    ];

    protected $useSoftDeletes = true;

    public function getStock($slug = false)
    {
        $query = $this->table('stock')
            ->join('stock_category', 'stock_category_id')
            ->where('deleted_at is null');

        if ($slug == false)
            return $query->get()->getResultArray();
        return $query->where(['slug' => $slug])->first();
    }
}
