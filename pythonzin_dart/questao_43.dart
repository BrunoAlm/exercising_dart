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
  int cod;
  int quantidade;
  double total = 0;

  print('''Produto ------ Código ------ Valor
 Cachorro Quente ------ 101 ------ 1,20
 Bauru Simples ------ 102 ------ 1,30
 Bauru com Ovo ------ 103 ------ 1,50
 Hamburguer ------ 103 ------ 1,20
 Chesseburguer ------ 104 ------ 1,30
 Refrigerante ------ 105 ------ 1,00 
  ''');

  while (true) {
    int quantidade_100 = 0;
    int quantidade_101 = 0;
    int quantidade_102 = 0;
    int quantidade_103 = 0;
    int quantidade_104 = 0;
    int quantidade_105 = 0;
    stdout.write("Informe o código do produto ou 9 para sair");
    cod = int.parse(stdin.readLineSync()!);
    if (cod == 9) {
      print("Sai daqui gay!");
    }
    if (cod < 100 || cod > 105) {
      print("Animal! Digita algo certo, CORNO!");
    }

    stdout.write("Informe a quantidade: ");
    quantidade = int.parse(stdin.readLineSync()!);
    if (cod == 100)
      quantidade_100 = quantidade;
    else if (cod == 101)
      quantidade_101 += quantidade;
    else if (cod == 102)
      quantidade_102 += quantidade;
    else if (cod == 103)
      quantidade_103 += quantidade;
    else if (cod == 104)
      quantidade_104 += quantidade;
    else if (cod == 105) quantidade_105 += quantidade;
  }
  print("PEDIDO FECHADO!");
  print("Quantidade ------ Codigo ------ Valor");
}
