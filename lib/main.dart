import 'package:flutter/material.dart';
import 'package:quiz_guide/answer.dart';
import 'package:quiz_guide/question.dart';

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
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
    print(_questionIndex);
  }

  var questions = [
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
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
