import 'package:flutter/material.dart';
import 'constant.dart';


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
          style: kEstiloTexto,
        ),
      ],
    );
  }


}