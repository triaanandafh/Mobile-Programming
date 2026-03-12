void main() {
  // --- Identitas & Personalisasi NIM ---
  String nama = "Tria Ananda Fadillah";
  String nim = "244107060149"; 
  
  // Mengambil 3 digit terakhir NIM (149)
  double nilaiUnikNIM = double.parse(nim.substring(9));

  // --- Variabel & Tipe Data ---
  List<double> daftarHarga = [35000.0, 50000.0, 20000.0, 45000.0, 60000.0];
  daftarHarga.add(nilaiUnikNIM);

  // --- Perhitungan ---
  double totalAwal = hitungTotal(daftarHarga);
  double diskon = 0;
  String? pesanDiskon;

  // --- Control Flow (Percabangan) ---
  if (totalAwal > 200000) {
    diskon = 0.10;
    pesanDiskon = "Selamat! Anda mendapatkan diskon 10%";
  } else if (totalAwal >= 100000) {
    diskon = 0.05;
    pesanDiskon = "Selamat! Anda mendapatkan diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Maaf, Anda belum mendapatkan diskon.";
  }

  double besarDiskon = totalAwal * diskon;
  double totalAkhir = totalAwal - besarDiskon;

  // --- Output ---
  print("=== LAPORAN BELANJA KUIS ===");
  print("Nama         : $nama");
  print("NIM          : $nim");
  print("Nilai Unik   : $nilaiUnikNIM (dari 3 digit terakhir NIM)");
  print("-----------------------");
  print("Total Awal   : Rp ${totalAwal.toStringAsFixed(2)}");
  print("Keterangan   : ${pesanDiskon!}"); // Null safety operator !
  print("Besar Diskon : Rp ${besarDiskon.toStringAsFixed(2)}");
  print("Total Akhir  : Rp ${totalAkhir.toStringAsFixed(2)}");
}

// Fungsi hitungTotal untuk menjumlahkan semua harga dalam daftar
double hitungTotal(List<double> harga) {
  double total = 0;
  for (var hrg in harga) {
    total += hrg;
  }
  return total;
}