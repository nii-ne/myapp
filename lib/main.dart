import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Horizontal",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Horizontal Example"),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              alignment: FractionalOffset.center,
              width: 150,
              color: Colors.red,
              child: Text("RED",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            Container(
              alignment: FractionalOffset.center,
              width: 150,
              color: Colors.green,
              child: Text("GREEN",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            Container(
              alignment: FractionalOffset.center,
              width: 150,
              color: Colors.blue,
              child: Text("BLUE",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            Container(
              alignment: FractionalOffset.center,
              width: 150,
              color: Colors.yellow,
              child: Text("YELLOW",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
            Container(
              alignment: FractionalOffset.center,
              width: 150,
              color: Colors.grey,
              child: Text("GREY",style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
