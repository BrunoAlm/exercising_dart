// Uma companhia telefônica opera com a seguinte tarifa:
// uma chamada telefônica com duração de 3 minutos custa R$ 1,15.
// Cada minuto adicional custa R$ 0,26.
// Escreva um programa que leia a duração total de uma chamada (em minutos)
// e calcule o total a ser pago.
import 'dart:io';

void main() {
  double valorFinal = 1.15, duracaoChamada, minutoAdicional = 0.26;
  stdout.write('Informe quantos minutos durou a chamada: ');
  duracaoChamada = double.parse(stdin.readLineSync()!);

  if (duracaoChamada <= 3.0) {
    print('Custou: $valorFinal');
  } else {
    for (var i = 0; i < duracaoChamada - 3.0; i++) {
      valorFinal += minutoAdicional;
    }
    print(valorFinal);
  }
}
