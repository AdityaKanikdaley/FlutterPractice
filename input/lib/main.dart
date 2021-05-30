import 'dart:html';
import 'dart:ui';

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

  String value = "";
  TextEditingController ectrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Some texts'),
            new TextField(
              controller: ectrl,
              decoration: new InputDecoration(hintText: "Add something",
                  fillColor: Colors.green,
                  alignLabelWithHint: true,
                  focusColor: Colors.red,
                  hoverColor: Colors.purpleAccent,
                  suffixIcon: Icon(Icons.arrow_drop_down_circle_outlined),
                  prefixIcon: Icon(Icons.delete),
                  prefix: Text("preffix"),
                  suffix: Text("suffix"),
                  semanticCounterText: "sctext",


              ),
              onChanged: (String text){
                setState(() {
                  print("output: $text");
                  // value = text;
                });
              },
              onSubmitted: (String text){
                setState(() {
                  value = text;
                });
              },
            ),
            new Text("\n\n\n\noutput: $value")
          ],
        ),
      ),
    );
  }
}
