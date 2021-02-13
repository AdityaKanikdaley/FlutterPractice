import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


class MyItem {
  bool isExpanded;
  final String header;
  final Widget body;

  MyItem(this.isExpanded, this.header, this.body);
}


class _State extends State<MyApp> {

  List<MyItem> _items = new List<MyItem>();

  // @override
  // void initState() {
  //   _items.add()
  //
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Indian Companies'),
        actions: [
          IconButton(
              onPressed: () => debugPrint('searched button clicked'),
              icon: Icon(Icons.search))
        ],
      ),

      drawer: new Drawer(
        child: ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("Aditya Kanikdaley"),
              currentAccountPicture: CircleAvatar(
                     backgroundImage: AssetImage("assets/me.jpg")),
              accountEmail: new Text("adikanikdaley@gmail.com")),
          new ListTile(
              title: new InkWell(
                  child: Text("Credits"),
                  onTap: () {
                    debugPrint("credits clicked");
                  },
              ),
              leading: new Icon(Icons.adb, color: Colors.purple)),
          new ListTile(
            title: new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          new Divider(
            height: 10.0,
            color: Colors.black,
          ),
        ],),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Add Widgets Here')
          ],
        ),
      ),
    );
  }
}