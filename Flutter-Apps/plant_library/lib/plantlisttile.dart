import 'package:flutter/material.dart';

class PlantListTile extends StatelessWidget {
  final Map plantObject;

  const PlantListTile({super.key, required this.plantObject});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image(image: AssetImage(plantObject['iconPath'])),
        title: Text(
          plantObject['plantName'],
          style:
              const TextStyle(color: Colors.green, fontWeight: FontWeight.w900),
        ),
        subtitle: Text(
          // ignore: prefer_interpolation_to_compose_strings
          'Scientific name: ' + plantObject['plantScientificName'],
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
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
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    'Scientific name: ' + plantObject['plantScientificName'],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    plantObject['plantDescriptions'],
                    style: const TextStyle(fontSize: 18),
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
