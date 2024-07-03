// ignore_for_file: unused_field

class Pessoa {
  String _nome;
  final double _peso;
  final double _altura;

  Pessoa(String nome, this._peso, this._altura) :
    _nome = nome;


  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  double retornaIMC() {
    var imc = 0.0;
    if (_peso <= 0 ) {
      throw ArgumentError("Peso inválido");
    }

    if (_altura <= 0) {
      throw ArgumentError("Altura inválida");
    }

    if (_altura != 0) {
      imc = _peso / (_altura * _altura);
    }
    return imc.roundToDouble();
  }

  String retornaIMCClassificacao() {
    var imc = retornaIMC();
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
     } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Suadável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade grau 1";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade grau 2";
    } else {
      return "Obesidade grau 3";
    }
  }
}	