# (10) Dart Object Oriented Programming 1

## Data Diri
Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary
Pada section 10 ini, saya belajar tentang Dart Object Oriented Programming 1 : Class, Property, Method.

### Object Oriented Programming
- Biasa disebut OOP
- Program disusun dalam bentuk abstraksi object
- Data dan proses diletakkan pada abstraksi tersebut
Keuntungan menggunakan OOP yaitu Mudah di-troubleshoot, Mudah digunakan ulang.

#### Komponen OOP :
- Class
- Object
- Property
- Method
- Inheritance
- Generics


### 1. Class
- Abstraksi dari sebuah benda (object)
- Memiliki ciri-ciri yang disebut property
- Memiliki sifat dan kemampuan yang disebut method

Membuat Class
- Menggunakan kata kunci `class`
- Memiliki nama
- Detail classs diletakkan dalam kurawal

```dart
class Hewan {
    // property
    // method
}
```

Membuat Object
- Bentuk sebenarnya dari class
- Disebut juga instance of class
- Diperlakukan seperti data

```dart
void main() {
    var h1 = Hewan();
    var h2 = Hewan();
    var h3 = Hewan();
}
```

### 2. Property
- Ciri-ciri suatu class
- Hal-hal yang dimiliki suatu class
- Memiliki sifat seperti variable

__Membuat Property__ => seperti variable tapi terletak dalam sebuah class

```dart
class Hewan {
    var mata = 0;
    var kaki = 0;
}
```

__Mengakses Property__ => seperti menggunakan variable tetapi melalui sebuah object

```dart
void main() {
    var h1 = Hewan();
    print(h1.mata);
}
```

### 3. Method
- Sifat suatu class
- Aktivitas yang dapat dikerjakan suatu class
- Memiliki sifat seperti fungsi

__Membuat Method__ => seperti fungsi tapi terletak dalam sebuah class

```dart
class Hewan {
    void Bersuara() {
        print('');
    }
}
```

__Menjalankan Method__ => seperti menggunakan fungsi tetapi melalui sebuah object

```dart
void main() {
    var h1 = Hewan();
    h1.bersuara();
}
```