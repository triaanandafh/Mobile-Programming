//STUDI KASUS 4: Perhitungan Diskon

void main() {
  //inisialisasi variabel
  double hargaBarang = 120000;
  int jumlahBeli = 3;
  String kodeMember = 'GOLD';
  double total = hargaBarang * jumlahBeli;

  // Menentukan besar diskon awal berdasarkan kode member
  double diskonPersen = 0;
  if (kodeMember == 'GOLD') diskonPersen = 0.1;  // 10% untuk member GOLD
   else if (kodeMember == 'SILVER') diskonPersen = 0.05;  // 5% untuk
   
  // operator ternary
  double diskonTambahan = total > 300000 ? 0.05 : 0;
  double totalDiskon = total * (diskonPersen + diskonTambahan);
  double hargaAkhir = total - totalDiskon;

  // Menampilkan hasil perhitungan
  print('Total: Rp$total');
  print('Diskon: Rp$totalDiskon');
  print('Harga Akhir: Rp$hargaAkhir');
}