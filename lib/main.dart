import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Widget",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  String _inputMessage;
  String _inputAuthor;
  List<Record> lists = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Example"),
      ),
      body: Column(children: <Widget>[
        Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Message'),
                onSaved: (String value) {
                  _inputMessage = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Author'),
                onSaved: (String value) {
                  _inputAuthor = value;
                },
              ),
              RaisedButton(
                onPressed: () {
                  _formkey.currentState.save();
                  setState(() {
                    lists.insert(0, Record(_inputMessage, _inputAuthor));
                  });
                  print(_inputMessage);
                  _formkey.currentState.reset();
                },
                child: Text("Enter"),
              ),
            ],
          ),
        ),
        Expanded(
          child: lists.length == 0
              ? Center(
                  child: Text('Empty'),
                )
              : ListView.builder(
                  itemCount: lists.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RecordCard(
                        lists[index].message, lists[index].author);
                  },
                ),
        ),
      ]),
    );
  }
}

class RecordCard extends StatelessWidget {
  final String _message;
  final String _author;
  const RecordCard(this._message, this._author, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Column(
        children: <Widget>[Text(_message, style: TextStyle(fontSize: 25),), Text(_author,style: TextStyle(fontStyle: FontStyle.italic),)],
      ),
    );
  }
}

class Record {
  final String message;
  final String author;
  Record(this.message, this.author);
}
