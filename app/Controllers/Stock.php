<?php

namespace App\Controllers;

use \App\Models\StockModel;
use \App\Models\CategoryModel;
use PhpOffice\PhpSpreadsheet\Reader\Xls;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use Doctrine\Common\Annotations\Reader;


class Stock extends BaseController
{
    private $stockModel, $catModel;
    public function __construct()
    {
        $this->stockModel = new StockModel();
        $this->catModel = new CategoryModel();
    }

    public function index()
    {
        // $stockModel = new StockModel();
        $dataStock = $this->stockModel->getStock();
        $data = [
            'title' => 'Data Produk',
            'result' => $dataStock
        ];
        return view('stock/index', $data);
    }

    public function create()
    {
        session();
        $data = [
            'title' => 'Tambah Stock',
            'category' => $this->catModel->findAll(),
            'validation' => \Config\Services::validation()
        ];
        return view('stock/create', $data);
    }

    public function save()
    {

        //validasi input
        if (!$this->validate([
            'nama' => [
                'rules' => 'required|is_unique[stock.title]',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'is_unique' => '{field} hanya sudah ada'
                ]
            ],
            'harga' => [
                'rules' => 'required|numeric[stock.price]',
                'errors' => [
                    'required' => '{field} harus diisi',
                    'numeric' => '{field} hanya sudah ada'
                ]
            ],
            'stok' => 'required|integer',
        ])) {
            return redirect()->to('/stock/create')->withInput();
        }

        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->stockModel->save([
            'title' => $this->request->getVar('nama'),
            'price' => $this->request->getVar('harga'),
            'stock' => $this->request->getVar('stok'),
            'stock_category_id' => $this->request->getVar('id_kategori'),
            'slug' => $slug
        ]);

        session()->setFlashdata("msg", "Data berhasil ditambahkan!");

        return redirect()->to('/stock');
    }

    public function edit($slug)
    {
        $dataStock = $this->stockModel->getStock($slug);
        // jika data bukunya kosong
        if (empty($dataStock)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Nama Produk $slug tidak ditemukan !");
        }
        $data = [
            'title' => 'Ubah Stock',
            'category' => $this->catModel->findAll(),
            'validation' => \Config\Services::validation(),
            'result' => $dataStock
        ];
        return view('stock/edit', $data);
    }

    public function update($id)
    {
        // cek nama
        $dataOld = $this->stockModel->getStock($this->request->getVar('slug'));
        if ($dataOld['title'] == $this->request->getVar('nama')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[stock.title]';
        }



        // validasi data
        if (!$this->validate([
            'nama' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} harus diisi',
                    'is_unique' => '{field} hanya sudah ada'
                ]
            ],
            'harga' => 'required|numeric',
            'stok' => 'required|integer',
        ])) {
            return redirect()->to('/stock/edit/' . $this->request->getVar('slug'))->withInput();
        }

        //Membuat string menjadi huruf kecil semuda dan spasinya diganti 
        $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->stockModel->save([
            'stock_id' => $id,
            'title' => $this->request->getVar('nama'),
            'price' => $this->request->getVar('harga'),
            'stock' => $this->request->getVar('stok'),
            'stock_category_id' => $this->request->getVar('id_kategori'),
            'slug' => $slug
        ]);

        session()->setFlashdata("msg", "Data berhasil diubah!");

        return redirect()->to('/stock');
    }

    public function delete($id)
    {
        //Cari gambar by ID
        $dataStock = $this->stockModel->find($id);
        $this->stockModel->delete($id);

        session()->setFlashdata("msg", "Stock berhasil dihapus!");
        return redirect()->to('/stock');
    }
}
