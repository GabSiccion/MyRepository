import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:plant_library/plantListTile.dart';

void main() {
  runApp(const PlantLibraryApp());
}

class PlantLibraryApp extends StatelessWidget {
  const PlantLibraryApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        appBar: AppBar(title: Text(widget.title)),
        body: ListView(
          children: const [
            PlantListTile(
                iconPath: "asd",
                plantTitle: "My 1st plant title",
                plantSubtitle: "My 1st plant subtitle"),
            PlantListTile(
                iconPath: "asd",
                plantTitle: "My 2nd plant title",
                plantSubtitle: "My 2nd plant subtitle")
          ],
        ));
  }
}
