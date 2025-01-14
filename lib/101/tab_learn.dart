import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Learn App Bar Title"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "One",
                icon: Icon(Icons.looks_one),
              ),
              Tab(
                text: "Two",
                icon: Icon(Icons.looks_two),
              ),
              Tab(
                text: "Three",
                icon: Icon(Icons.looks_3),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Image(
                image: AssetImage(
                    "assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png")),
            Image(
                image: AssetImage(
                    "assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png")),
            Image(
                image: AssetImage(
                    "assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png")),
          ],
        ),
      ),
    );
  }
}
