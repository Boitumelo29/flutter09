import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = "World";

  void changeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, $name!',
                style: TextStyle(fontSize: 24),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                  ),
                  onChanged: (value) => changeName(value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
