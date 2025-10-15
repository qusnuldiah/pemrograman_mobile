// Fitur 1: Input angka dari pemain

import 'dart:io';

void main() {
  stdout.write("Masukkan tebakan kamu (1-10): ");
  int tebakan = int.parse(stdin.readLineSync()!);
  print("Kamu menebak angka: $tebakan");
}
