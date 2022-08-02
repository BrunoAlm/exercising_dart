// Escreva um programa leia uma quantidade de tempo dada em
// horas, minutos e segundos e converta para um número equivalente em segundos.
import 'dart:io';

void main() {
  int horas, minutos, segundos;
  stdout.write('Informe a quantidade de horas: ');
  horas = (int.parse(stdin.readLineSync()!) * 60) * 60;
  stdout.write('Informe a quantidade de minutos: ');
  minutos = int.parse(stdin.readLineSync()!) * 60;
  stdout.write('Informe a quantidade de segundos: ');
  segundos = int.parse(stdin.readLineSync()!) + horas + minutos;
  print(segundos);
}
