# (09) Collection

## Data Diri
Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary
Pada section 9 ini, saya belajar tentang Collection

### Async-Await
- Menjalankan beberapa proses tanpa perlu menunggu
- Proses ditulis dalam bentuk fungsi
- Await akan menunggu hingga proses async selesai
```
void p1() {
  Future.delayed(Duration(seconds: 1), () {
    print('Hello dari P1');
  });
}

void p2() {
  print('Hello dari P2');
}

void main() {
  p1();
  p2();
}
```

### Tipe Data Future
- Data yang dapat ditunggu
- Membawa data return dari fungsi async

Penggunaan Future
```
Future<String> P1 () {
    return Future.delayed(Duration(seconds: 1),() {
      return 'Hello dart P1';
    });
}

void main() async {

  var data = await P1();
  print(data);
}
```
 - Fungsi hello melakukan print di dalamnya
 - Fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print

### Collection
Collection merupakan kumpulan data pada satu tempat

- List
Menyimpan data (elemen) secara berbaris, Tiap data memiliki index
```
void main(List<String> args) {
  var scores = [60, 80, 90, 70, 85];
  print(scores);

  for (var score in scores) {
    print(score);
  }
}
```



- Map
Menyimpan data secara key-value, Key berguna selayaknya index pada list
```
void main() {
  var student = {
    'name' : 'Alex Jack', 
    'age' : 16
  };
  print(student);

  for (var key in student.keys) {
    print(student[key]);
  }
}
```