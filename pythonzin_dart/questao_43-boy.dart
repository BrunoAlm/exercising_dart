/*
  O cardapio de uma lanchonete e o seguinte:
  Especificacao   Codigo  Preco
  Cachorro Quente 100     R$ 1,20
  Bauru Simples   101     R$ 1,30
  Bauru com ovo   102     R$ 1,50
  Hamburguer      103     R$ 1,20
  Cheeseburguer   104     R$ 1,30
  Refrigerante    105     R$ 1,00

  Faca um programa que leia o codigo dos itens pedidos e as quantidades desejadas. 
  Calcule e mostre o valor a ser pago por item (preco * quantidade) e o total geral do pedido. 
  Considere que o cliente deve informar quando o pedido deve ser encerrado.
*/
import 'dart:convert';
import 'dart:io';

class Lanches {
  int? id;
  String? nome;
  double? valor;

  Lanches({this.id, this.nome, this.valor});

  Lanches.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    valor = json['valor'];
  }

  String lanches = '''[
    {"id": 100, "nome": "Cachorro Quente", "valor": 1.20},
    {"id": 101, "nome": "Bauru Simples", "valor": 1.30},
    {"id": 102, "nome": "Bauru com ovo", "valor": 1.50},
    {"id": 103, "nome": "Hamburguer", "valor": 1.20},
    {"id": 104, "nome": "Cheeseburguer", "valor": 1.30},
    {"id": 105, "nome": "Refrigerante", "valor": 1.00}]
    ''';

  // declaro essas variaveis dos lanches
  var ids = [], nomes = [], valores = [];
  // isso aqui meu parceiro é um json decode
  // eu to pegando um json que é o mesmo que uma List<Map>
  // eu coloco a string do json e ele vai retornar uma List<Lanches>
  // com ela eu posso só usar um forEach e pegar os dados
  late List<Lanches> meusLanches =
      (json.decode(lanches) as List).map((i) => Lanches.fromJson(i)).toList();

  achaOsLanches() => meusLanches.forEach((element) {
        ids.add(element.id!);
        nomes.add(element.nome!);
        valores.add(element.valor!);
      });
}

void main() {
  Lanches lanches = Lanches();
  lanches.achaOsLanches();

  bool comprando = true;
  final RegExp numberRegExp = RegExp(r'\d');
  late int escolha;
  do {
    menu(ids: lanches.ids, nomes: lanches.nomes, valores: lanches.valores);
    print('O que vai querer?  ( digita o código )');

    var escolheu = stdin.readLineSync();
    numberRegExp.hasMatch(escolheu!)
        ? escolha = int.parse(escolheu)
        : escolha = 1;

    if (!lanches.ids.contains(escolha)) {
      print('Não tem esse código, quer cancelar? (s ou n)');
      var escolha = stdin.readLineSync();
      if (escolha == 's') {
        print('Fechando...');
        comprando = false;
      } else if (escolha == 'n') {
        print('Retomando...');
      }
    }
  } while (comprando);
}

void menu({required List ids, required List nomes, required List valores}) {
  print('  Código |   Nome e Valor');
  for (var i = 0; i < ids.length; i++) {
    print('    ${ids[i]}  | ${nomes[i]} ---> R\$${valores[i]}');
  }
}
