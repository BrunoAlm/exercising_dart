// ignore_for_file: unused_local_variable

import 'dart:io';

void main() {
  print('''\n
  ---------------------------------------------------
    Vou transformar seu número inteiro, se liga:
    Você digita um inteiro com no máximo 5 números
    e vou te mostrar esse número por extenso.
                  Muito pica ta
  ---------------------------------------------------
  ''');
  stdout.write('Digite um número: ');
  int n = int.parse(stdin.readLineSync()!);
  print(retornaInteiroPorExtenso(n));
  // print('${dezena[20]} e ${unidade[2]}');
}

String retornaInteiroPorExtenso(int n) {
  String result = 'não foi possível';
  Map<int, String> unidade = {
    1: "um",
    2: "dois",
    3: "três",
    4: "quatro",
    5: "cinco",
    6: "seis",
    7: "sete",
    8: "oito",
    9: "nove",
  };

  Map dezena = {
    10: "dez",
    20: "vinte",
    30: "trinta",
    40: "quarenta",
    50: "cinquenta",
    60: "sessenta",
    70: "setenta",
    80: "oitenta",
    90: "noventa",
  };
  // testa o inteiro
  String aux = n.toString();
  List<String> list_aux = aux.split('');
  List<int> list_aux_inteira =
      List.generate(list_aux.length, (index) => int.parse(list_aux[index]));
  // var teste =
  // list_aux.elementAt(list_aux.length).contains(unidade.keys.toString());

  var tem_unidade = unidade.containsKey(list_aux_inteira.length);
  print('tem unidade? ${tem_unidade ? 'sim' : 'não'}');
  result = aux;
  if (tem_unidade) {
    result += unidade.values.elementAt(list_aux_inteira.last + 1);
  }
  // for (var numero in aux.split('')) {}
  // result = aux[1];
  return result;
}
