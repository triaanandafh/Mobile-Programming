// Tugas Praktikum: BMI (Body Mass Index Calculator)

void main() {
  double beratBadan = 70; // dalam kilogram
  double tinggiBadan = 1.65; // dalam meter
  hitungBMI(double berat, double tinggi) {
    return berat / (tinggi * tinggi);
  }
  kategoriBMI(double bmi) {
    if (bmi < 18.5) {
      return 'Kategori: Kekurangan Berat Badan';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Kategori: Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Kategori: Kelebihan Berat Badan';
    } else {
      return 'Kategori: Obesitas';
    }
  }
  double bmi = hitungBMI(beratBadan, tinggiBadan);
  String kategori = kategoriBMI(bmi);

  print('Berat Badan: $beratBadan kg');
  print('Tinggi Badan: $tinggiBadan m');
  print('BMI: ${bmi.toStringAsFixed(2)}');
  print('Kategori: $kategori');
}