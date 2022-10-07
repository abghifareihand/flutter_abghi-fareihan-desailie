# (23) Flutter Animation

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

### Summary

Pada section 23 ini, saya belajar tentang Flutter Animation

### Animation

- Animasi membuat aplikasi terlihay hidup
- Widget yang bergerak menambah daya tarik
- Pergerakan dari kondisi A ke kondisi B

### Implicit Animation

- Versi animasi dari widget yang sudah ada

Contoh :

- Jika tanpa animation perubahan ukuran container tampak kaku
- Dengan animation perubahan ukuran container menjadi lebih hidup

### Transition

- Animasi yang terjadi saat perpindahan halaman
- Dilakukan pada bagian Navigator.push()

### Transition yang umum

- **FadeTransition** halaman muncul dengan efek redup menuju ke tampak jelas secara penuh

```dart
final tween = Tween(begin: 0.0, end: 1.0);
return FadeTransition(
    opacity: animation.drive(tween),
    child: child,
);
```

<br>

- **ScaleTransition** halaman muncul dengen efek berubah ukuran dari tidak penuh menuju tampil keseluruhan

```dart
final tween = Tween(begin: 0.0, end: 1.0);
return ScaleTransition(
    opacity: animation.drive(tween),
    child: child,
);
```
