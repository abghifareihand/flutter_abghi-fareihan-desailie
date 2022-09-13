class Matematika {
  hasil() {
    return 0;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override // wajib karna implement
  hasil() {
    for (int hasil = x;; hasil++) {
      if (hasil % x == 0 && hasil % y == 0) {
        print('KPK dari ${x} dan ${y} :');
        return hasil;
      }
    }
  }
}

class KelipatanPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerbesar(this.x, this.y);

  @override
  hasil() {
    for (int hasil = x; hasil > 0; hasil--) {
      if (x % hasil == 0 && x % hasil == 0) {
        print('FPB dari ${x} dan ${y} :');
        return hasil;
      }
    }
  }
}

void main() {
  List<Matematika> matematika = [];
  matematika.add(KelipatanPersekutuanTerkecil(3, 5));
  matematika.add(KelipatanPersekutuanTerbesar(3, 5));

  for (var operation in matematika) {
    print(operation.hasil());
  }
}
