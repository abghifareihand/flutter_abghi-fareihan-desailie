# (10) Dart Object Oriented Programming 1

## Data Diri
Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Task

#### Task 01
Buatlah beberapa class dengan rangkaian berikut ini!

Saya membuat class hewan dan class mobil dengan properties di bawah ini
```dart
class Hewan {
  var beratHewan;
  var namaHewan;
}
```

```dart
import './hewan.dart';

class Mobil {
  var kapasitas = 1000; // kapasitas maximum muatan mobil
  List muatan = []; // list data hewan yang menjadi muatan
  var total = 0;

  void tambahMuatan(int beratHewan, String namaHewan) {
    if (kapasitas >= beratHewan) {
      kapasitas = kapasitas - beratHewan;
      total = total + beratHewan;
      print('Menambahkan hewan $namaHewan dengan berat ${beratHewan}kg');
      muatan.add('$namaHewan ${beratHewan}kg');
      print('Isi muatan mobil : ${muatan}');
      print('Total muatan mobil saat ini ${total} kg');
      print('Sisa kapasitas mobil saat ini ${kapasitas}kg');
    } else {
      print('Muatan melebihi kapasitas mobil karna sisa kapasitas cuman ${kapasitas}kg');
      print('Sedangkan hewan yang ditambahkan yaitu $namaHewan punya kapasitas ${beratHewan}kg');
    } 
  }
}
```



#### Task 02
Pada class mobil, tambahkan method totalMuatan untuk menghitung total muatan yang diangkut oleh mobil tersebut.

![Test](../screenshots/ss_task_10.png)