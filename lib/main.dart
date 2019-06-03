import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic ListView 2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic ListView 2 Example"),
        ),
        body: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.directions_railway),
            title: Text("08:00"),
            subtitle: Text("BKK - CNX"),
            enabled: true,
            onTap: () {
              print("click");
            },
            trailing: Icon(Icons.notifications_none),
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.directions_bus),
            title: Text("18:00"),
            subtitle: Text("CNX - BKK"),
            trailing: Icon(Icons.notifications_none),
          ),
          ListTile(
            leading: Icon(Icons.directions_boat),
            title: Text("09:00"),
            subtitle: Text("BKK - CNX"),
            trailing: Icon(Icons.notifications_none),
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text("17:00"),
            subtitle: Text("BKK - CNX"),
            trailing: Icon(Icons.notifications_none),
          ),
          ListTile(
            leading: Icon(Icons.directions_bike),
            title: Text("03:00"),
            subtitle: Text("BKK - CNX"),
            trailing: Icon(Icons.notifications_none),
          ),
        ]),
      ),
    );
  }
}
