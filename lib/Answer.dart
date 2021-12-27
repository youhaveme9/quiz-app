import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Colors.deepPurple.shade300),
        ),
      ),
    );
  }
}
