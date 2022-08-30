# (07) Branching, Looping, Function

## Data Diri
Nomor Urut: 1_001FLB_42
Nama: Abghi Fareihan Desailie

## Summary
Pada section 7 ini, saya belajar tentang Branching, Looping, Function

### Pengambilan Keputusan
Menentukan alur program pada kondisi tertentu

#### IF
- Memerlukan nilai bool
- Menjalankan bagian proses jika nilai bool bernilai true

```
if (nilai_bool) {
    // proses jika nilai_bool adalah true
}
```

#### Sisipan IF ELSE
- Berjalan dengan if
- Menambahkan alternatif jika nilai bool adalah false
- Menambah pengujian nilai bool lain

```
if (nilai_bool) {
    // proses jika nilai_bool adalah true
} else if (nilai_bool1) {
    // proses jika nilai_bool adalag false
    // dan nilai_bool1 adalah true
}
```

### Perulangan
Menjalankan proses berulang kali

#### FOR
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

```
for (nilai_awal; nilai_bool; pengubah_nilai_awal) {
    // proses berulang jika nilai_bool adalah true
}
```

#### WHILE
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

```
while (nilai_bool) {
    // proses berulang jika nilai_bool adalah true
}
```

#### DO WHILE
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

```
do {
    // proses berulang jika nilai_bool adalah true
} while (nilai_bool);
```

### Break dan Continue
- Perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break dan continue dapat dihentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan satu kali proses

__Break__ menghentikan seluruh proses perulangan
__Continue__ menghentikan satu kali proses perulangan


### Fungsi (function)
Kumpulan kode yang dapat digunakan ulang
Kumpulan perintah, Dapat digunakan berkali-kali, Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah

#### Membuat fungsi
```
void halo() {
    print('halo');
}
```

#### Memanggil fungsi
```
void main() {
    halo();
}
```


#### Fungsi dengan parameter
Mengirim data saat menjalankan fungsi

```
void tampil(String text) {
    print(text);
}

void main() {
    tampil('halo');
}
```

#### Fungsi dengan return
Memberi nilai pada fungsi saat dipanggil

```
int jumlah(int a, int b) {
    return a + b;
}

void main() {
    var hasil = jumlah(1, 2);
    print(hasil);
}
```