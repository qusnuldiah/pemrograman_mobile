# JOBSHEET 7 – Menerapkan Plugin di Project Flutter

**Nama:** Qusnul Diah Mawanti  
**NIM:** 2341760035  
**Kelas:** 3D – SIB  
**Mata Kuliah:** Pemrograman Mobile  
**Jurusan:** Teknologi Informasi – Politeknik Negeri Malang  
**Tahun:** 2025  

---

## Deskripsi
Project ini bertujuan untuk mempraktikkan cara menggunakan **plugin dari pub.dev** di Flutter.  
Plugin yang digunakan adalah `auto_size_text`, yang berfungsi menyesuaikan ukuran teks secara otomatis agar sesuai dengan ruang tampilan widget.

---

## Langkah Praktikum

### 🔹 Langkah 1 – Buat Project Baru
Buat project baru bernama `flutter_plugin_pubdev` dan jadikan repository di GitHub.

### 🔹 Langkah 2 – Menambahkan Plugin
Tambahkan plugin `auto_size_text` dengan perintah:
```bash
flutter pub add auto_size_text
```
Jika berhasil, maka di file `pubspec.yaml` akan muncul dependensi:
```yaml
dependencies:
  flutter:
    sdk: flutter
  auto_size_text: ^versi
```

### 🔹 Langkah 3 – Buat File `red_text_widget.dart`
Buat file baru di folder `lib/` berisi:
```dart
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  const RedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

### 🔹 Langkah 4 – Tambahkan Widget `AutoSizeText`
Ubah `return Container();` menjadi:
```dart
return AutoSizeText(
  text,
  style: const TextStyle(color: Colors.red, fontSize: 14),
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
);
```
**Error terjadi** karena variabel `text` belum didefinisikan.

---

### 🔹 Langkah 5 – Buat Variabel dan Constructor
Tambahkan variabel dan parameter di konstruktor:
```dart
final String text;
const RedTextWidget({Key? key, required this.text}) : super(key: key);
```
Dengan ini, widget dapat menerima teks dari luar.

---

### 🔹 Langkah 6 – Tambahkan Widget di `main.dart`
Tambahkan dua widget dalam `children:` di `_MyHomePageState`:
```dart
Container(
  color: Colors.yellowAccent,
  width: 50,
  child: const RedTextWidget(
    text: 'You have pushed the button this many times:',
  ),
),
Container(
  color: Colors.greenAccent,
  width: 100,
  child: const Text(
    'You have pushed the button this many times:',
  ),
),
```

---

## Hasil Tampilan
<img width="935" height="582" alt="image" src="https://github.com/user-attachments/assets/d977af28-bac2-409a-a81b-051770f15805" />

| Warna | Widget | Keterangan |
|--------|----------|------------|
| Kuning | RedTextWidget | Menggunakan AutoSizeText, teks merah, ukuran menyesuaikan |
| Hijau | Text | Widget bawaan Flutter, teks hitam, ukuran tetap |

---

## Penjelasan Pertanyaan Praktikum

### 1️. Maksud Langkah 2
Menambahkan dependensi eksternal dari pub.dev agar bisa digunakan dalam project Flutter.

### 2️. Maksud Langkah 5
Mendefinisikan variabel dan constructor agar widget dapat menerima data teks dari luar (`main.dart`).

### 3️. Perbedaan Dua Widget
| Widget | Fungsi | Perbedaan |
|---------|---------|------------|
| `RedTextWidget` | Menampilkan teks dengan ukuran menyesuaikan (AutoSizeText) | Teks merah, mengecil otomatis |
| `Text` | Menampilkan teks standar Flutter | Teks hitam, ukuran tetap |

### 4️. Parameter AutoSizeText
| Parameter | Tipe | Fungsi |
|------------|------|--------|
| `text` | String | Isi teks yang akan ditampilkan |
| `style` | TextStyle | Mengatur tampilan teks (warna, ukuran, font, dll) |
| `maxLines` | int | Jumlah baris maksimum teks |
| `overflow` | TextOverflow | Menentukan cara teks dipotong (misalnya ellipsis “...”) |
| `minFontSize` | double | Ukuran font minimum |
| `maxFontSize` | double | Ukuran font maksimum |

---



