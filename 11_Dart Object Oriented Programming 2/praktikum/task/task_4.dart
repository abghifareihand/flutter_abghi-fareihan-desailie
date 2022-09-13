class Manusia {
  int nik;
  String? nama, alamat;

  Manusia(this.nik, this.nama, this.alamat);

  void belajar() {
    print('belajar itu wajib');
  }
}

class Mahasiswa extends Manusia {
  int nim;
  String? prodi;

  Mahasiswa(super.nik, super.nama, super.alamat, this.nim, this.prodi);

  void ipk() {
    print('IPK mahasiswa');
  }

  void jadwalKuliah() {
    print('jadwal kuliah mahasiswa');
  }

  @override
  void belajar() {
    print('Bagi Mahasiswa Belajar itu Harus');
  }
}

class Dosen extends Manusia {
  int nidn;
  String? jabatan, pangkat;
  Dosen(super.nik, super.nama, super.alamat, this.nidn, this.jabatan,
      this.pangkat);

  void jadwalMengajar() {
    print('jadwal mengajar dosen');
  }

  @override
  void belajar() {
    print('Bagi Dosen Belajar itu Kewajiban');
  }
}

void main(List<String> args) {
  var mahasiswa1 =
      Mahasiswa(327604, 'Abghi', 'Jalan Merdeka', 1970, 'informatika');
  print(
      'Mahasiswa dengan NIK ${mahasiswa1.nik} dan Nama ${mahasiswa1.nama} prodinya ${mahasiswa1.prodi}');
  mahasiswa1.ipk();
  mahasiswa1.jadwalKuliah();
  mahasiswa1.belajar();

  var mahasiswa2 =
      Mahasiswa(327628, 'Bambang', 'Jalan Bijaksana', 1972, 'komunikasi');
  print(
      'Mahasiswa dengan NIK ${mahasiswa2.nik} dan Nama ${mahasiswa2.nama} prodinya ${mahasiswa2.prodi}');
  mahasiswa2.ipk();
  mahasiswa2.jadwalKuliah();
  mahasiswa2.belajar();

  var dosen = Dosen(32728, 'Bagus', 'Jalan Mangga', 1278, 'Dosen', 'S3');
  print(
      'Dosen dengan NIK ${dosen.nik} dan Nama ${dosen.nama} pangkatnya ${dosen.pangkat}');
  dosen.jadwalMengajar();
  dosen.belajar();
}
