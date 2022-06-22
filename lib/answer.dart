import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: TextButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Color.fromARGB(255, 108, 104, 163),
        ),
      ),
    );
  }
}
