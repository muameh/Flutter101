import 'package:flutter/material.dart';

class HelloButtonWithCounter extends StatefulWidget {
  const HelloButtonWithCounter({super.key});

  @override
  State<HelloButtonWithCounter> createState() => _HelloButtonWithCounterState();
}

class _HelloButtonWithCounterState extends State<HelloButtonWithCounter> {
  int _helloButtonCounter = 0;

  void _updateHelloButtonCounter(bool isIncrement) {
    if (isIncrement) {
      _helloButtonCounter++;
    } else {
      _helloButtonCounter--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _updateHelloButtonCounter(true);
      },
      child: Text("Hello  $_helloButtonCounter"),
    );
  }
}
