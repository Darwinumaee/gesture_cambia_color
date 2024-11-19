import 'package:flutter/material.dart';

void main() {
  runApp(const ChangeColorApp());
}

class ChangeColorApp extends StatelessWidget {
  const ChangeColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Cambio de Color',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ChangeColorPage(),
    );
  }
}

class ChangeColorPage extends StatefulWidget {
  const ChangeColorPage({super.key});

  @override
  ChangeColorPageState createState() => ChangeColorPageState();
}

class ChangeColorPageState extends State<ChangeColorPage> {
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  void changeColor(int index) {
    setState(() {
      colors[index] = Color((colors[index].value + 0x00202020) % 0xFFFFFFFF);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => changeColor(0),
                    child: Container(color: colors[0]),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => changeColor(1),
                    child: Container(color: colors[1]),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => changeColor(2),
                    child: Container(color: colors[2]),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => changeColor(3),
                    child: Container(color: colors[3]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
