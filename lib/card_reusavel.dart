import 'package:flutter/material.dart';

class CardReusavel extends StatelessWidget {
  CardReusavel({@required this.cor, this.cardChild});

  final Widget cardChild;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}