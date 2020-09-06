import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Du bist super!';
    } else if (resultScore <= 12) {
      resultText = 'Du bist gut!';
    } else if (resultScore <= 16) {
      resultText = 'Du bist okay!';
    } else {
      resultText = 'Du bist nicht so gut!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
