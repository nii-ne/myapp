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
          children: <Widget>[
            FlutterLogo(
              size: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Artit",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Attasiri")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
