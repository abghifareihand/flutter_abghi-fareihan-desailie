class BangunRuang {
  double panjang, lebar, tinggi;
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  void volume() {}
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  void volume() {
    var hasil = sisi * sisi * sisi;
    print('Volume Kubus dengan sisi ${sisi}cm adalah ${hasil}');
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  void volume() {
    var hasil = panjang * lebar * tinggi;
    print(
        'Volume Balok dengan panjang ${panjang}cm lebar ${lebar}cm dan tinggi ${tinggi}cm adalah ${hasil}');
  }
}

void main() {
  List<BangunRuang> bangunRuang = [];
  bangunRuang.add(Balok(10, 20, 30));
  bangunRuang.add(Kubus(0, 0, 0, 10));

  for (var bangun in bangunRuang) {
    bangun.volume();
  }
}
