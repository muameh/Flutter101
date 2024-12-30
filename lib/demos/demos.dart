import 'package:flutter/material.dart';

class NotesDemos extends StatelessWidget {
  const NotesDemos({super.key});
  final String title = 'Create your first book';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[30],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[30],
      ),
      body: Padding(
        padding: _pagePaddings.horizontalPadding,
        child: Column(children: [
          _pageImages(path: _pageImagesPaths.books),
          _textWidget(title: title),
          Padding(
            padding: _pagePaddings.verticalPadding,
            child: const _subtitleWidget(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5, top: 40, left: 10, right: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )),
                onPressed: () {},
                child: const SizedBox(
                    height: 50,
                    child: Center(
                        child: Text(
                      'Create a Note',
                      style: TextStyle(color: Colors.white),
                    )))),
          ),
          TextButton(
              onPressed: () {},
              child: const Text('Skip',
                  style: TextStyle(
                      color: Colors.black, fontStyle: FontStyle.normal))),
          const Spacer()
        ]),
      ),
    );
  }
}

class _subtitleWidget extends StatelessWidget {
  const _subtitleWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      "lorem ipsum dolor sit amet consectetur adipiscing elit" * 3,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
    );
  }
}

class _textWidget extends StatelessWidget {
  const _textWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: Colors.yellow.shade900, fontWeight: FontWeight.w600),
    );
  }
}

class _pagePaddings {
  static EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 10);
}

class _pageImagesPaths {
  static String books =
      'assets/images/pngtree-watercolor-library-book-clip-art-png-image_10285452.png';
}

class _pageImages extends StatelessWidget {
  const _pageImages({required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover);
  }
}
