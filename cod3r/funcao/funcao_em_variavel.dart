main() {
  // tipo nome = valor;

  // usando função ja existente
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));

  // definindo função anônima
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };
  print(soma2(20, 313));


  // definindo função anônima com inferencia
  var soma3 = (int x, int y) {
    return x + y;
  };
  print(soma3(20, 400));


}

int somaFn(int a, int b) {
  return a + b;
}
