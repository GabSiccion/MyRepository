import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Calculate Total Weight Price!';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const calculateapp(),
      ),
    );
  }
}

class calculateapp extends StatefulWidget {
  const calculateapp({super.key});

  @override
  _CalculateAppState createState() => _CalculateAppState();
}

class _CalculateAppState extends State<calculateapp> {
  TextEditingController price = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController total = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Text("Price: "),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: price,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Weight: "),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: weight,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Total: "),
            Flexible(
                child: TextField(
              keyboardType: TextInputType.number,
              controller: total,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(height: 15),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Get Price"),
              onPressed: () {
                setState(() {
                  price.text =
                      "${double.parse(total.text) / double.parse(weight.text)}";
                });
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Get Weight"),
              onPressed: () {
                setState(() {
                  weight.text =
                      "${double.parse(total.text) / double.parse(price.text)}";
                });
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Get Total"),
              onPressed: () {
                setState(() {
                  total.text =
                      "${double.parse(price.text) * double.parse(weight.text)}";
                });
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Clear"),
              onPressed: () {
                setState(() {
                  price.text = "";
                  weight.text = "";
                  total.text = "";
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
