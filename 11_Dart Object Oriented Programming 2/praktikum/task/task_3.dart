class Hewan {
  String? nama, jenis;

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
    print('Unggas ${keluarga} Dengan Jenis ${jenis} Suaranya Pritt Pritt');
  }
}

class Burung extends Hewan implements Unggas {
  @override
  String? keluarga;

  Burung(super.nama, super.jenis);

  void terbang() {
    print('Burung Dengan Nama ${nama} Bisa Terbang Wush Wush Wush');
  }
}

void main() {
  var kucing = Kucing('Kitty', 'Persia');
  kucing.suara();
  kucing.lari();

  var unggas = Unggas('', 'Kakatua', 'Burung');
  unggas.suara();

  var burung = Burung('Ocong', '');
  burung.terbang();
}
