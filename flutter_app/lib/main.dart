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

  List<bool> _states = List();
  @override
  void initState() {
    super.initState();
    _states.addAll([false, false, false, false, false]);
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: ListView(
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool value) {
                setState(() {
                  for (int i = 0; i < _states.length; i++) {
                    if (i != index) {
                      _states[i] = false;
                    }
                  }
                  _states[index] = !_states[index];
                });
              },
              children: [
                ExpansionPanel(
                  isExpanded: _states[0],
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        leading: Icon(Icons.launch),
                        title: Text("text"),
                      ),
                  body: ListTile(
                    leading: SizedBox(),
                    title: Text("text 2"),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _states[1],
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        leading: Icon(Icons.launch),
                        title: Text("text"),
                      ),
                  body: Column(
                    children: <Widget>[
                      ListTile(
                        leading: SizedBox(),
                        title: Text("Text 1"),
                      ),
                      ListTile(
                        leading: SizedBox(),
                        title: Text("text"),
                      ),
                      ListTile(
                        leading: SizedBox(),
                        title: Text("textCode"),
                      ),
                      ListTile(
                        leading: SizedBox(),
                        title: Text("Text"),
                      ),
                    ],
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _states[2],
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        leading: Icon(Icons.launch),
                        title: Text("Text"),
                      ),
                  body: Column(
                    children: <Widget>[
                      ListTile(
                        leading: SizedBox(),
                        title: Text("Text"),
                      )
                    ],
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _states[3],
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        leading: Icon(Icons.launch),
                        title: Text("Another"),
                      ),
                  body: Column(
                    children: <Widget>[
                      ListTile(
                        leading: SizedBox(),
                        title: Text("Text"),
                      )
                    ],
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _states[4],
                  headerBuilder: (BuildContext context, bool isExpanded) =>
                      ListTile(
                        leading: Icon(Icons.launch),
                        title: Text("Text"),
                      ),
                  body: Column(
                    children: <Widget>[
                      ListTile(
                        leading: SizedBox(),
                        title: Text("Text"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}

