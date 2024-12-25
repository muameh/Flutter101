import 'package:flutter/material.dart';
import 'package:serbest_calisma/product/counter_hello_button.dart';

class StatefullLearnState extends StatefulWidget {
  const StatefullLearnState({super.key});

  @override
  State<StatefullLearnState> createState() => _StatefullLearnStateState();
}

class _StatefullLearnStateState extends State<StatefullLearnState> {
  int _counter = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _counter++;
    } else {
      _counter--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Statefull Learn State",
          style: TextStyle(color: Colors.yellow.shade900),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikey eksende ortalar
          crossAxisAlignment:
              CrossAxisAlignment.center, // Yatay eksende ortalar
          children: [
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.yellow.shade900, fontWeight: FontWeight.w600),
            ),
            const HelloButtonWithCounter(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          _IncButton(),
          _decButton(),
        ]),
      ),
    );
  }

  FloatingActionButton _decButton() {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }

  Padding _IncButton() {
    print("hello");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
