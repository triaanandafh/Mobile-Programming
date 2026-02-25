// Tugas Praktikum 3: Kasir Cafe

void main() {
  //Map: Menyimpan Menu dan Harga 
  Map<String, int> menuCafe = {
    'Kopi Susu': 15000,
    'Matcha Latte': 20000,
    'Cireng Crispy': 12000,
    'Kentang Goreng': 15000,
    'Croissant': 25000
  };

  //input data pembelian
  int jumlahBeli = 3;
  String pilihanMenu = 'Kopi Susu';
  bool isMember = true; // Status member

  // Menghitung Subtotal
  int hargaSatuan = menuCafe[pilihanMenu]!;
  int subTotal = hargaSatuan * jumlahBeli;

  // Cek apakah belanja cukup untuk dapat diskon toko
  bool dapatDiskonToko = subTotal > 50000;

  // Diskon tambahan untuk member
  // Syarat: Harus Member dan harus belanja di atas 50rb
  bool dapatDiskonMember = isMember && subTotal > 40000;

  // Menghitung persentase total diskon
  double persentaseDiskon = 0;

  if (dapatDiskonToko) {
    persentaseDiskon += 0.10; // diskon 10%
  }

  if (dapatDiskonMember) {
    persentaseDiskon += 0.05; // diskon 5%
  }

  // Hitung nominal diskon (Aritmatika)
  double totalPotongan = subTotal * persentaseDiskon;
  double hargaAkhir = subTotal - totalPotongan;

  String statusDiskon = dapatDiskonMember
      ? 'Diskon Toko + Diskon Member'
      : (dapatDiskonToko ? 'Diskon Toko' : 'Tidak dapat diskon');

  // Output hasil perhitungan
  print('======= CAFE DELICIOUS =======');
  print('Menu         : $pilihanMenu x $jumlahBeli');
  print('Subtotal     : Rp$subTotal');
  print('Status Diskon: $statusDiskon');
  print('Diskon       : Rp${totalPotongan.toStringAsFixed(0)}');
  print('Total        : Rp$hargaAkhir');
  print('==============================');
}