import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container widget Example"),
        ),
        body: Container(color: Colors.blueGrey, ),
      ),
    );
  }
}
