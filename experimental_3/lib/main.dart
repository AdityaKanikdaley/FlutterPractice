import 'package:flutter/material.dart';
import 'cards.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.table_rows_rounded),
            Text("#FlutterEverywhere"),
            Icon(Icons.search)
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          carding("Flutter Study Jam #1", "study jam", "images/jam.jpg"),
          carding("Flutter Conference    \n2021", "conference",
              "images/conference.png"),
          carding("Flutter Study Jam + \nGCP", "study jam", "images/jam.jpg"),
          carding("Animations in Flutter", "animation", "images/animation.jpg"),
          carding("Ripple Animations in \nFlutter", "animation",
              "images/ripple.jpg"),
        ],
      ),
    );
  }
}
