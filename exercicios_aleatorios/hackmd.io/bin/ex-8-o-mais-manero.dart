import 'dart:io';
import 'dart:math';

void main() {
  List<String> options = ['Pedra', 'Papel', 'Tesoura'];
  String playerOption;
  String machineOption;
  var random = Random();

  print('Informe a sua jogada: \n $options');
  playerOption = stdin.readLineSync()!;
  machineOption = options[random.nextInt(3)];
  print (machineOption);
  if (playerOption == 'Pedra' && machineOption == 'Tesoura' ||
      playerOption == 'Papel' && machineOption == 'Pedra' ||
      playerOption == 'Tesoura' && machineOption == 'Papel') {
    print('Aí ganhou né');
  }
  else if (playerOption == machineOption) {
    print('Ai empataram');
  }
  else 
  {
    print ('Perdeu pro PC animal');
  }
}
