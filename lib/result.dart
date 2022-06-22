import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetQuiz;

  String get resultPhrase {
    var resultText = 'You did it! Your score is:' + resultScore.toString();

    return resultText;
  }

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Restart'),
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 108, 104, 163),
                primary: Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
    );
  }
}
