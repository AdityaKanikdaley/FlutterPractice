import 'package:flutter/material.dart';


Widget expansionTile(String path, String title, Function function){
  return
    ExpansionTile(
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(path)),
        tilePadding: EdgeInsets.all(10),
        title: Text(title),
        children: <Widget>[
          Container(
            height: 400,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: function()
            ),
          )
        ]
    );
}