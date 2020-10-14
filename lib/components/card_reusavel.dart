import 'package:flutter/material.dart';

class CardReusavel extends StatelessWidget {
  CardReusavel({@required this.cor, this.cardChild, this.onPress});

  final Widget cardChild;
  final Color cor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}

