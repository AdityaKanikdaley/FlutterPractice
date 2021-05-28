import 'package:db1_sqflite/dbhelper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Database'),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        color: Colors.black87,
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async{
                  int i = await DatabaseHelper.instance.insert({
                    DatabaseHelper.columnName: 'Aditya'  // insert value
                  });
                  print('the inserted id is $i');
                },
                child: Text("Insert", style: TextStyle(color: Colors.white)),
                color: Colors.purpleAccent,
              ),
              RaisedButton(
                onPressed: () async{
                  List<Map<String, dynamic>> queryrows = await DatabaseHelper.instance.queryallrows();  // just prints all values in List form
                  print(queryrows);
                },
                child: Text("Query", style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: () async{
                  int updatedId = await DatabaseHelper.instance.update({
                    DatabaseHelper.columnID: 2,           // id to where value is
                    DatabaseHelper.columnName: 'Tejas'   // value to update
                  });
                  print(updatedId);
                },
                child: Text("Update", style: TextStyle(color: Colors.white)),
                color: Colors.brown,
              ),
              RaisedButton(
                onPressed: () async{
                  int rowsAffected = await DatabaseHelper.instance.delete(2);  //delete value at id 2
                  print(rowsAffected);
                },
                child: Text("Delete", style: TextStyle(color: Colors.white)),
                color: Colors.deepOrangeAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
