import 'package:flutter/material.dart';

const estiloTexto = TextStyle(fontSize: 18.0,color: Color(0Xff8d8e98));

class conteudoIcones extends StatelessWidget {
  conteudoIcones({this.icone, this.texto});

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icone,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          texto,
          style: estiloTexto,
        ),
      ],
    );
  }


}