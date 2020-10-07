import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const corAtiva = Color(0xFF1D1E33);
const corDoPe = Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardReusavel(
                      cor: corAtiva,
                      cardChild: colunaCard(
                          icone: FontAwesomeIcons.mars,
                          texto: 'MASCULINO',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardReusavel(
                      cor: corAtiva,
                      cardChild: colunaCard(
                        icone: FontAwesomeIcons.venus,
                        texto: 'FEMININO',
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: CardReusavel(
              cor: corAtiva,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardReusavel(
                    cor: corAtiva,
                  ),
                ),
                Expanded(
                  child: CardReusavel(
                    cor: corAtiva,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: corDoPe,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class colunaCard extends StatelessWidget {
  colunaCard({this.icone, this.texto});

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
          texto, style: TextStyle(
            fontSize: 18.0,
            color: Color(0Xff8d8e98)
        ),
        ),
      ],
    );
  }


}

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