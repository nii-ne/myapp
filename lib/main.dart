import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded Example"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Text(
                  "Iphone XS 64 GB Color:Gray",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              )),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("view"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
