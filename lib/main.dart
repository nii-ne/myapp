import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid View",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grid View Example"),
          ),
          body: GridView.extent(
            maxCrossAxisExtent: 150,
            padding: EdgeInsets.all(8),
            children: _buildGridList(20),
          )),
    );
  }

  List<Card> _buildGridList(int i) {
    return List.generate(
        i,
        (index) => Card(
              child: Image.network(
                "http://hobby-play.com/wp-content/uploads/2016/08/ban160456.jpg",
                fit: BoxFit.cover,
              ),
            ));
  }
}
