import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';
import 'package:ripsey_trial/drawer.dart';


class homeTab extends StatefulWidget {

  @override
  _homeTabState createState() => _homeTabState();
}

class _homeTabState extends State<homeTab> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      //appbar
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffeeeeee),
        // title: new Text('', style: TextStyle(color: Colors.blue[900]),),
      ),

      // drawer
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(80)),
        child: Drawer(
          child:drawer(context),
        ),
      ),

      //body
      body: new Container(
          color: Color(0xffeeeeee),
          padding: new EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[





            ],
          )
      ),
      // body ends

      bottomNavigationBar: bottomNavBar(1),
    );
  }
}
