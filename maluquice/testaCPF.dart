import 'dart:io';

void main(List<String> args) {
  print('Digita o cpf pra ver se ta certo');
  var cpf = stdin.readLineSync();
  bool tacerto = TestaCPF(cpf!);
  print('${tacerto ? 'Ta certo' : 'Ta errado'}');
}

bool TestaCPF(String strCPF) {
  int Soma = 0;
  double Resto = 0.0;
  //strCPF  = RetiraCaracteresInvalidos(strCPF,11);
  if (strCPF == "00000000000") return false;
  for (int i = 1; i <= 9; i++) {
    Soma = Soma + int.parse(strCPF.substring(i - 1, i)) * (11 - i);
  }
  Resto = (Soma * 10) % 11;
  if ((Resto == 10) || (Resto == 11)) {
    Resto = 0;
  }
  if (Resto != int.parse(strCPF.substring(9, 10))) {
    return false;
  }
  Soma = 0;
  for (int i = 1; i <= 10; i++)
    Soma = Soma + int.parse(strCPF.substring(i - 1, i)) * (12 - i);
  Resto = (Soma * 10) % 11;
  if ((Resto == 10) || (Resto == 11)) {
    Resto = 0;
  }
  if (Resto != int.parse(strCPF.substring(10, 11))) {
    return false;
  }
  return true;
}
