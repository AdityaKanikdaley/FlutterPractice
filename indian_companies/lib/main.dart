import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indian_companies/categories/airlines.dart';
import 'package:indian_companies/categories/automobiles.dart';
import 'package:indian_companies/categories/banks.dart';
import 'package:indian_companies/categories/broadcast_entertain.dart';
import 'package:indian_companies/categories/buildingMaterials.dart';
import 'package:indian_companies/expansionTile.dart';
import 'drawer.dart';

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
        // actions: [
        //   IconButton(
        //       onPressed: () => debugPrint('searched button clicked'),
        //       icon: Icon(Icons.search))
        // ],
      ),

      drawer: new Drawer(
        child: drawer(context)
      ),
      body: new Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                    // expansionTile("assets/headLogo/industrial.jpg", "Industrials", industrials),
                    // expansionTile("assets/headLogo/oil & gas.png", "Oil & Gas", oil_gas),
                    expansionTile("assets/headLogo/airlines.png", "Airlines", context, airlines),
                    expansionTile("assets/headLogo/banks.jpg", "Banks", context, banks),
                    expansionTile("assets/headLogo/buildingMaterials.jpg", "Building Materials", context, buildingMaterials),
                    expansionTile("assets/headLogo/broadcast.png", "Broadcast & Entertainment", context, broadcasting),
                    expansionTile("assets/headLogo/automobiles.png", "Automobiles", context, automobiles),

                ],
        ),
      )
    );
  }
}