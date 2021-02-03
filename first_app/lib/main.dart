import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rows.dart';



void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my 1st app"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body:
        Column(children: <Widget>[
            r(),
            r(),
            r(),
            r(),
      ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


