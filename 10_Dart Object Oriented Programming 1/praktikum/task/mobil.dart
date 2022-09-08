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