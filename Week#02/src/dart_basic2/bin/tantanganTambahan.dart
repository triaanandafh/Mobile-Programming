// Tantangan Tambahan: Aplikasi Konversi Unit Terintegrasi

void main() {
  // Map: Menyimpan faktor konversi ke satuan dasar
  Map<String, Map<String, double>> kategoriKonversi = {
    'Panjang': {
      'km': 1000.0, 
      'hm': 100.0, 
      'dam': 10.0, 
      'm': 1.0, 
      'cm': 0.01, 
      'mm': 0.001
    },
    'Massa': {
      'kg': 1000.0, 
      'hg': 100.0, 
      'dag': 10.0, 
      'g': 1.0, 
      'dg': 0.1, 
      'cg': 0.01, 
      'mg': 0.001
    },
    'Volume': {
      'kl': 1000.0, 
      'hl': 100.0, 
      'dal': 10.0, 
      'l': 1.0, 
      'dl': 0.1, 
      'cl': 0.01, 
      'ml': 0.001
    }
  };

  // Input data
  double nilaiInput = 5.0;
  String kategori = 'Massa'; // Pilihan kategori 
  String dariUnit = 'kg';    // Unit asal
  String keUnit = 'mg';      // Unit tujuan 

  print('--- SISTEM KONVERSI UNIT ---');

  // Validasi input untuk mencegah nilai kurang dari nol/negatif
  if (nilaiInput < 0) {
    print('Peringatan: Nilai untuk kategori $kategori tidak boleh negatif!');
    return; // Menghentikan program jika input tidak valid
  }

  // logika konversi
  // Langkah 1: Ubah nilai input ke satuan dasar (misal: kg ke gram)
  double faktorAsal = kategoriKonversi[kategori]![dariUnit]!;
  double nilaiDasar = nilaiInput * faktorAsal;

  // Langkah 2: Ubah dari satuan dasar ke satuan tujuan (misal: gram ke mg)
  double faktorTujuan = kategoriKonversi[kategori]![keUnit]!;
  double hasilAkhir = nilaiDasar / faktorTujuan;

  // Output hasil konversi 
  // Menggunakan toStringAsFixed(2) agar desimal tidak terlalu panjang
  print('Kategori    : $kategori');
  print('Hasil       : $nilaiInput $dariUnit = ${hasilAkhir.toStringAsFixed(2)} $keUnit');
  print('----------------------------');
}