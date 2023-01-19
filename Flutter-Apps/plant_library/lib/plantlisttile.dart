import 'package:flutter/material.dart';

class PlantListTile extends StatelessWidget {
  const PlantListTile(
      {super.key,
      required this.iconPath,
      required this.plantTitle,
      required this.plantSubtitle});

  final String iconPath;
  final String plantTitle;
  final String plantSubtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(
          size: 56,
        ),
        title: Text(plantTitle),
        subtitle: Text(plantSubtitle),
      ),
    );
  }
}
