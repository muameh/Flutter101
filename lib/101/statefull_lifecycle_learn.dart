import 'package:flutter/material.dart';

class StatefullLifeCycleLearnState extends StatefulWidget {
  const StatefullLifeCycleLearnState({super.key, required this.number});
  final int number;

  @override
  State<StatefullLifeCycleLearnState> createState() =>
      _StatefullLifeCycleLearnStateState();
}

class _StatefullLifeCycleLearnStateState
    extends State<StatefullLifeCycleLearnState> {
  late final bool _isOdd;
  late final String _message;

  @override
  void initState() {
    super.initState();

    _isOdd = widget.number % 2 == 1; // Tek veya çift hesaplama
    _message = _isOdd ? 'Tek Sayı' : 'Çift Sayı'; // Direkt atama
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.number.toString())),
      body: Center(child: Text(_message)),
    );
  }
}
