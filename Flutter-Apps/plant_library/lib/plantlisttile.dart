import 'package:flutter/material.dart';

class PlantListTile extends StatelessWidget {
  final Map plantObject;

  const PlantListTile({super.key, required this.plantObject});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image(image: AssetImage(plantObject['iconPath'])),
        title: Text(plantObject['plantName']),
        subtitle:
            // ignore: prefer_interpolation_to_compose_strings
            Text('Scientific name: ' + plantObject['plantScientificName']),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlantWindow(plantObject: plantObject)));
        },
      ),
    );
  }
}

class PlantWindow extends StatelessWidget {
  final Map plantObject;

  const PlantWindow({super.key, required this.plantObject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plantObject['plantName']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Image(image: AssetImage(plantObject['iconPath'])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    plantObject['plantName'],
                    style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    plantObject['plantScientificName'],
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    plantObject['plantDescriptions'],
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
