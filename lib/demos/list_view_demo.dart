import 'package:flutter/material.dart';
import 'package:serbest_calisma/demos/demos.dart';
import 'package:serbest_calisma/product/project_images/ProjectImages.dart';

class MyCollectionsDemosState extends StatefulWidget {
  const MyCollectionsDemosState({super.key});

  @override
  State<MyCollectionsDemosState> createState() =>
      _MyCollectionsDemosStateState();
}

class _MyCollectionsDemosStateState extends State<MyCollectionsDemosState> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionList().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collections Demos"),
        actions: const [],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({required CollectionModel model}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                _model.imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_model.title),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('\$${_model.price.toString()} eth'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String title;
  final String imagePath;
  final double price;

  CollectionModel(
      {required this.title, required this.imagePath, required this.price});
}

class CollectionList {
  late final List<CollectionModel> items;

  CollectionList() {
    items = [
      CollectionModel(
          title: "book 1", imagePath: ProjectsImages.image_books, price: 10),
      CollectionModel(
          title: "book 2", imagePath: ProjectsImages.image_books, price: 20),
      CollectionModel(
          title: "book 3", imagePath: ProjectsImages.image_books, price: 30),
      CollectionModel(
          title: "book 4", imagePath: ProjectsImages.image_books, price: 40),
      CollectionModel(
          title: "book 5", imagePath: ProjectsImages.image_books, price: 50),
    ];
  }
}
