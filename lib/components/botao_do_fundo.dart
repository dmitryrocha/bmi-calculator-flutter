import 'package:flutter/material.dart';
import '../constant.dart';


class BotaoDoFundo extends StatelessWidget {

  BotaoDoFundo({@required this.onTap, @required this.textoBotao});

  final Function onTap;
  final String textoBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text( textoBotao , style: kEstiloTextoRodape),
        ),
        color: kCorDoPe,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}