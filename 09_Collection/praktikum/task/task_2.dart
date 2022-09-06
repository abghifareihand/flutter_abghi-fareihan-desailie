void main(List<String> args) {
  var nilai;
  var jumlah;
  var rata2;
  List matrix = [
    [1, 2, 5 ,4],
    [2, 4, 3 ,2],
    [4, 5, 2, 1],
    [3, 1, 3, 4],
    [2, 4, 3, 5]
  ];

  for (nilai in matrix) {
    jumlah = nilai[0] + nilai[1] + nilai[2] + nilai[3]; // mencari jumlah
    rata2 = jumlah / nilai.length; // mencari rata rata

    int min = nilai[0];
    int max = nilai[0];

    for(int i = 0; i < nilai.length; i++) {
      if (nilai[i] < min) {
        min = nilai[i]; // mencari nilai max
      }
      if (nilai[i] > max) {
        max = nilai[i]; // mencari nilai min
      }
    }
    print('Jumlah nilai dari baris $nilai adalah $jumlah');
    print('Rata2 nilai dari baris $nilai adalah $rata2');
    print('Nilai terbesar dari baris $nilai adalah $max');
    print('Nilai terkecil dari baris $nilai adalah $min');
    print('==================================================');

  }
}