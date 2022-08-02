// CRIAR UMA FUNÇÃO QUE RECEBE ALTURA EM CENTIMETROS E PESO E CALCULE
// E CALCULE E EXIBA:
//
// peso:
// altura:
// IMC:
// faixa:

// FORMULA IMC -> IMC = Peso ÷ (Altura × Altura)

// FAIXAS
// Menor que 18,5 = abaixo do peso.
// Entre 18,5 e 24,9 = peso normal.
// Entre 25 e 29,9 = sobrepeso.
// Entre 30 e 34,99 = obesidade grau I.
// Entre 35 e 39,99 = obesidade grau II (severa).
// Acima de 40 = obesidade grau III (mórbida).

import 'dart:io';

void main() {
  double height; // ALTURA
  double weight; // PESO
  stdout.write('Informe a sua altura em cm: ');
  height = double.parse(stdin.readLineSync()!) / 100;
  stdout.write('Informe o seu peso em kg: ');
  weight = double.parse(stdin.readLineSync()!);
  var bmi = calculaBMI(height, weight);
  var strip = calculaBMIStrip(bmi);
  print('\nDados inseridos:');
  print('Altura em metros: $height');
  print('Peso em kg: $weight');
  print('\nDados calculados:');
  print('$bmi kg/m²');
  print('$strip \n');
}

double calculaBMI(double height, double weight) {
  double bmi = weight / (height * height);
  return bmi;
}

String calculaBMIStrip(double bmi) {
  String strip = '';
  if (bmi < 18.5) {
    strip = 'Abaixo do peso';
  } else if (bmi >= 18.5 && bmi <= 24.0) {
    strip = 'Peso Normal';
  } else if (bmi >= 25 && bmi <= 29.9) {
    strip = 'Sobrepeso';
  } else if (bmi >= 30 && bmi <= 34.99) {
    strip = 'Obesidade grau I';
  } else if (bmi >= 35 && bmi <= 39.99) {
    strip = 'Obesidade grau II (severa)';
  } else if (bmi >= 40) {
    strip = 'Obesidade grau III (morbida)';
  }
  return strip;
}
