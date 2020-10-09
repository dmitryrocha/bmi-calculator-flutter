import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conteudo_icone.dart';
import 'card_reusavel.dart';
import 'constant.dart';



enum Genero {
  masculino,
  feminino
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Genero generoEscolhido;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CardReusavel(
                      onPress: () {
                        setState(() {
                          generoEscolhido = Genero.masculino;
                        });
                      },
                      cor: generoEscolhido == Genero.masculino ? kCorAtiva : KCorInativa,
                      cardChild: conteudoIcones(
                          icone: FontAwesomeIcons.mars,
                          texto: 'MASCULINO',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardReusavel(
                      onPress: () {
                        setState(() {
                          generoEscolhido = Genero.feminino;
                        });
                      },
                      cor: generoEscolhido == Genero.feminino ? kCorAtiva : KCorInativa,
                      cardChild: conteudoIcones(
                        icone: FontAwesomeIcons.venus,
                        texto: 'FEMININO',
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: CardReusavel(
              cardChild: Column(
                children: <Widget>[
                  Text('Altura', style: kEstiloTexto,),
                ],
              ),
              cor: kCorAtiva,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardReusavel(
                    cor: kCorAtiva,
                  ),
                ),
                Expanded(
                  child: CardReusavel(
                    cor: kCorAtiva,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kCorDoPe,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}