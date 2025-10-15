// Fitur 2: Logika permainan tebak angka

import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int angkaBenar = random.nextInt(10) + 1;
  int tebakan = 0;

  while (tebakan != angkaBenar) {
    stdout.write("Masukkan tebakan kamu (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaBenar) {
      print("Terlalu kecil!");
    } else if (tebakan > angkaBenar) {
      print("Terlalu besar!");
    } else {
      print("🎉 Tebakan kamu benar!");
    }
  }
// Fitur 1: Input angka dari pemain

import 'dart:io';

void main() {
  stdout.write("Masukkan tebakan kamu (1-10): ");
  int tebakan = int.parse(stdin.readLineSync()!);
  print("Kamu menebak angka: $tebakan");
}
