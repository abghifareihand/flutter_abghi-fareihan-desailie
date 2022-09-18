# (10) Dart Object Oriented Programming 1

## Data Diri

| Nomor       | Nama                    |
| ----------- | ----------------------- |
| 1_001FLB_42 | Abghi Fareihan Desailie |

## Task

#### Task 01

```dart
import './hewan.dart';

class Mobil {
  double kapasitas = 1000; // kapasitas max mobil
  List<Hewan> muatan = []; // membuat list muatan ambil dari class hewan

  void tambahMuatan(Hewan hewan) { // parameter dari class hewan
    if (kapasitas - hewan.beratHewan >= 0) {
      kapasitas -= hewan.beratHewan;
      muatan.add(hewan);
      print('Isi Muatan Mobil : ${hewan.namaHewan} ${hewan.beratHewan}kg.'); // print isi muatan mobil
    } else {
      print(
          'Maaf muatan melebihi kapasitas, tidak bisa menambahkan ${hewan.namaHewan} Karena Beratnya ${hewan.beratHewan}kg');
      print('Sedangkan kapasitas mobil tersisa ${kapasitas}kg.');
    } // jika muatan mobil melebihi kapasitas, nge-print muatan melebihi kapasitas
  }
}
```

#### Task 02

```dart
  void totalMuatan() { // menambahkan method totalMuatan()
    double totalBerat = 0;
    for (Hewan hewan in muatan) {
      totalBerat += hewan.beratHewan;
    }
    print('Total Berat Hewan di Dalam Mobil : ${totalBerat}kg.');
  } // nge-print total berat hewan yang masuk ke mobil
```

##### Semua Source Code :

```dart
class Hewan {
  double beratHewan = 0;
  String namaHewan = '';
}

import './hewan.dart';

class Mobil {
  double kapasitas = 1000;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan hewan) {
    if (kapasitas - hewan.beratHewan >= 0) {
      kapasitas -= hewan.beratHewan;
      muatan.add(hewan);
      print('Isi Muatan Mobil : ${hewan.namaHewan} ${hewan.beratHewan}kg. ');
    } else {
      print(
          'Maaf muatan melebihi kapasitas, tidak bisa menambahkan ${hewan.namaHewan} Karena Beratnya ${hewan.beratHewan}kg');
      print('Sedangkan kapasitas mobil tersisa ${kapasitas}kg.');
    }
  }

  void totalMuatan() {
    double totalBerat = 0;
    for (Hewan hewan in muatan) {
      totalBerat += hewan.beratHewan;
    }
    print('Total Berat Hewan di Dalam Mobil : ${totalBerat}kg.');
  }
}

import './hewan.dart';
import './mobil.dart';

void main() {
  Hewan hewan1 = Hewan();
  hewan1.beratHewan = 500;
  hewan1.namaHewan = 'Sapi';

  Hewan hewan2 = Hewan();
  hewan2.beratHewan = 400;
  hewan2.namaHewan = 'Kambing';

  Hewan hewan3 = Hewan();
  hewan3.beratHewan = 50;
  hewan3.namaHewan = 'Bebek';

  Hewan hewan4 = Hewan();
  hewan4.beratHewan = 150;
  hewan4.namaHewan = 'Jerapah';

  Mobil mobil = Mobil();
  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);
  mobil.tambahMuatan(hewan3);
  mobil.tambahMuatan(hewan4);
  mobil.totalMuatan();
}
```

##### Output :

```
$ dart main.dart
Isi Muatan Mobil : Sapi 500.0kg.
Isi Muatan Mobil : Kambing 400.0kg.
Isi Muatan Mobil : Bebek 50.0kg.
Maaf muatan melebihi kapasitas, tidak bisa menambahkan Jerapah Karena Beratnya 150.0kg
Sedangkan kapasitas mobil tersisa 50.0kg.
Total Berat Hewan di Dalam Mobil : 950.0kg.
```
