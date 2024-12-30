import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "List View",
        ),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
            child: _ListTile(index: index),
          );
        }),
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({super.key, required this.index});

  final int index;
  Color get _randomColor => Colors.primaries[index % Colors.primaries.length];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: Colors.white,
      tileColor: _randomColor,
      onTap: () {},
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      leading: const Icon(Icons.abc),
      title: Text(
        index.toString(),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
