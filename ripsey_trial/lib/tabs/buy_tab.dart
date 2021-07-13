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
      backgroundColor: Colors.grey[850],

      //appbar
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey[850],
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
          color: Colors.grey[850],
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
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black54,
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.grey[800],
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
                      child: Center(child: Text("DNA test", style: TextStyle(color: Colors.blue[800], fontSize: 14, fontWeight: FontWeight.bold),)),
                      decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black54,
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.grey[800],
                              offset: Offset(-4, -4),
                              blurRadius: 6,
                            )
                          ]),
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
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black54,
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.grey[800],
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
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              //bottom
                              color: Colors.black54,
                              offset: Offset(5, 5),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              //top
                              color: Colors.grey[800],
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
