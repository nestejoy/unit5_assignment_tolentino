import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int num1 = 0;
  int num2 = 0;
  int sum = 0;
  int dif = 0;
  int pro = 0;
  int quo = 0;

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  @override
  void dispose() {
    num1Controller.dispose();
    num2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num1Controller,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num1 = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " + ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num2Controller,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num2 = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $sum',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        sum = num1 + num2;
                      });
                    },
                    icon: const Icon(Icons.add)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1Controller.clear();
                        num2Controller.clear();
                        sum = 0;
                        num1 = 0;
                        num2 = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num1Controller,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num1 = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " - ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num2Controller,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num2 = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $dif',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        dif = num1 - num2;
                      });
                    },
                    icon: const Icon(Icons.remove)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1Controller.clear();
                        num2Controller.clear();
                        dif = 0;
                        num1 = 0;
                        num2 = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num1Controller,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num1 = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " x ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num2Controller,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num2 = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $pro',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        pro = num1 * num2;
                      });
                    },
                    icon: const Icon(Icons.close)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1Controller.clear();
                        num2Controller.clear();
                        pro = 0;
                        num1 = 0;
                        num2 = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num1Controller,
                    decoration:
                        const InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num1 = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      " ÷ ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: num2Controller,
                    decoration:
                        const InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (value) {
                      setState(() {
                        num2 = int.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      ' = $quo',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (num2 != 0) {
                          quo = num1 ~/ num2;
                        } else {
                          print("Error: Division by zero");
                        }
                      });
                    },
                    icon: const FaIcon(FontAwesomeIcons.divide)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num1Controller.clear();
                        num2Controller.clear();
                        quo = 0;
                        num1 = 0;
                        num2 = 0;
                      });
                    },
                    child: const Text("Clear"))
              ],
            )
          ],
        ),
      ),
    );
  }
}