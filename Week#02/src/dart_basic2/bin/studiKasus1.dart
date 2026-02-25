//STUDI KASUS 1: Konversi Suhu

void main() {
  double celsius = 30.0;
  double fahrenheit , kelvin;
  fahrenheit = (celsius * 9/5) + 32;
  kelvin = celsius + 273.15;
  print('$celsius°C = $fahrenheit°F');
  print('$celsius°C = $kelvin°K');
}
