# (11) Dart Object Oriented Programming 2

## Data Diri
Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary
Pada section 11 ini, saya belajar tentang Dart Object Oriented Programming 2 : Constructor, Inheritance, Method Overriding, Interface, Abstract Class, Polymorphism, Generics

### Constructor
- Method yang dijalankan saat pembuatan object
- Dapat menerima parameter
- Tidak memiliki return
- Nama sama dengan nama class

__Memberi Constructor__

```dart
class Hewan {
    var mata;
    var kaki;

    Hewan() {
        mata = 0;
        kaki = 0;
    }
}
```

### Inheritance
- Membuat class baru dengan memanfaatkan class yang sudah ada
- Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru

__Melakukan Inheritance__

```dart
class Kambihg extends Hewan {
    Kambing() {
        mata = 2;
        kaki = 4;
    }
}
```

__Penggunaan Class__
Proses membuat object dari class yang terjadi inheritance seperti pembuatan pbject pada umumnya

```dart
void main() {
    var k1 = Kambing();
    print(k1.mata);

    var h1 = Hewan();
    print(h1.mata);
}
```


### Method Overriding
- Menulis ulang method yang ada pada super-class
- Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda

__Melakukan Overriding__
- Dilakukan pada class yang melakukan inheritance
- Method sudah ada pada class induk
- Method ditulis ulang seperti membuat method baru pada class anak
- Ditambah tanda @override di baris sebelum method dibuat

```dart
class Hewan {
    reproduksi() {
        print('tidak diketahui');
    }

    bernapas() {
        print('tidak diketahui');
    }
}

class Kambing extends Hewan {
    @override
    reproduksi() {
        print('melahirkan');
    }

    @override
    bernapas() {
        print('paru-paru');
    }
}
```



### Interface
- Berupa class
- Menunjukkan method apa saja yang ada pada suatu class
- Seluruh method wajib di-override
- Digunakan dengan menggunakan implements


### Abstract Class
- Berupa class abstract
- Menunjukkan method apa saja yang ada pada suatu class
- Digunakan dengan menggunakan extends
- Tidak dapat dibuat object
- Tidak semua method harus di-override


### Polymorphism
- Kemampuan data berubah menjadi bentuk lain
- Tipe data yang dapat digunakan adalah super class
- Dapat dilakukan pada class dengan extends atau implements


### Generics
- Dapat digunakan pada class atau fungsi
- Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
- Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi