import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conteudo_icone.dart';
import 'card_reusavel.dart';

const corAtiva = Color(0xFF1D1E33);
const corInativa = Color(0xFF111328);
const corDoPe = Color(0xFFEB1555);

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
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          generoEscolhido = Genero.masculino;
                        });
                      },
                      child: CardReusavel(
                        cor: generoEscolhido == Genero.masculino ? corAtiva : corInativa,
                        cardChild: conteudoIcones(
                            icone: FontAwesomeIcons.mars,
                            texto: 'MASCULINO',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          generoEscolhido = Genero.feminino;
                        });
                      },
                      child: CardReusavel(
                        cor: generoEscolhido == Genero.feminino ? corAtiva : corInativa,
                        cardChild: conteudoIcones(
                          icone: FontAwesomeIcons.venus,
                          texto: 'FEMININO',
                        ),
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