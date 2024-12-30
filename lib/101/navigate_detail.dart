import 'package:flutter/material.dart';

class NavigateDetailLearnState extends StatefulWidget {
  const NavigateDetailLearnState({super.key});

  @override
  State<NavigateDetailLearnState> createState() =>
      _NavigateDetailLearnStateState();
}

class _NavigateDetailLearnStateState extends State<NavigateDetailLearnState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigate Detail Learn"),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: const Icon(Icons.check),
          label: const Text("Checked"),
        ),
      ),
    );
  }
}
