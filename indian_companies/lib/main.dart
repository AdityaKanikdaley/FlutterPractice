import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indian_companies/carding.dart';
import 'package:indian_companies/credits.dart';
import 'divider.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  //routing
  final routes = <String, WidgetBuilder>{
    creditsClass.tag: (context) => creditsClass(),
  };

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
        child: divider(context)
      ),
      body: new Container(
              child: ListView(children: <Widget>[
                card('assets/reliance_market.png', 'Reliance market'),
              ],
        ),
      )
    );
  }
}