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
