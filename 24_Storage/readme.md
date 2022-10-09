# (24) Storage

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary

Pada section 24 ini, saya belajar tentang Storage : Penyimpanan Lokal, Shared Preferences, Local Database (SQLite).

### Penyimpanan Local

- Diperlukan untuk efisiensi penggunaan data internet
- Ada beberapa cara implementasi penyimpanan lokal, contohnya seperti :
  - Shared Preference
  - Local Database

### Shared Preference

- Menyimpan data yang sederhana
- Penyimpanan dengan format key_value
- Menyimpan tipe data dasar seperti teks, angka, dan boolean
- Contoh penggunaan shared preference seperti menyimpan data login dan meyimpan riwayat pencarian

**Implementasi Shared Preference**

Menambahkan shared preference pada fitur login

- Tambahkan package _shared_preference_
- Buat properti baru untuk TextEditingController dan tambahkan di setiap TextFormField
- Buat method dispose(), untuk menghindari kebocoran memori
- Buat variable baru untuk menyimpan _SharedPreference_ dan nilai bool newUser
- Buat method baru dengan nama checkLogin()
- Panggil method checkLogin() di method initState()
- Di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user
- Buat setBool dan setString baru di dalam blok kode if, dan buat navigasi untuk ke halaman HomePage
- buat file dart baru home_page dan tambahkan UI nya
- (home_page.dart) buat variabel baru untuk menyimpan SharedPreferene dan username
- (home_page.dart) buat method baru initial(), dan panggil di method initState()
- (home_page.dart) mengganti text 'username' menjadi variabel username
- (home_page.dart) tambahkan method setBool dan remove ElevatedButton

<br>
<br>

### Local Database (SQLite)

- Menyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat privat
- Menggunakan SQLite database melalui package _sqflite_
- SQLite adalah database open source yang mendukung insert, read, update dan remove data.

**Implementasi SQLite**

Menambahkannya di apps Task Management

- Menambahkan package _sqflite_ dan path (pubspec.yaml), pastikan import packages nya di file dart yang kita kerjakan
- membuat model/modifikasi model yang sudah ada
- buat fooder baru _helper_ dan didalam nya buat file dart baru database_helper.dart
- (database_helper.dart) buat kelas baru DatabaseHelper dan tambahkan factory constructor
- (database_helper.dart) membuat objek database
- (database_helper.dart) membuat koneksi ke database dan membuat tabel nya
- (database_helper.dart) membuat method dengan berbagai fungsi
- membuat constructor untuk membuat kelas DatabaseHelper
- buat method addTask getTaskById, updateTask dan deleteTask
- bungkus ListView.separated dengan consumer
- bungkus widget TaskItemCArd dengan widget InkWell dan gunakan onTap
