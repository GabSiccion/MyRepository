import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  const Output({super.key});

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  TextEditingController output = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Output")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
            child: Row(
          children: <Widget>[
            Flexible(
                child: TextField(
              controller: output,
            ))
          ],
        )),
      ),
    );
  }
}
