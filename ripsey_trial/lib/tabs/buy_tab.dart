import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';
import 'package:ripsey_trial/drawer.dart';

class buyTab extends StatefulWidget {

  @override
  _buyTabState createState() => _buyTabState();
}

class _buyTabState extends State<buyTab> {
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
          padding: new EdgeInsets.fromLTRB(20, 5, 20, 10),
          color: Color(0xffeeeeee),
          child: ListView(
            children: <Widget>[

              //buy
              new Text("Buy:",
                  style: TextStyle( color: Colors.blue[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  )),

              SizedBox(height: 20),

              //app subs, dna
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //app subs
                  GestureDetector(
                    onTap:(){print("app subscription pressed");},
                    child: new Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black.withOpacity(0.075),
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 6,
                            )
                          ]),
                      child: Center(child: Text("App Subscription", style: TextStyle(color: Colors.blue[800], fontSize: 14, fontWeight: FontWeight.bold))),
                    ),
                  ),

                  //dna
                  GestureDetector(
                    onTap: (){print("dna test pressed");},
                    child: new Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black.withOpacity(0.075),
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 6,
                            )
                          ]),
                      child: Center(child: Text("DNA test", style: TextStyle(color: Colors.blue[800], fontSize: 14, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 35),

              //blood, gutHealth test
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //blood
                  GestureDetector(
                    onTap: (){ print("blood test pressed");},
                    child: new Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black.withOpacity(0.075),
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 6,
                            )
                          ]),
                      child: Center(child: Text("Blood test", style: TextStyle(color: Colors.blue[800], fontSize: 14, fontWeight: FontWeight.bold))),
                    ),
                  ),

                  //gut
                  GestureDetector(
                    onTap: (){print("gut health test pressed");},
                    child: new Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black.withOpacity(0.075),
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 6,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          SizedBox(height: 70,),

                          Text("Gut health test", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 55,),

                          new Text("Comming Soon", style: TextStyle(fontSize: 11,color: Colors.cyan[300], fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
      // body ends

      bottomNavigationBar: bottomNavBar(3),
    );
  }
}
