// Tugas Praktikum 2: Konversi Mata Uang

void main() {
  //Map: Menyimpan faktor konversi mata uang terhadap Rupiah (IDR)
  Map<String, double> kurs = {
    'USD': 15600, // 1 USD = 14.000 IDR
    'EUR': 16000, // 1 EUR = 16.000 IDR
    'JPY': 130,   // 1 JPY = 130 IDR
    'IDR': 1.0  // Dasar konversi
  };
  double jumlah = 1500000; // dalam Rupiah
  String dariMataUang = 'IDR';
  String keMataUang = 'USD';

//Memastikan nilai tidak negatif atau nol
  if (jumlah <= 0) {
    print('Jumlah Rupiah harus lebih besar dari 0.');
    return;
  }

  double dalamRupiah = jumlah * (kurs[dariMataUang]!);

  // menghitung hasil ke berbagai mata uang
  double dolar = dalamRupiah / kurs[keMataUang]!;
  double euro = dalamRupiah / kurs['EUR']!;
  double yen = dalamRupiah / kurs['JPY']!;

  print('Jumlah Rupiah: $jumlah $dariMataUang');
  print('Konversi ke Dolar: \$${dolar.toStringAsFixed(2)}');
  print('Konversi ke Euro: €${euro.toStringAsFixed(2)}');
  print('Konversi ke Yen: ¥${yen.toStringAsFixed(2)}');
}