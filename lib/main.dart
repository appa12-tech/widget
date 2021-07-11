import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = "Nothing now ";
  void _onClick() => value = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text(value),
                IconButton(
                    onPressed: _onClick,
                    icon: Icon(Icons.timer),
                    tooltip: "Click me"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
