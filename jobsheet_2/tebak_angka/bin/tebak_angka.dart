// Fitur 3: Hasil akhir dan batas percobaan

import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int angkaBenar = random.nextInt(10) + 1;
  int tebakan = 0;
  int percobaan = 0;
  const int maxPercobaan = 5;

  print("=== Game Tebak Angka ===");
  print("Tebak angka antara 1 sampai 10 (maksimal 5 percobaan)");

  while (tebakan != angkaBenar && percobaan < maxPercobaan) {
    stdout.write("Masukkan tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan < angkaBenar) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaBenar) {
      print("Terlalu besar!");
    } else {
      print(
        "🎉 Selamat! Kamu menebak dengan benar dalam $percobaan percobaan.",
      );
      return;
    }
  }

  if (tebakan != angkaBenar) {
    print("😢 Kesempatan habis! Angka yang benar adalah $angkaBenar");
  }
}
