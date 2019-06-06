import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Layout Circle Avatar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack Layout Circle Avatar Example"),
        ),
        body: Stack(
          alignment: Alignment(
            0.6,
            0.6,
          ),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://dog-vs-cat.com/wp-content/uploads/2018/05/nnf3.jpg"),
              radius: 100,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "Alaskan",
                style: TextStyle(
                    fontSize: 17,
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
