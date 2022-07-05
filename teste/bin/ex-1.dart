import 'dart:io';

void main() {
  String name;
  int years;
  stdout.write('Olá, informe o seu nome: ');
  name = stdin.readLineSync()!.toUpperCase();
  stdout.write('$name, Informe a sua idade: ');
  years = int.parse(stdin.readLineSync()!);
  int toBe = howManyYearsToBe100(years);
  print('$name, restam $toBe anos para chegar a 100. ');
}

int howManyYearsToBe100(int years) {
  int result = 100 - years;
  return result;
}
