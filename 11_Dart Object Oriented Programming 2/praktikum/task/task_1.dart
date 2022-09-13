class BangunRuang {
  double panjang, lebar, tinggi;
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  double volume() {
    print('Volume Kubus : ');
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  double volume() {
    print('Volume Balok : ');
    return panjang * lebar * tinggi;
  }
}

void main() {
  List<BangunRuang> bangunRuang = [];
  bangunRuang.add(Balok(10, 20, 30));
  bangunRuang.add(Kubus(0, 0, 0, 10));

  for (var bangun in bangunRuang) {
    print(bangun.volume());
  }
}
