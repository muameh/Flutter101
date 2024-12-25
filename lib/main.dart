import 'package:flutter/material.dart';
import 'package:serbest_calisma/demos.dart';
import 'package:serbest_calisma/statefull_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: StatefullLearnState(),
    );
  }
}
