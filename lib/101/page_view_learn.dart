import 'package:flutter/material.dart';
import 'package:serbest_calisma/product/project_images/ProjectImages.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);

  int _currentPageIndex = 0;

  void _updatePageIndex(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: const [
          Image(image: AssetImage(ProjectsImages.image_books)),
          Image(image: AssetImage(ProjectsImages.image_rows)),
          Image(image: AssetImage(ProjectsImages.image_workers)),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(_currentPageIndex.toString()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              child: const Icon(Icons.arrow_left),
              onPressed: () {
                _pageController.previousPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.slowMiddle);
              },
            ),
          ),
          FloatingActionButton(
            child: const Icon(Icons.arrow_right),
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.slowMiddle);
            },
          ),
        ],
      ),
    );
  }
}
