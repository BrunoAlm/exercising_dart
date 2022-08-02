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

import 'dart:io';

void main() {
  var menu = [
    {'item': 'Cachorro Quente', 'valor': 100},
    {'item': 'Bauru Simples', 'valor': 101},
    {'item': 'Bauru com meus ovos', 'valor': 102},
    {'item': 'Hamburguer', 'valor': 103},
    {'item': 'Cheeseburguer', 'valor': 104},
    {'item': 'Refrigerante', 'valor': 105},
    {'item': 'Encerrar', 'valor': 0}
  ];

  void displayMenu() {
    var item = menu.map((item) => item['valor']);
    item.forEach((element) {
      print(element);
    });
  }

  displayMenu();

  bool chosing = true;
  int option = 1;
  int itemQuantity = 0;
  double totalItem = 0;
  double totalValue = 0;
  // do {
  //   switch (option) {
  //     case 100:
  //       stdout.write('Infome a quantidade: ');
  //       itemQuantity = int.parse(stdin.readLineSync()!);
  //       totalItem = itemQuantity * 1.20;
  //       break;
  //     case 0:
  //       chosing = false;
  //       break;
  //     default:
  //   }
  // } while (chosing);
}
