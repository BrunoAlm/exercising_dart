import 'dart:async';
import 'dart:html';

void main() async {
  void pegaData() async {
    String horaAtual = '';
    DateTime hora = DateTime.now();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      hora = DateTime.now();
      horaAtual = '${hora.hour}:${hora.minute}:${hora.second}';
      var data = querySelector('#data');
      data?.setInnerHtml('Hora Atual: $horaAtual');
    });
  }

  pegaData();

  Animation animacao(Element elem) {
    var animation = elem.animate([
      {"transform": "translate(100px, 0px)"},
      {"transform": "translate(1000px, 0px)"}
    ], 1000);
    return animation;
  }

  var cobrinha = querySelector('#cobrinha');

  Timer.periodic(const Duration(seconds: 1), (timer) {
    animacao(cobrinha!);
  });

  querySelector('#output')?.text = 'Your Dart app is running.';
  // querySelector('header')!.style.backgroundColor = '#fff';
}
