import 'package:flutter/material.dart';

class ColorStateLearn extends StatefulWidget {
  const ColorStateLearn({super.key});

  @override
  State<ColorStateLearn> createState() => _ColorStateLearnState();
}

class _ColorStateLearnState extends State<ColorStateLearn> {
  String index = "0";
  Color backgroundColor = Colors.red;

  void _updateIndex(currentIndex) {
    setState(() {
      index = currentIndex.toString();
      if (currentIndex == 0) {
        backgroundColor = Colors.red;
      } else if (currentIndex == 1) {
        backgroundColor = Colors.green;
      } else {
        backgroundColor = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("app bar title"),
        backgroundColor: backgroundColor,
      ),
      body: Center(child: Text(index)),
      bottomNavigationBar:
          BottomNavigationBar(onTap: _updateIndex, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.green), label: "Green"),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
      ]),
    );
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: color,
    );
  }
}