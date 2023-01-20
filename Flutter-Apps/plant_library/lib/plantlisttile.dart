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
      ),
    );
  }
}
