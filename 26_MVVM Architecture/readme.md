# (26) MVVM Architecture

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary

Pada section 25 ini, saya belajar tentang MVVM Architecture

### MVVM Architecture

**MVVM -> Model-View-ViewModel**
Memisahkan logic dengan tampilan (View) ke dalam ViewModel

**Keuntungan MVVM**

- Reusability = Jika ada beberapa tampilan yang memerlukan logic yang sama, mereka bisa menggunakan ViewModel yang sama

- Maintainability = Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic

- Testability = Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

### Melakukan MVVM

**Struktur Direktori**

- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut

- Tiap screen diletakan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

**Model**

- Bentuk data yang akan digunakan, dibuat dalam bentuk class

- Data-data yang dimuat, diletakan pada property

**ViewModel**

- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen

- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

**Mendaftarkan ViewModel**

- Menggunakan _MultiProvider_ agar dapat menggunakan banyak ViewModel

- _MaterialApp_ sebagai child utama

**View**

- Menggunakan StatefulWidget

**Menampilkan Data di View**

- Letakkan pada begian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada widgets

**Hasil Akhir**

- Sebuah halaman aplikasi
- Terdapat AppBar yang berjudul Contacts
- Terdapat list data contact berupa nama dan nomor telepon
