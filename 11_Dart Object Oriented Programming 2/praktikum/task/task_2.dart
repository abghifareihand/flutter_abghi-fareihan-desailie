class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override // wajib karna implement
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
  List<Matematika> matematika = [];
  matematika.add(KelipatanPersekutuanTerkecil(10, 30));
  matematika.add(KelipatanPersekutuanTerbesar(10, 30));

  for (var operation in matematika) {
    operation.hasil();
  }
}
