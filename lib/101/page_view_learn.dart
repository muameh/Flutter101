import 'package:flutter/material.dart';

class PageViewLearn extends StatelessWidget {
  const PageViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        children: const [
          Image(
              image: AssetImage(
                  'assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png')),
          Image(image: AssetImage("assets/images/workers.png")),
          Image(image: AssetImage("assets/images/rows.png")),
        ],
      ),
    );
  }
}
