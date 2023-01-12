<?php

namespace App\Models;

use CodeIgniter\Model;


class CategoryModel extends Model
{
    //Nama Tabel
    protected $table        = 'stock_category';
    //atribut yang digunakan sebagai primary key
    protected $primaryKey = 'stock_category_id';
}
