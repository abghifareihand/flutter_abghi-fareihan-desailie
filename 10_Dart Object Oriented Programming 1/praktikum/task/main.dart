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
