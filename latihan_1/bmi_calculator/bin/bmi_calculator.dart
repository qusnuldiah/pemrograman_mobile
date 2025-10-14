// Fitur: Input Validation
// Tujuan: Memeriksa apakah input tinggi dan berat valid sebelum menghitung BMI

bool validasiInput(double tinggi, double berat) {
  // Pastikan tinggi dan berat lebih dari 0
  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid. Tinggi dan berat harus lebih dari 0.");
    return false;
  }
  return true;
}

// Fitur: BMI Calculation
// Tujuan: Menghitung nilai BMI berdasarkan tinggi dan berat badan

double hitungBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100; // ubah cm ke meter
  double bmi = beratKg / (tinggiM * tinggiM); // rumus BMI
  return bmi;
}

// Fitur: History Feature
// Tujuan: Menyimpan dan menampilkan riwayat perhitungan BMI

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("=== Riwayat Perhitungan BMI ===");
  for (var data in riwayat) {
    print(
      "Tinggi: ${data['tinggi']} cm | Berat: ${data['berat']} kg | BMI: ${data['bmi'].toStringAsFixed(2)} | Kategori: ${data['kategori']}",
    );
  }
}
