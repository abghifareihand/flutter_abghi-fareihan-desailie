import 'dart:io';

void taskPertama() {
  print('===== TASK PERTAMA =====');
  stdout.write('Masukkan Nilai : ');
  int score = int.parse(stdin.readLineSync()!);

  if (score > 70 ) {
    print('Nilai $score Dapat A');
  } else if (score >= 40 ) {
    print('Nilai $score Dapat B');
  } else if (score >= 0 ) {
    print('Nilai $score Dapat C');
  } else {
    print('');
  }
}

void taskKedua() {
  print('===== TASK KEDUA =====');
  stdout.write('Masukkan Angka Faktorial : ');
  int angka = int.parse(stdin.readLineSync()!);

  double faktorial = 1;
  for (double i = 1; i <= angka; i++){
      faktorial *= i;
    }
  print('Faktorial dari ${angka}! adalah $faktorial');  
}

void main() {
  taskPertama();
  taskKedua();
}
