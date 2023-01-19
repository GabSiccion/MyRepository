import 'package:flutter/material.dart';

class PlantListTile extends StatelessWidget {
  final Map plantObject;

  const PlantListTile({super.key, required this.plantObject});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(plantObject['plantName']),
        subtitle: Text(plantObject['plantType']),
      ),
    );
  }
}
