import 'package:flutter/material.dart';

const corAtiva = Color(0xFF1D1E33);
const corDoPe = Color(0xFFEB1555);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

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
                ),
              ),
              Expanded(
                child: CardReusavel(
                  cor: corAtiva,
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

class CardReusavel extends StatelessWidget {
  CardReusavel({@required this.cor});

  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 170.0,
    );
  }
}
