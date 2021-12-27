import 'package:Quiz/quiz.dart';
import 'package:Quiz/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite animal?',
      'answerText': ['cat', 'dogs', 'elephant', 'sheeps']
    },
    {
      'questionText': 'Whts\'s your favourite color?',
      'answerText': ['Red', 'Orange', 'Blue', 'Pink']
    },
    {
      'questionText': 'What\'s your favourite city?',
      'answerText': ['Patna', 'Agra', 'Kolkata', 'Delhi']
    }
  ];

  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade200,
          appBar: AppBar(
            title: const Text('Personality Quiz'),
            backgroundColor: Colors.pink.shade700,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
