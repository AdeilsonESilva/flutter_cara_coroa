import 'package:flutter/material.dart';

class TelaSorteio extends StatelessWidget {
  final String moeda;

  TelaSorteio(this.moeda);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61BD86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/images/moeda_${this.moeda}.png'),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset('assets/images/botao_voltar.png'),
          ),
        ],
      ),
    );
  }
}
