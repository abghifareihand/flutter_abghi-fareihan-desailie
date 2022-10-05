# (22) Flutter State Management (BLoC)

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary

Pada section 22 ini, saya belajar tentang Flutter State Management : BLoC

### Declarative UI

- Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

**State**

- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
- Ada 2 jenis state dalam flutter, ephemeral state dan app state

**Ephemeral State**

- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya : PageView, BottomNavigationBar, Switch Button
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

**App State**

- Digunakan ketika bagina yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya : Login Info, Pengaturan preferensi pengguna, Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen akan muncul di screen berbeda

**Pendekatan State Management**

- setState
  Lebih cocok penggunaan nya pada ephemeral state

- Provider
  Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah di pelajari

- Bloc
  Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya

<br>

### BLoC

- BLoC (Business Logic Component)
- Memisahkan antara business logic dengan UI

**Kenapa Bloc?**

1. Simple
2. Powerful
3. Testable

**Cara Kerja Bloc**

- Menerima event sebagai input
- Dianalisa dan dikelola di dalam BLoc
- Menghasil state sebagai output

**Stream**

- Rangkaian proses secara asynchronous
- Actor utama di dalam BLoc
