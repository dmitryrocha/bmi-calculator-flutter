import 'package:flutter/cupertino.dart';
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
  int altura = 176;
  int peso = 75;


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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ALTURA', style: kEstiloTexto),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget> [
                      Text(
                        altura.toString(),
                        style: kEstiloNumeros,
                      ),
                      Text(
                        'cm',
                        style: kEstiloTexto,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x15EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                   child: Slider(
                    value: altura.toDouble(),
                    min: 120.0,
                    max: 250.0,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double novoValor) {
                      setState(() {
                        altura = novoValor.round();
                      });
                    },
                  ),
                  ),
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text('PESO', style: kEstiloTexto),
                        Text(peso.toString(), style: kEstiloNumeros),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                  Icons.add,
                                color: Colors.white,
                              ),
                          ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                              ],
                        ),
                      ],
                    ),
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