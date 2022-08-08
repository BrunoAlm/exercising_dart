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

class Lanchonete {
  var _lanches = [
    {'id': 100, 'nome': 'Cachorro Quente', 'valor': 1.20},
    {'id': 101, 'nome': 'Bauru Simples', 'valor': 1.30},
    {'id': 102, 'nome': 'Bauru com ovo', 'valor': 1.50},
    {'id': 103, 'nome': 'Hamburguer', 'valor': 1.20},
    {'id': 104, 'nome': 'Cheeseburguer', 'valor': 1.30},
    {'id': 105, 'nome': 'Refrigerante', 'valor': 1.00},
  ];

  get lancheId {
    return _lanches.map((lancheId) => lancheId['id']);
  }

  set lancheId(id) {}
  set lancheNome(nome) {}

  void selecionaLanche() {}
}

void main() {

  int cod;
  int quantidade;
  print("Produto ------ Código ----- Valor");
}
