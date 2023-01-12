<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">DATA STOCK</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Pengelolaan Data Stock</li>
        </ol>

    </div>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            <?= $title ?>
        </div>
        <div class="card-body">
            <!-- form edit stock -->
            <form action="/stock/edit/<?= $result['stock_id'] ?>" method="POST" enctype="multipart/form-data">
                <?= csrf_field() ?>
                <input type="hidden" name="slug" value="<?= $result['slug'] ?>">
                <div class="mb-3 row">
                    <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= $validation->hasError('nama') ? 'is-invalid' : '' ?>" id="nama" name="nama" value="<?= old('nama', $result['title']) ?>">
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            <?= $validation->getError('nama') ?>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="stok" class="col-sm-2 col-form-label">Stok</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="stok" name="stok" value="<?= old('stok') ?>">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="harga" class="col-sm-2 col-form-label">Harga</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control <?= $validation->hasError('harga') ?
                                                                    'is-invalid' : '' ?>" id="harga" name="harga" value="<?= old('harga') ?>">
                        <div id="validationServer03Feedback" class="invalid-feedback"><?= $validation->getError('harga') ?>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="id_kategori" class="col-sm-2 col-form-label">Kategori</label>
                    <div class="col-sm-3">
                        <select type="text" class="form-control" id="id_kategori" name="id_kategori">
                            <?php foreach ($category as $value) : ?>
                                <option value="<?= $value['stock_category_id'] ?>" <?= $value['stock_category_id']
                                                                                        == $result['stock_category_id']
                                                                                        ? 'selected' : '' ?>> <?= $value['name_category'] ?> </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="d-grip gap-2 d-md-flex justify-content-md-end">
                    <button class="btn btn-primary me-md-2" type="submit">Update Data</button>
                    <button class="btn btn-danger" type="reset">Batal</button>
                </div>
            </form>
        </div>
    </div>
    </div>
</main>
<?= $this->endSection() ?>.