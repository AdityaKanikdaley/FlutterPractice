import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Widget card(String path, String title){
  return new Card(
    elevation: 0.0,
    color: Colors.transparent.withOpacity(0.1),
    margin: EdgeInsets.all(10.0),
    child: new InkWell(
      onTap: () {
        debugPrint("card tapped"); },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                new CircleAvatar(
                  radius: 60,
                  child: Container(
                    child: new Image.asset("assets/reliance_market.png", fit: BoxFit.scaleDown),
                ),
                backgroundColor: Colors.transparent,
                 ),

                Container(height: 90,width: 20 ,child: VerticalDivider(color: Colors.black)),
              
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(title, style: TextStyle(fontSize: 18), maxLines: 1,),
                      new Text(title, style: TextStyle(fontSize: 18), maxLines: 1,)

                    ],
                  ),
                )
          ]
        ),
      ),
    ),
  );
}