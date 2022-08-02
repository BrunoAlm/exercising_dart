import 'dart:io';
import 'dart:math';

void main() {
  bool hits = false;
  int userGuess;
  int guesses = 0;
  int rnd = Random().nextInt(100);
  while (!hits) {
    stdout.write('Informe um número de 0 a 100: ');
    userGuess = int.parse(stdin.readLineSync()!);
    if ((userGuess <= 100) || (userGuess >= 0)) {
      if (userGuess == rnd) {
        print('ACERTOU!!!!');
        hits = true;
      }
      if (userGuess > rnd) {
        print('Ta pa barro');
      } else {
        print('Ta pa riba');
      }
      guesses++;
    }
  }
  print('Tentou $guesses vezes');
}
