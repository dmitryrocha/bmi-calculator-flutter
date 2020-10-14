import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/conteudo_icone.dart';
import '../components/card_reusavel.dart';
import '../constant.dart';
import 'resultados.dart';
import '../components/botao_do_fundo.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculadora.dart';


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
  int idade = 20;


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
                      SizedBox(
                        width: 30.0,
                      ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(peso.toString(), style: kEstiloNumeros),
                              Text('kg', style: kEstiloTexto,)
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            RoundIconButton(
                                icone: FontAwesomeIcons.minus,
                              onPressed: ()  {
                                  setState(() {
                                    peso--;
                                  });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icone: FontAwesomeIcons.plus,
                              onPressed:() {
                                  setState(() {
                                    peso++;
                                  });
                              },
                            )
                              ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardReusavel(
                    cor: kCorAtiva,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text('IDADE', style: kEstiloTexto),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(idade.toString(), style: kEstiloNumeros),
                              Text('anos', style: kEstiloTexto,)
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            RoundIconButton(
                              icone: FontAwesomeIcons.minus,
                              onPressed: ()  {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icone: FontAwesomeIcons.plus,
                              onPressed:() {
                                setState(() {
                                  idade++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BotaoDoFundo(
            textoBotao: 'CALCULAR',
            onTap: () {
              Calculadora calc = Calculadora(altura: altura, peso: peso);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  Resultados(
                        imcResultado: calc.calcularIMC(),
                        imcTexto: calc.getResultadoTexto(),
                        imcInterpretado: calc.getInterpretacao(),
                      ),
                  ),
              );
          },
          ),
        ],
      ),
    );
  }
}




