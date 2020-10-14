import 'dart:math';

class Calculadora {

  Calculadora({this.altura, this.peso});

  final int altura;
  final int peso;

  double _imc;

  String calcularIMC() {
    _imc = peso / pow(altura/100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResultadoTexto() {
    if(_imc >= 30) {
      return "Obesidade";
    }else if(_imc >= 25 && _imc < 30) {
      return "Acima do peso";
    } else if (_imc > 18.5 && _imc < 25) {
      return "Nomrmal";
    } else {
      return "Abaixo do normal";
    }
  }

  String getInterpretacao() {
    if(_imc >= 30) {
      return "Riscos para várias doenças, como diabetes, hipertensão arterial, o infarto do miocárdio e diversos tipos de câncer. O indicado é consultar um especialista e receber acompanhamento adequado.";
    }else if(_imc >= 25 && _imc < 30) {
      return "É tempo de consultar um profissional, realizar exames e pensar em uma reeducação alimentar e exercícios físicos.";
    } else if (_imc > 18.5 && _imc < 25) {
      return "Seu peso está dentro do considerado normal pela OMS.";
    } else {
      return "Peso abaixo do normal. Neste caso, é necessária a busca por um especialista, para verificar a existência de algum problema de saúde causador do índice abaixo do normal, ou analisar se sua saúde não está sendo afetada.";
    }
  }

}