//STUDI KASUS 3: Validasi Data Pengguna

void main() {
  // Inisialisasi data input
  String username = 'budi123';
  String password = 'pass123';
  int umur = 17;

  //boolean untuk cek panjang karakter & umur
  bool isUsernameValid = username.length >= 6;
  bool isPasswordValid = password.length >= 6;
  bool isAdult = umur >= 18;

  //operator logika untuk menentukan apakah pengguna dapat mendaftar dan mengakses konten 
  bool canRegister = isUsernameValid && isPasswordValid;
  bool canAccessAdultContent = canRegister && isAdult;

  //menampilkan hasil validasi
  print('Dapat mendaftar: $canRegister');
  print('Dapat mengakses konten: $canAccessAdultContent');
}