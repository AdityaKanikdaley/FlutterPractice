import 'package:flutter/material.dart';

Widget carding(String title, String subtitle, String path) {
  return new Card(
    child: Expanded(
      child: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            Image.asset(path, width: 120, height: 120),
            SizedBox(width: 10),
            Container(
                child: new Column(
              children: <Widget>[
                Text(title,
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                Text(
                    ' Flutter Study Jams are Community-run \n study groups to develop high-quality......',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 12.0)),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    FractionallySizedBox(
                        child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text(subtitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12)),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))))),
                    SizedBox(width: 160),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Icon(Icons.favorite_border, color: Colors.blue),
                    Text(' Add to Favorites',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    SizedBox(width: 60),
                    Text('RSVP',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    ),
  );
}
