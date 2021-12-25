// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion1() {
    setState(() {
      questionIndex += 1;
    });
    print('Answer 1');
  }

  void answerQuestion2() {
    setState(() {
      questionIndex += 1;
    });
    print('Answer 2');
  }

  void answerQuestion3() {
    setState(() {
      questionIndex += 1;
    });
    print('Answer 3');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite animal?',
      'Whts\'s your favourite color?',
      'What\'s your favourite city?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
          backgroundColor: Colors.pink.shade700,
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion1,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion2,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion3,
            ),
          ],
        ),
      ),
    );
  }
}
