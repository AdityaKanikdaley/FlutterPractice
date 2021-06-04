import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';

class profileTab extends StatefulWidget {

  @override
  _profileTabState createState() => _profileTabState();
}

class _profileTabState extends State<profileTab> {
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("profile trial")
                  ],
                )
            )
          ],
        ),
      ),

      //body
      body: new Container(
          padding: new EdgeInsets.fromLTRB(15, 0, 15, 0),
          margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
          color: Color(0xffeeeeee),
          child: ListView(
            children: <Widget>[
              new Text("Tell us about you:",
                  style: TextStyle( color: Color(0xff38bbd0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),

              new SizedBox(height: 15),

              //NAME
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Name*", style: TextStyle(color: Color(0xff38bbd0))),
                  new SizedBox(height: 10),
                  new  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow( //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow( //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
                          )
                        ]
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.blue[900]),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              //HEIGHT & WEIGHT
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  // HEIGHT
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Height*",style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Row(
                        children: <Widget>[

                          //Ft
                          new Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow( //bottom
                                    color: Colors.black.withOpacity(0.075),
                                    offset: Offset(10, 10),
                                    blurRadius: 10,
                                  ),
                                  BoxShadow( //top
                                    color: Colors.white,
                                    offset: Offset(-10, -10),
                                    blurRadius: 6.0,
                                  )
                                ]
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.blue[900]),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text("Ft", style: TextStyle(color: Color(0xff38bbd0))),
                          SizedBox(width: 8),

                          // INCHES
                          new Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow( //bottom
                                    color: Colors.black.withOpacity(0.075),
                                    offset: Offset(10, 10),
                                    blurRadius: 10,
                                  ),
                                  BoxShadow( //top
                                    color: Colors.white,
                                    offset: Offset(-10, -10),
                                    blurRadius: 6.0,
                                  )
                                ]
                            ),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.blue[900]),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text("In", style: TextStyle(color: Color(0xff38bbd0))),
                        ],
                      )
                    ],
                  ),

                  new SizedBox(width: 10),

                  // WEIGHT
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Weight (Kg)*", style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow( //bottom
                                color: Colors.black.withOpacity(0.075),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                              BoxShadow( //top
                                color: Colors.white,
                                offset: Offset(-10, -10),
                                blurRadius: 6.0,
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.blue[900]),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(height: 30),

              // CHEST & HIP
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  // CHEST
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Chest (Cm)",style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow( //bottom
                                color: Colors.black.withOpacity(0.075),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                                // spreadRadius: 3.0
                              ),
                              BoxShadow( //top
                                color: Colors.white,
                                offset: Offset(-10, -10),
                                blurRadius: 6.0,
                                // spreadRadius: 3.0
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.blue[900]),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),

                  new SizedBox(width: 10),

                  // HIP
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Hip (Cm)", style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow( //bottom
                                color: Colors.black.withOpacity(0.075),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                                // spreadRadius: 3.0
                              ),
                              BoxShadow( //top
                                color: Colors.white,
                                offset: Offset(-10, -10),
                                blurRadius: 6.0,
                                // spreadRadius: 3.0
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.blue[900]),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(height: 30),

              //WAIST & TUMMY
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  // WAIST
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Waist (Cm)",style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow( //bottom
                                color: Colors.black.withOpacity(0.075),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                              BoxShadow( //top
                                color: Colors.white,
                                offset: Offset(-10, -10),
                                blurRadius: 6.0,
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.blue[900]),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),

                  new SizedBox(width: 10),

                  // TUMMY
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Tummy (Cm)", style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow( //bottom
                                color: Colors.black.withOpacity(0.075),
                                offset: Offset(10, 10),
                                blurRadius: 10,
                              ),
                              BoxShadow( //top
                                color: Colors.white,
                                offset: Offset(-10, -10),
                                blurRadius: 6.0,
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.blue[900]),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

              // FORWARD BUTTON AT BOTTOM


            ],
          )
      ),
      // body ends

      bottomNavigationBar: bottomNavBar(5),
    );
  }
}
