import 'dart:html';

void main() {
  final dataAtual = DateTime.now();
  querySelector('#output')?.text = 'Your Dart app is running.';
  querySelector('header')!.style.backgroundColor = '#fff';
  var data = querySelector('data');
  data!.addEventListener('click', (event) => {data.style.color = '#fff'});

  print('object');
}
