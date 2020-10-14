import 'package:bmi_calculator/components/botao_do_fundo.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/card_reusavel.dart';

class Resultados extends StatelessWidget {

  Resultados({@required this.imcResultado, @required this.imcTexto, @required this.imcInterpretado});

  final String imcResultado;
  final String imcTexto;
  final String imcInterpretado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA DE IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Seu resultado',
                style: kEstiloTextoTitulo,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: CardReusavel(
                cor: kCorAtiva,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      imcTexto,
                      style: kTextoResultado,
                    ),
                    Text(
                      imcResultado,
                      style: kTextoIMC,
                    ),
                    Text(
                      imcInterpretado,
                      textAlign: TextAlign.center,
                      style: kBodyResultado,
                    )
                  ],
                ),
              ),
          ),
          BotaoDoFundo(
            textoBotao: 'RE-CLACULAR',
            onTap: () {
              Navigator.pop(context);
            },)
        ],
      ),
    );
  }


}
