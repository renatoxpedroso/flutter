import 'package:flutter/material.dart';
import 'package:projeto_perguntas/question.dart';
import 'package:projeto_perguntas/response.dart';

void main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _questionSelected = 0;

  void _answers() {
    setState(() {
      _questionSelected++;
    });
    // ignore: avoid_print
    print(_questionSelected);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
      {
        'text': 'Qual é a sua cor favorita?',
        'response': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'text': 'Qual é o seu animal favorito?',
        'response': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_questionSelected]['text'].toString()),
            for (var text in questions[_questionSelected].cast()['response'])
              Response(text, _answers),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
