void main() {
  nilaiFaktorial(10);
  nilaiFaktorial(20);
  nilaiFaktorial(30);
}

nilaiFaktorial(int angka) {
  int faktorial = 1;
  for (int i = 1; i <= angka; i++){
      faktorial *= i;
    }
  print('Faktorial dari $angka adalah $faktorial');  
}