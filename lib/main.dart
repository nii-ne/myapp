import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Layout",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack Layout Example"),
        ),
        body: Stack(
          alignment: Alignment(0, 0.8),
          children: <Widget>[
            Image.network(
              "https://dog-vs-cat.com/wp-content/uploads/2018/05/nnf2.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "alaskan",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
