import 'dart:io';

void main() {
  // FEATURE 4: HISTORY (Using a List to store non-primitive data)
  List<Map<String, dynamic>> riwayatBMI = [];
  bool isRunning = true;

  print("=== BMI CALCULATOR SYSTEM ===");

  while (isRunning) {
    // FEATURE 1: INPUT (Manual input for Height and Weight)
    stdout.write("\nEnter Height (cm): ");
    String? inputHeight = stdin.readLineSync();
    stdout.write("Enter Weight (kg): ");
    String? inputWeight = stdin.readLineSync();

    // FEATURE 2: PROCESS (Calculation and Categorization)
    if (inputHeight != null && inputWeight != null) {
      double heightCm = double.parse(inputHeight);
      double weightKg = double.parse(inputWeight);
      
      double heightM = heightCm / 100;
      double bmiScore = weightKg / (heightM * heightM);

      String category;
      if (bmiScore < 18.5) {
        category = "Kurus";
      } else if (bmiScore < 25) {
        category = "Normal";
      } else if (bmiScore < 30) {
        category = "Gemuk";
      } else {
        category = "Obesitas";
      }

      // FEATURE 3: OUTPUT (Immediate result display)
      print("\n--- Current Calculation ---");
      print("BMI Score: ${bmiScore.toStringAsFixed(2)}");
      print("Category : $category");

      // Adding to History List
      riwayatBMI.add({
        'tb': heightCm,
        'bb': weightKg,
        'skor': bmiScore.toStringAsFixed(2),
        'ket': category
      });
    }

    stdout.write("\nCalculate again? (y/n): ");
    String? choice = stdin.readLineSync();
    if (choice?.toLowerCase() != 'y') {
      isRunning = false;
    }
  }

  // DISPLAY FEATURE 4: HISTORY (Iterating through the list)
  print("\n========== ALL CALCULATION HISTORY ==========");
  for (var i = 0; i < riwayatBMI.length; i++) {
    // FIXED: Corrected the string interpolation to avoid '$' errors
    print("${i + 1}. TB: ${riwayatBMI[i]['tb']}cm | BB: ${riwayatBMI[i]['bb']}kg | BMI: ${riwayatBMI[i]['skor']} (${riwayatBMI[i]['ket']})");
  }
  print("=============================================");
}