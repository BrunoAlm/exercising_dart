// ignore_for_file: file_names

import 'dart:io';

void main() {
  int number;
  stdout.write('Informe um número: ');
  number = int.parse(stdin.readLineSync()!);

  number.isEven ? print('Número par') : print('Número impar');
}
