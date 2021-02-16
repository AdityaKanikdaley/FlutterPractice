import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Widget card(String path, String name, String sector, String headquarters, String founded){
  return new Card(
    elevation: 0.0,
    color: Colors.transparent.withOpacity(0.1),
    margin: EdgeInsets.all(10.0),
    child: new InkWell(
      onTap: () async {
        debugPrint("card pressed"); },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                new CircleAvatar(
                  radius: 40,
                  child: Container(
                    child: new Image.asset(path, fit: BoxFit.scaleDown),
                ),
                backgroundColor: Colors.transparent,
                 ),

                Container(height: 90,width: 20 ,child: VerticalDivider(color: Colors.black)),
              
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(name, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), maxLines: 1),
                      new Text(sector),
                      new Text(headquarters),
                      new Text(founded),
                      new Text("Click for details"),
                    ],
                  ),
                )
          ]
        ),
      ),
    ),
  );
}