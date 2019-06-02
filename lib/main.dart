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
        body: Container(
          //color: Colors.blueGrey,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          constraints: BoxConstraints.expand(width: 150),
          alignment: Alignment.topCenter,
          child: Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  width: 15, color: Colors.amber, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.green],
                  begin: Alignment.topCenter)),
        ),
      ),
    );
  }
}
