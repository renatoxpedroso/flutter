// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:calculadora_imc/exception/nome_invalido_exception.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void calculadoraImc(){
  print("Bem vindo ao sistema de calculo IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0);
  }

  var peso = double.parse(ConsoleUtils.lerStringComTexto('Informe seu peso:'));
  var altura = double.parse(ConsoleUtils.lerStringComTexto('Informe sua altura:'));

  var pessoa = Pessoa(nome, peso, altura); // Adjusted to pass all required arguments

  print('Seu IMC é: ${pessoa.retornaIMC()}');
  print('Classificação: ${pessoa.retornaIMCClassificacao()}');
}