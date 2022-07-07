import 'dart:io';

void main(List<String> args) {
  print('Digita o CNPJ pra nois validar');
  String? cnpj = stdin.readLineSync();
  bool deucerto = testaCNPJ(cnpj!);
  print('${deucerto ? 'Ta certo' : 'Ta errado'}');
}

testaCNPJ(String cnpj) {
  List<int> b = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  RegExp formata = RegExp('/[^\d]/g');
  RegExp testaFormato = RegExp('/0{14}/');
  List<int> c = int.parse(cnpj.replaceAll(formata, '')) as List<int>;

  if (c.length != 14) {
    return false;
  }

  c.forEach((element) {
    if (testaFormato.hasMatch(element.toString())) () => false;
  });

  for (var i = 0, n = 0; i < 12; n += c[i] * b[i++]) {
    if (c[12] != (((n %= 11) < 2) ? 0 : 11 - n)) {
      return false;
    }
  }

  for (var i = 0, n = 0; i <= 12; n += c[i] * b[i++]) {
    if (c[13] != (((n %= 11) < 2) ? 0 : 11 - n)) {
      return false;
    }
  }

  return true;
}
