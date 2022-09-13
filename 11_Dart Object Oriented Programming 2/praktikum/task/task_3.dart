class Hewan {
  String? nama;
  String? jenis;

  Hewan(this.nama, this.jenis);

  void suara() {
    print('ada suaranya');
  }
}

class Kucing extends Hewan {
  Kucing(super.nama, super.jenis);

  @override
  void suara() {
    print('Kucing Bernama ${nama} dan Jenis ${jenis} Suaranya Miaww Miaww');
  }

  void lari() {
    print('Kucing Bernama ${nama} dan Jenis ${jenis} Bisa Lari Kencang');
  }
}

class Unggas extends Hewan {
  String? keluarga;

  Unggas(super.nama, super.jenis, this.keluarga);

  @override
  void suara() {
    print('Belum diketahui');
  }
}

class Burung extends Unggas {
  Burung(super.nama, super.jenis, super.keluarga);

  void terbang() {
    print('Burung Dengan Nama ${nama} Bisa Terbang Wush Wush Wush');
  }

  void suara() {
    print('Burung Bernama ${nama} dan Jenis ${jenis} Suaranya Prit Prit');
  }
}

void main() {
  var kucing = Kucing('Kitty', 'Persia');
  kucing.suara();
  kucing.lari();

  var unggas = Unggas('', '', 'Burung');
  unggas.suara();

  var burung = Burung('Ocong', 'Kakatua', '');
  burung.terbang();
}
