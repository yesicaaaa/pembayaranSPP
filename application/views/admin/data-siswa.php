<div class="main">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="javascript:void(0)"><i class="fa fa-fw fa-users mr-2"></i>Management</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Siswa</li>
    </ol>
  </nav>
  <div class="row">
    <div class="col-md-4 searchbar">
      <form action="<?= base_url('admin_data_siswa') ?>" method="POST">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Cari..." name="keyword" autocomplete="off" autofocus>
          <div class="input-group-append">
            <input class="btn btn-info" type="submit" name="submit">
          </div>
        </div>
      </form>
    </div>
    <div class="col-md-3">
      <a href="<?= base_url(); ?>admin_data_siswa/refresh"><img class="refresh" src="<?= base_url(); ?>assets/img/refresh.png"></a>
    </div>
  </div>
  <?= form_error('nisn', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('nis', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('nama', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('email', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('id_kelas', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('alamat', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('no_telp', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('id_spp', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= form_error('password1', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
  <?= $this->session->flashdata('message'); ?>
  <a href="" class="btn btn-add" data-toggle="modal" data-target="#tambahSiswa"><i class="fa fa-fw fa-user-plus"></i> Tambah Siswa Baru</a>
  <h5 class="laporanbulan">Pencarian untuk <span>
      <?php if (!$this->session->keyword) : ?>
        semua siswa
      <?php else : ?>
        <?= $this->session->keyword ?>
      <?php endif; ?>
    </span></h5>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">NISN</th>
        <th scope="col">NIS</th>
        <th scope="col">Nama Siswa</th>
        <th scope="col">Email</th>
        <th scope="col">Kelas</th>
        <th scope="col">No. Telepon</th>
        <th scope="col">Alamat</th>
        <th scope="col">Aksi</th>
        <th scope="col">SPP</th>
      </tr>
    </thead>
    <tbody>
      <?php if (empty($siswa)) : ?>
        <tr>
          <td colspan="3">
            <div class="alert alert-danger" role="alert">
              Data not found!
            </div>
          </td>
        </tr>
      <?php endif; ?>
      <?php $i = 1; ?>
      <?php foreach ($siswa as $sw) : ?>
        <tr>
          <th scope="row"><?= $i++ ?></th>
          <td><?= $sw['nisn'] ?></td>
          <td><?= $sw['nis'] ?></td>
          <td><?= $sw['nama'] ?></td>
          <td><?= $sw['email'] ?></td>
          <td><?= $sw['nama_kelas'] ?> <?= $sw['kompetensi_keahlian'] ?></td>
          <td><?= $sw['no_telp'] ?></td>
          <td><?= $sw['alamat'] ?></td>
          <td>
            <a href="javascript:getData('<?= $sw['nisn']; ?>');" class="badge badge-edit">Edit</a>
            <a href="<?= base_url(); ?>admin_data_siswa/deleteSiswa/<?= $sw['nisn']; ?>" class="badge badge-delete" onclick="return confirm('Are You Sure?')">Delete</a>
          </td>
          <td>
            <a href="<?= base_url() ?>admin/laporansiswa/<?= $sw['nisn']; ?>" class="badge badge-laporan">Laporan</a>
          </td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</div>




<!-- modal tambah siswa -->
<div class="modal fade" id="tambahSiswa" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Tambah Data Siswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= base_url('admin_data_siswa'); ?>" method="POST" enctype="multipart/form-data">
        <div class="modal-body">
          <div class="form-group">
            <input type="text" class="form-control" id="nisn" name="nisn" placeholder="NISN" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="nis" name="nis" placeholder="NIS" onkeypress="return event.charCode >= 8 && event.charCode <= 57">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Siswa">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <select name="id_kelas" id="kelas" class="form-control">
              <option value=''>Pilih Kelas</option>
              <?php foreach ($kelas as $kl) : ?>
                <option value="<?= $kl['id_kelas']; ?>"><?= $kl['nama_kelas'] ?> <?= $kl['kompetensi_keahlian']; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="no_telp" name="no_telp" placeholder="No. Telepon" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="alamat" name="alamat" placeholder="Alamat">
          </div>
          <div class="form-group">
            <select name="id_spp" id="spp" class="form-control">
              <option value=''>Pilih SPP</option>
              <?php foreach ($spp as $sp) : ?>
                <option value="<?= $sp['id_spp']; ?>">Rp<?= number_format($sp['nominal'], 0, ',', '.'); ?> - <?= $sp['tahun'] ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group">
            <input type="file" class="form-control" id="gambar" name="gambar">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="password1" name="password1" placeholder="Password">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirm Password">
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Tambah</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
        </div>
      </form>
    </div>
  </div>
</div>


<!-- modal edit siswa -->
<div class="modal fade" id="editSiswa" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Data Siswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= base_url('admin_data_siswa/editDataSiswa'); ?>" method="POST">
        <div class="modal-body">
          <div class="form-group">
            <input type="text" class="form-control" id="nisnEditDisabled" name="nisn" disabled>
          </div>
          <div class="form-group">
            <input type="hidden" class="form-control" id="nisnEdit" name="nisn">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="nisEdit" name="nis" onkeypress="return event.charCode >= 8 && event.charCode <= 57">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="namaEdit" name="nama">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" id="emailEditDisabled" name="email" disabled>
          </div>
          <div class="form-group">
            <input type="hidden" class="form-control" id="emailEdit" name="email">
          </div>
          <div class="form-group">
            <select name="id_kelas" id="kelasEdit" class="form-control">
              <option value=''>Pilih Kelas</option>
              <?php foreach ($kelas as $kl) : ?>
                <option value="<?= $kl['id_kelas']; ?>"><?= $kl['nama_kelas'] ?> <?= $kl['kompetensi_keahlian']; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="no_telpEdit" name="no_telp" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" id="alamatEdit" name="alamat">
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Edit</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  var BASE_URL = '<?= base_url(); ?>';

  function getData(nisn) {
    $.ajax({
      type: 'POST',
      dataType: 'json',
      url: BASE_URL + 'admin_data_siswa/getSiswaRow',
      data: {
        nisn: nisn
      },
      success: function(data) {
        $('#nisnEditDisabled').val(data.nisn),
          $('#nisnEdit').val(data.nisn),
          $('#nisEdit').val(data.nis),
          $('#namaEdit').val(data.nama),
          $('#emailEditDisabled').val(data.email),
          $('#emailEdit').val(data.email),
          $('#kelasEdit').val(data.id_kelas),
          $('#no_telpEdit').val(data.no_telp),
          $('#alamatEdit').val(data.alamat),
          $('#editSiswa').modal()
      }
    });
  }
</script>