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
      'plantName': 'ROSE',
      'plantScientificName': 'Rosa rubiginosa',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/lily.webp",
      'plantName': 'LILY',
      'plantScientificName': 'Lilium',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/tulip.webp",
      'plantName': 'TULIP',
      'plantScientificName': 'Tulipa',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/orchid.webp",
      'plantName': 'ORCHID',
      'plantScientificName': 'Phalaenopsis',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/carnation.webp",
      'plantName': 'CARNATION',
      'plantScientificName': 'Dianthus',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/freesia.webp",
      'plantName': 'FREESIA',
      'plantScientificName': 'Freesia',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/hyacynth.webp",
      'plantName': 'HYACINTH',
      'plantScientificName': 'Alstroemeria',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/peruvian_lily.webp",
      'plantName': 'PERUVIAN LILY',
      'plantScientificName': 'Alstroemeria',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/chrysanthemum.webp",
      'plantName': 'CHRYSANTHEMUM',
      'plantScientificName': 'Chrysanthemum',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/gladiolus.webp",
      'plantName': 'GLADIOLUS',
      'plantScientificName': 'Gladiolus',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/anemone.webp",
      'plantName': 'ANEMONE',
      'plantScientificName': 'Anemone',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/daffodil.webp",
      'plantName': 'DAFFODIL',
      'plantScientificName': 'Narcissus',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/poppy.webp",
      'plantName': 'POPPY',
      'plantScientificName': 'Papaver',
      'plantDescriptions': ['Description 1', 'Description 2']
    },
    {
      'iconPath': "assets/images/sunflower.webp",
      'plantName': 'SUNFLOWER',
      'plantScientificName': 'Helianthus',
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
