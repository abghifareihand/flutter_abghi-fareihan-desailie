# (17) Form Input Button

## Data Diri

Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary

Pada section 17 ini, saya belajar tentang Form, Input, dan Button.

### 1. Form

- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu

**Membuat Form**

- Menggunakan StatefulWidget
- Keadaan form disimpan menggunakan GlobalKey<FormState>

### 2. Input

#### Textfield

- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu

**Membuat Textfield**

- Data diambil menggunakan TextEditingController
- Isian data berupa teks

```dart
// property
var inputController = TextEditingController();

// build
TextField(
    controller: inputController,
);
```

<br>

#### Radio

- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi

**Membuat Radio**

- Data diambil menggunakan property dengan tipe data sesuai value pada radio

```dart
// property
var radioValue = '';

// build
Radio<String>(
    value: 'Laki - laki',
    groupName: 'radioValue',
    onChanged: (String? value) {
        setState(() {
            radioValue = value ?? '';
        });
    }
);
```

<br>

#### Checkbox

- Memberi opsi pada pengguna
- Dapat memilih beberapa opsi

**Membuat Checkbox**

- Data diambil menggunakan property bertipe bool

```dart
// property
var checkValue = '';

// build
Checkbox(
    value: checkValue,
    onChanged: (bool? value) {
        setState(() {
            checkValue = value ?? false;
        });
    }
);
```

<br>

#### Dropdown Button

- Memberi opsi pada pengguna
- Hanya dapat memilih beberapa opsi
- Opsi tidak ditampilkan di awal, hanya tampil jika ditekan

**Membuat Dropdown Button**

- Data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenu

```dart
// property
var dropdownValue = 0;

// build
DropdownButton(
    value: dropdownValue,
    onChanged: (int? value) {
        setState(() {
            dropdownValue = value ?? 0;
        });
    },
    items: const [
        DropdownMenuItem(
            value: 0,
            child: Text('Pilih ...'),
        ),
        DropdownMenuItem(
            value: 1,
            child: Text('Satu'),
        ),
        DropdownMenuItem(
            value: 2,
            child: Text('Dua'),
        ),
        DropdownMenuItem(
            value: 3,
            child: Text('Tiga'),
        ),
    ],
);
```

<br>

### 3. Button

- Bersifat seperti tombol
- Dapat melakukan sesuatu saat di tekan

#### ElevatedButton

- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed

```dart
ElevatedButton(
    child: const Text('Submit'),
    onPressed: () {
        // lakukan sesuatu
    },
);
```

#### IconButton

- Tombol yang hanya menampilkan icon
- Jika ditekan, akan menjalankan onPressed

```dart
IconButton(
    icon: const Icon(Icons.add),
    onPressed: () {
        // lakukan sesuatu
    },
);
```
