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
