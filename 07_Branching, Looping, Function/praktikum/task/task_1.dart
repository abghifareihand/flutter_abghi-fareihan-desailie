void main() {
  print(nilai(80));
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
