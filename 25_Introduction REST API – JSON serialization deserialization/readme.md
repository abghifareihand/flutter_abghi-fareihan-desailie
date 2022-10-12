# (25) Introduction REST API – JSON serialization/deserialization

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary

Pada section 25 ini, saya belajar tentang Introduction REST API – JSON serialization/deserialization.

### REST API (Representational State Transfer Application Programming Interface)

- Arsitektural yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bisnis mengirim data melalui HTTP Request

### HTTP

- Protokol yang digunakan untuk mengirim data pada internet, biasanya data tersebut berbentuk media web

**Pola Komunikasi**

- Client mengirim request
- Server mengolah dan membalas dengan memberi response

**Struktur Request**

- URL = Alamat halaman yang akan diakses
- Method (GET, POST, PUT, DELETE) = Menunjukan aksi yang diinginkan
- Header = Informasi tambahan terkait request yang dikirimkan
- Body = Data yang disertakan Bersama request

**Struktur Response**

- Status Code = Kode yang mewakili keselurahan response, baik sukses maupun gagal
- Header = Informasi tambahan terkait response yang diberikan
- Body = Data yang disertakan Bersama response

### DIO

- Sebagai HTTP Client
- Dimanfaatkan untuk melakukan REST API

**Instalasi**

- Tambahkan dependency pada pubspec.yaml
- Jalankan perintah flutter pub get pada terminal

**Penggunaan**

- Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

### JSON

- Cara penulisan data
- JavaScript Object Notation
- Umum digunakan pada REST API

**Serialisasi JSON**

- Mengubah struktur data ke bentuk JSON
- Map/List -> Serilisasi -> JSON
- Menggunakan fungsi jsonEncode dari package dart:convert

**Deserialisasi JSON**

- Mengubah bentuk JSON ke struktur data
- JSON -> Deserialisasi -> Map/List
- Menggunakan fungsi jsonDecode dari package dart:convert
