import 'dart:io';

void main() {
  List angka = [];
  double total = 0;
  double rata2;

  print("Masukkan angka : ");
  for (int i = 0; i < 5; i++) {
    stdout.write('Data ke-${i + 1} : ');
    var input = stdin.readLineSync();
    if (input != null) {
      int data = int.parse(input);
      angka.add(data);
    }
  }
  for (var i = 0; i < angka.length; i++) {
    total += angka[i];
  }
  print('================================');
  print('Jumlah dari angka di atas adalah ${total}');
  rata2 = total / angka.length;
  print('Rata-rata dari angka di atas adalah ${rata2}');
}