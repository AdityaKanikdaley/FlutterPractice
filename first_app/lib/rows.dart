import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget r(){
  return
    Row(children: <Widget>[

      SizedBox(height: 100,),
      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.cyan,
          child: Text('5',textAlign: TextAlign.center),
        ),
      ),

      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.pink,
          child: Text('6',textAlign: TextAlign.center),
        ),
      ),

      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.amber,
          child: Text('7',textAlign: TextAlign.center),
        ),
      ),

      SizedBox(width: 10),
      Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.green,
            child: Text('8',textAlign: TextAlign.center),
          )
      ),
      SizedBox(width: 10),
       ],
    );
}