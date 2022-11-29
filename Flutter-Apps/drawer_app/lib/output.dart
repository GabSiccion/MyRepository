import 'package:flutter/material.dart';
import 'package:drawer_app/main.dart';

class Output extends StatelessWidget {
  final Data data;

  String display() {
    String stringdata = "";
    for (var element in data.myData) {
      stringdata += "$element \n";
    }
    return stringdata;
  }

  const Output({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Output")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
          child: Text(display()),
        ),
      ),
    );
  }
}
