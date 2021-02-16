import 'package:flutter/material.dart';


Widget expansionTile(String path, String title, Function function){
  return
    ExpansionTile(
        leading: CircleAvatar(
          radius: 43,
          child: CircleAvatar(
            backgroundImage: AssetImage(path),
            radius: 40
          ),
        ),
        tilePadding: EdgeInsets.all(10),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        children: <Widget>[
          Container(
            height: 420,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: function()
            ),
          )
        ]
    );
}