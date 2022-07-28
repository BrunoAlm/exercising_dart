/*
  Enunciado:

  Faça um algoritmo que leia a idade de uma pessoa expressa em anos,
  meses e dias e escreva a idade dessa pessoa expressa apenas em dias.
  Considerar ano com 365 dias e mês com 30 dias.

*/
import 'dart:io';

void main() {
  stdout.write('Digite sua data de nascimento: ');
  String? entrada = stdin.readLineSync();
  RegExp formata = RegExp(r'([0-9])\w+');
    
  print(formata.hasMatch(entrada!));

  if (formata.hasMatch(entrada)) {
    String entradaFormatada = formata.stringMatch(entrada)!;
    print('Entrada Formatada: $entradaFormatada');
  } else {
    print('Entrada está nula');
  }
}
