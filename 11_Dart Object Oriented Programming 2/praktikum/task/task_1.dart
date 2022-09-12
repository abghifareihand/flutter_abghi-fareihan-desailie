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
