import 'dart:io';
import 'dart:math';

int easyPasswordSize = 4;
int mediumPasswordSize = 5;
int hardPasswordSize = 6;

void main() {
  String option;
  String generatedPassword = '';
  bool generating = true;
  List<String> capitalLetter = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  List<String> lowerLetter = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  List<String> specialCharactere = [
    '!',
    '@',
    '#',
    '\$',
    '%',
    '&',
    '*',
    '+',
    '-',
    '?'
  ];

  List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  List<String> level = [
    'Easy',
    'Medium',
    'Hard',
    'Exit',
  ];
  while (generating) {
    stdout.write('Informe a dificuldade da sua senha: ');
    print(level);
    option = stdin.readLineSync()!;

    switch (option) {
      case 'Easy':
        generatedPassword = generateEasyPassword(
          lowerLetter: lowerLetter,
          capitalLetter: capitalLetter,
        );
        break;
      case 'Medium':
        generatedPassword = generateMediumPassword(
          capitalLetter: capitalLetter,
          lowerLetter: lowerLetter,
          numbers: numbers,
        );
        break;
      case 'Hard':
        generatedPassword = generateHardPassword(
          capitalLetter: capitalLetter,
          lowerLetter: lowerLetter,
          numbers: numbers,
          specialCharactere: specialCharactere,
        );
        break;
      case 'Exit':
        generating = false;
        break;
    }
    print(generating ? 'Senha gerada -> $generatedPassword <-' : '');
  }
}

String generateEasyPassword({
  required List<String> lowerLetter,
  required List<String> capitalLetter,
}) {
  // MINUSCULO E MAIUSCULO
  List<String> lista = [];
  String aux = '';
  String password;
  var random = Random();

  for (var i = 0; i < easyPasswordSize; i++) {
    aux = lowerLetter[random.nextInt(lowerLetter.length)];
    lista.add(aux);
  }
  for (var i = 0; i < easyPasswordSize; i++) {
    aux = capitalLetter[random.nextInt(capitalLetter.length)];
    lista.add(aux);
  }
  lista.shuffle();

  return password = lista.join();
}

String generateMediumPassword({
  required List<String> lowerLetter,
  required List<String> capitalLetter,
  required List<String> numbers,
}) {
  // MINUSCULO, MAIUSCULO E NUMERO
  List<String> lista = [];
  String aux = '';
  String password = '';
  var random = Random();

  for (var i = 0; i < mediumPasswordSize; i++) {
    aux = lowerLetter[random.nextInt(lowerLetter.length)];
    lista.add(aux);
  }
  for (var i = 0; i < mediumPasswordSize; i++) {
    aux = capitalLetter[random.nextInt(capitalLetter.length)];
    lista.add(aux);
  }
  for (var i = 0; i < mediumPasswordSize; i++) {
    aux = numbers[random.nextInt(numbers.length)];
    lista.add(aux);
  }
  lista.shuffle();

  return password = lista.join();
}

String generateHardPassword({
  required List<String> lowerLetter,
  required List<String> capitalLetter,
  required List<String> numbers,
  required List<String> specialCharactere,
}) {
  // MINUSCULO, MAIUSCULO E NUMERO
  List<String> lista = [];
  String aux = '';
  String password = '';
  var random = Random();

  for (var i = 0; i < hardPasswordSize; i++) {
    aux = lowerLetter[random.nextInt(lowerLetter.length)];
    lista.add(aux);
  }
  for (var i = 0; i < hardPasswordSize; i++) {
    aux = capitalLetter[random.nextInt(capitalLetter.length)];
    lista.add(aux);
  }
  for (var i = 0; i < hardPasswordSize; i++) {
    aux = numbers[random.nextInt(numbers.length)];
    lista.add(aux);
  }
  for (var i = 0; i < hardPasswordSize; i++) {
    aux = specialCharactere[random.nextInt(specialCharactere.length)];
    lista.add(aux);
  }
  lista.shuffle();

  return password = lista.join();
}
