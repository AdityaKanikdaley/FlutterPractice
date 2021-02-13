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
    Color gradientStart = Colors.deepPurple[700];
    Color gradientEnd = Colors.purple[500];

    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Flutter Blog App"),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.search),
                onPressed: () => print('searched')),
            new IconButton(
                icon: new Icon(Icons.add), onPressed: () => print('added'))
          ]),
      drawer: new Drawer(
          child: new ListView(children: <Widget>[
        new UserAccountsDrawerHeader(
            accountName: new Text("Master Android Channel"),
            accountEmail: new Text("Learn Android, Flutter & Codding")),
        new ListTile(
            title: new Text("First Option"),
            leading: new Icon(Icons.cake, color: Colors.purple)),
        new ListTile(
            title: new Text("Second Option"),
            leading: new Icon(Icons.search, color: Colors.redAccent)),
        new ListTile(
            title: new Text("Third Option"),
            leading: new Icon(Icons.cached, color: Colors.orange)),
        new ListTile(
            title: new Text("Forth Option"),
            leading: new Icon(Icons.menu, color: Colors.green)),
        new Divider(
          height: 10.0,
          color: Colors.black,
        ),
        new ListTile(
          title: new Text("Close"),
          trailing: new Icon(Icons.close),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ])),
      body: new Container(
          decoration: BoxDecoration(
              gradient: new LinearGradient(
            colors: [gradientStart, gradientEnd],
            begin: const FractionalOffset(0.5, 0.0),
            end: const FractionalOffset(0.0, 0.5),
            stops: [0.0, 0.1],
          )),
          child: new ListView(children: <Widget>[
            new Card(
                elevation: 0.0,
                color: Colors.transparent.withOpacity(0.1),
                margin: EdgeInsets.all(10.0),
                child: new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new CircleAvatar(
                          child: new Text("M"),
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.black,
                        ),

                        // divider
                        new SizedBox(
                          width: 6.0,
                        ),

                        // container of text
                        new Container(
                            width: 210,
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // adding click events
                                  new InkWell(
                                      child: new Text("hiii",
                                          style: TextStyle(
                                              fontSize: 22.0,
                                              color: Colors.white),
                                          maxLines: 1),
                                      onTap: () {
                                        debugPrint("1st clicked");
                                      }),
                                  new Text("Aditya Kanikdaley"),
                                ]))
                      ],
                    )))
          ])),
    );
  }
}
