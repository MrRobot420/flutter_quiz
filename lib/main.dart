import 'package:flutter/material.dart';
import 'package:quiz_guide/quiz.dart';
import 'package:quiz_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': 'Was ist deine Lieblingsfarbe?',
      'answers': ['Rot', 'Gelb', 'Blau', 'Grün']
    },
    {
      'questionText': 'Was ist dein Lieblingstier?',
      'answers': ['Hund', 'Katze', 'Maus', 'Adler']
    },
    {
      'questionText': 'Wer ist dein Lieblingsdozent?',
      'answers': ['Denis', 'Max', 'Hubert', 'Alex']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meine erste App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
