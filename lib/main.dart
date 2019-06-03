import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row & Column widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row & Column widget Example"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            FlutterLogo(),
            Text(
              "Column 1",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Column 2",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
