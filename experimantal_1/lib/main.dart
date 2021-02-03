import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
        Column(children: <Widget>[
          Image(
            image: AssetImage('images/adi.jpg'),
          ),

          SizedBox(height: 20.0,),

          Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20.0),
                  child: Text(
                    "Oeschinen Lake Campground",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                    ),
                  ),
                ),
            Column(children: <Widget>[
              SizedBox(height: 25.0),
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, top: 30.0),),
                  Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                  Text("41")

                ],
                ),

            ],
            )
          ],
          ),

          SizedBox(height: 4.0,),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Kandersteg, Switzerland",
              style: TextStyle(
                color: Colors.grey,
              ),),
            ),
          ],
          ),

          SizedBox(height: 30.0,),

          Padding(
            padding: const EdgeInsets.all(55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                  Column(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.call),
                      onPressed: () => print("called"),
                      color: Colors.blueAccent,
                      iconSize: 35.0,
                    ),
                    Text("Call", style: TextStyle(color: Colors.blueAccent),)
                  ],),

              SizedBox(width: 50.0,),

                    Column(children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () => print("routing"),
                        color: Colors.blueAccent,
                        iconSize: 35.0,
                      ),
                      Text("Route", style: TextStyle(color: Colors.blueAccent),)
                    ],),

              SizedBox(width: 50.0,),

                      Column(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () => print("shared"),
                          color: Colors.blueAccent,
                          iconSize: 35.0,
                        ),
                        Text("Share", style: TextStyle(color: Colors.blueAccent),)
                      ],),

            ],
            ),
          ),

          SizedBox(height: 15.0),

          Padding(padding: EdgeInsets.all(30.0),
            child: Text("Oeschinen Lake or Oeschinensee as the Swiss call it, "
                "is one of the best lakes in Switzerland, if not on the earth."
                " Oeschinen Lake lies in the Kandertal valley in Bernese Oberland "
                "region of Switzerland. If you love swimming, rowing, fishing and "
                "a barbeque by the lake, or just the breathtaking Alpine views, "
                "then this place must be on top of your Switzerland Bucketlist. ",
                  style: TextStyle(
                    fontSize: 16.0
                  ),),

          )

        ],
      )
    );
  }
}