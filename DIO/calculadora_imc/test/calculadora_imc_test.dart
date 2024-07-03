
import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
 var pessoa = Pessoa("", 78.0, 1.80); 
  test('calculo do imc', () {
    expect(pessoa.retornaIMC(), 24.0);
  });

 pessoa = Pessoa("", 78.0, 0); 
   test('calculo do imc ERRO de ALTURA', () {
    expect(pessoa.retornaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });

  pessoa = Pessoa("", 0, 1.80); 
   test('calculo do imc ERRO de PESO', () {
    expect(pessoa.retornaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });
}
