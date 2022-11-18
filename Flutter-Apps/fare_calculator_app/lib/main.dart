import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fare Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Fare Calculator'),
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
  TextEditingController start = TextEditingController();
  TextEditingController end = TextEditingController();
  TextEditingController distance = TextEditingController();
  TextEditingController fare = TextEditingController();

  void calculatefare(bool regular) {
    setState(() {
      var dis = double.parse(end.text) - double.parse(start.text);
      distance.text = "Distance: $dis";

      double val = 13; //Minimum Fare

      if (dis > 5) {
        val = (dis - 5) + val;
      }

      if (regular) {
        //Regular
        fare.text = "Fare: $val";
      } else {
        //Discounted
        fare.text = "Fare: ${val * 0.8}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter start distance',
                        ),
                        keyboardType: TextInputType.number,
                        controller: start,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter end distance',
                        ),
                        keyboardType: TextInputType.number,
                        controller: end,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        enabled: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder(),
                          hintText: 'Distance',
                        ),
                        controller: distance,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                        enabled: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder(),
                          hintText: 'Fare',
                        ),
                        controller: fare,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 10),
                    ElevatedButton(
                      child: const Text("Regular"),
                      onPressed: () {
                        setState(() {
                          calculatefare(true);
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      child: const Text("Discount"),
                      onPressed: () {
                        setState(() {
                          calculatefare(false);
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      child: const Text("Clear"),
                      onPressed: () {
                        setState(() {
                          start.text = "";
                          end.text = "";
                          distance.text = "";
                          fare.text = "";
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
