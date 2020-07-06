import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cara_coroa/TelaSorteio.dart';

class Home extends StatelessWidget {
  void _sortear(BuildContext context) {
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaSorteio(resultado)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61BD86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/images/logo.png'),
          GestureDetector(
              onTap: () => _sortear(context),
              child: Image.asset('assets/images/botao_jogar.png')),
        ],
      ),
    );
  }
}
