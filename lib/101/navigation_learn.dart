import 'package:flutter/material.dart';
import 'package:serbest_calisma/101/selected_color.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Learn")),
      body: const Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.fork_right),
        onPressed: () {
          NavigatorManager().navigateToWidget(context, const ColorStateLearn());
        },
      ),
    );
  }
}

class NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
