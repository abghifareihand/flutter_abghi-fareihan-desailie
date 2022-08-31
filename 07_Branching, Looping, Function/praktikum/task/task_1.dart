void main() {
  print(nilai(80));
  print(nilai(50));
  print(nilai(30));
}

nilai(int score) {
  if (score > 70 ) {
    return 'Nilai $score = A';
  } else if (score >= 40 ) {
    return 'Nilai $score = B';
  } else if (score >= 0 ) {
    return 'Nilai $score = C';
  } else {
    return '';
  }
}
