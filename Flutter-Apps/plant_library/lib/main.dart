import 'package:flutter/material.dart';
import 'package:plant_library/plantlisttile.dart';

void main() {
  runApp(const PlantLibraryApp());
}

class PlantLibraryApp extends StatelessWidget {
  const PlantLibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Plant Library'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)), body: ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  final List<Map> _plantList = [
    {
      'iconPath': "assets/images/rose.webp",
      'plantName': 'Rose',
      'plantType': 'Flower',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/rose.webp",
      'plantName': 'Orange',
      'plantType': 'Tree',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _plantList.length,
          itemBuilder: (context, index) {
            Map plantObject = _plantList[index];
            return PlantListTile(
              plantObject: plantObject,
            );
          }),
    );
  }
}
