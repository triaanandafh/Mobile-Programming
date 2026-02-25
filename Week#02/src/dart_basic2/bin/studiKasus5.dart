//STUDI KASUS 5: Status Kelulusan 

void main() {
  // Menggunakan Map untuk menyimpan data berpasangan
  Map nilaiMahasiswa = {
    'Matematika': 85,
    'Fisika': 75,
    'Pemrograman': 90,
    'Bahasa Inggris': 80
  };
  double total = 0;

  // Melakukan perulangan pada Map untuk mengambil semua nilai dan menjumlahkannya
  nilaiMahasiswa.forEach((mataKuliah, nilai) {
    total += nilai;
  });
  double rataRata = total / nilaiMahasiswa.length;

  //Menggunakan Ternary Operator untuk menentukan status
  String status = rataRata >= 60 ? 'LULUS' : 'TIDAK LULUS';
  String predikat;
  if (rataRata >= 90) {
    predikat = 'A';
  } else if (rataRata >= 80) {
    predikat = 'B';
  } else if (rataRata >= 70) {
    predikat = 'C';
  } else {
    predikat = 'D/E';
  } 
  print('Nilai Mahasiswa:');
  // Mencetak isi Map menggunakan arrow function (=>)
  nilaiMahasiswa.forEach((mataKuliah, nilai) => print('$mataKuliah: $nilai'));
  print('Rata-rata: $rataRata');
  print('Status: $status');
  print('Predikat: $predikat');
}