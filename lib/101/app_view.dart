import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});
  final String _appBarTitle = 'Book Store';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.yellow.shade900,
        title: Text(_appBarTitle, style: const TextStyle(color: Colors.white)),
        leading: const Icon(Icons.menu, color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
                image: Image.asset(
                        'assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png')
                    .image),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow.shade900,
        onPressed: () {
          print('FloatingActionButton Pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Images extends StatelessWidget {
  const _Images();

  @override
  Widget build(BuildContext context) {
    return Image(
        image: Image.asset(
                'assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png')
            .image);
  }
}
