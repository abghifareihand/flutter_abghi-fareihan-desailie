# (11) Dart Object Oriented Programming 2

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Task

#### Task 01

```dart
class BangunRuang { // membuat class utama atau class induk
  double panjang, lebar, tinggi;
  BangunRuang(this.panjang, this.lebar, this.tinggi); // membuat constructor

  double volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  Kubus kubus = Kubus(0, 0, 0, 10);
  print(kubus.volume());

  Balok balok = Balok(30, 20, 10);
  print(balok.volume());
}
```

#### Task 02

```dart
class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  void hasil() {
    for (int hasil = x;; hasil++) {
      if (hasil % x == 0 && hasil % y == 0) {
        print('KPK dari ${x} dan ${y} adalah ${hasil}');
        break;
      }
    }
  }
}

class KelipatanPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerbesar(this.x, this.y);

  @override
  void hasil() {
    for (int hasil = x; hasil > 0; hasil--) {
      if (x % hasil == 0 && x % hasil == 0) {
        print('FPB dari ${x} dan ${y} adalah ${hasil}');
        break;
      }
    }
  }
}

void main() {
  var kpk = KelipatanPersekutuanTerkecil(6, 7);
  kpk.hasil();

  var fpb = KelipatanPersekutuanTerbesar(6, 7);
  fpb.hasil();
}
```

#### Task 03

```dart
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
```
