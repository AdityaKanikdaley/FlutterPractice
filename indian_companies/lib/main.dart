import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indian_companies/categories/industrials.dart';
import 'package:indian_companies/categories/oil_gas.dart';
import 'package:indian_companies/expansionTile.dart';
import 'divider.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {

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
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                    expansionTile("assets/industrial.jpg", "Industrials", industrials),
                    expansionTile("assets/oil & gas.png", "Oil & Gas", oil_gas),

                ],
        ),
      )
    );
  }
}