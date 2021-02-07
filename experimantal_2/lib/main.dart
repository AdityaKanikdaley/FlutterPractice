import 'package:flutter/cupertino.dart';
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


  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();
  void  _showbar() {
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Available In next Update....')));
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldstate,
      appBar:  new AppBar(
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
            Text("Details"),
            Icon(Icons.wrap_text, color: Colors.white)
          ],
        ),
      ),
      body: new ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 50.0, 40, 50),
              child: Container(
                 decoration: BoxDecoration(border: Border.all(width: 3), borderRadius: BorderRadius.circular(5)),
                  child: Image.asset('pics/dish.jpg'),
              ),),
        Center(
          child: Column(children: [
            Text("Crab Fry", style: TextStyle(fontSize: 30, letterSpacing: 1),),
            Text("Crab curry is a typical Indo-Portuguese", style: TextStyle(fontSize: 15, letterSpacing: 1)),
            Text("Dish",style: TextStyle(fontSize: 15, letterSpacing: 1))
          ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: FractionallySizedBox(
            widthFactor: 0.9,
            child: FlatButton(
              onPressed: _showbar,
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15),
              child: Text('Get Recipe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(36.0,10,20,40),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildListItem("CALORIES","196","CAL"),
              _buildListItem("VITAMINS","A, B6","VIT"),
              _buildListItem("FAT", "13.1","grams"),
              _buildListItem("SODIUM","141","mili grams"),
              _buildListItem("FIBER","1.6","grams"),
              _buildListItem("SUGAR","1.12","grams"),
              _buildListItem("PROTEIN","1.93","grams"),

            ],
          ),
        )
      ],
      ),
    );
  }

  _buildListItem(String s, String t, String u) {
    return  Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 14),
      child: Container(
          height: 150.0,
          width: 100.0,
          // decoration: BoxDecoration(color: Colors.white,),
          // color: const Color.fromARGB(12, 243, 6, 6),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 3),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0),)),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,8,0,0),
                  child: Column(children: <Widget>[
                      Text(s, style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 75.0),
                      Text(t, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                      Text(u),
                      ],
                  ),
                 )
          )
      ),
    );
  }

}

