import 'package:flutter/material.dart';
import 'package:serbest_calisma/101/list_view_builder_learn.dart';
import 'package:serbest_calisma/101/navigation_learn.dart';
import 'package:serbest_calisma/101/selected_color.dart';
import 'package:serbest_calisma/101/text_field_learn.dart';
import 'package:serbest_calisma/demos/list_view_demo.dart';

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
        home: NavigationLearn());
  }
}
