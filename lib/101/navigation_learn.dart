import 'package:flutter/material.dart';
import 'package:serbest_calisma/101/navigate_detail.dart';
import 'package:serbest_calisma/101/selected_color.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  final Map<int, Color> buttonColors = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation Learn")),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final color = buttonColors[index] ?? Colors.blue;
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
              child: ElevatedButton(
                onPressed: () async {
                  // Detay ekranına git ve geri dönen sonucu al
                  final result = await navigateToWidget(
                    context,
                    const NavigateDetailLearnState(),
                  );
                  if (result == true) {
                    // Eğer geri dönüş "true" ise rengi yeşile çevir
                    setState(() {
                      buttonColors[index] = Colors.green;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: color, // Rengi ata
                ),
                child: Text("$index"),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.fork_right),
        onPressed: () {
          navigateToWidget(context, const NavigateDetailLearnState());
        },
      ),
    );
  }
}

mixin NavigatorManager {
  Future<dynamic> navigateToWidget(BuildContext context, Widget widget) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
