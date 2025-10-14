// Aplikasi Kalkulator BMI
// Menggunakan validasi input, perhitungan BMI, dan riwayat perhitungan

void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Contoh input
  hitungDanSimpanBMI(170, 65, riwayat);
  hitungDanSimpanBMI(165, 75, riwayat);
  hitungDanSimpanBMI(180, 85, riwayat);

  // Tampilkan hasil riwayat
  tampilkanRiwayat(riwayat);
}

// ===== Fitur 1: Input Validation =====
bool validasiInput(double tinggi, double berat) {
  // Pastikan tinggi dan berat lebih dari 0
  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid. Tinggi dan berat harus lebih dari 0.");
    return false;
  }
  return true;
}

// ===== Fitur 2: BMI Calculation =====
double hitungBMI(double tinggiCm, double beratKg) {
  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);
  return bmi;
}

// ===== Fitur 3: History Feature =====
void hitungDanSimpanBMI(
  double tinggiCm,
  double beratKg,
  List<Map<String, dynamic>> riwayat,
) {
  if (!validasiInput(tinggiCm, beratKg)) return;

  double bmi = hitungBMI(tinggiCm, beratKg);
  String kategori;

  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori,
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("=== Riwayat Perhitungan BMI ===");
  for (var data in riwayat) {
    print(
      "Tinggi: ${data['tinggi']} cm | Berat: ${data['berat']} kg | BMI: ${data['bmi'].toStringAsFixed(2)} | Kategori: ${data['kategori']}",
    );
  }
}
