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
      'questionText': 'What\'s the latest Nvidia graphic card?',
      'answerText': [
        {'text': 'Nvidia GForce GTX 1650', 'score': 0},
        {'text': 'Nvidia GForce GTX 1080', 'score': 0},
        {'text': 'Nvidia GForce RTX 3080', 'score': 0},
        {'text': 'Nvidia GForce RTX 3090', 'score': 1},
      ]
    },
    {
      'questionText':
          'An electronic tool that allows information to be input, processed, and output is called',
      'answerText': [
        {'text': 'OS', 'score': 0},
        {'text': 'CPU', 'score': 1},
        {'text': 'Motherboard', 'score': 0},
        {'text': 'Mouse', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s the latest generation Intel CPU?',
      'answerText': [
        {'text': '11th', 'score': 0},
        {'text': '14th', 'score': 0},
        {'text': '12th', 'score': 1},
        {'text': '10th', 'score': 0},
      ]
    },
    {
      'questionText': 'Most stable oxidation state of Copper',
      'answerText': [
        {'text': '+1', 'score': 0},
        {'text': '+2', 'score': 1},
        {'text': '-1', 'score': 0},
        {'text': '-2', 'score': 0},
      ]
    },
    {
      'questionText': 'The ratio of radius of first orbit of H, He+, Li2+',
      'answerText': [
        {'text': '1:2:3', 'score': 0},
        {'text': '6:3:2', 'score': 1},
        {'text': '1:4:9', 'score': 0},
        {'text': '9:4:1', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          title: const Text('Quiz'),
          backgroundColor: Colors.pink.shade700,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
