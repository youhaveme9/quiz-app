import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    String fscore = resultScore.toString();
    // ignore: dead_code
    return Center(
      child: Column(
        children: [
          Text(
            fscore,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(primary: Colors.blue.shade900),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
