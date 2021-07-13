import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';
import 'package:ripsey_trial/drawer.dart';

class weekTab extends StatefulWidget {
  @override
  _weekTabState createState() => _weekTabState();
}

class _weekTabState extends State<weekTab> {
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
          padding: new EdgeInsets.all(20),
          color: Colors.grey[850],
          child: ListView(
            children: <Widget>[

              //personalize btn
              new Container(
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                        //bottom
                        color: Colors.black54,
                        offset: Offset(4, 4),
                        blurRadius: 6,
                      ),
                      BoxShadow(
                        //top
                        color: Colors.grey[800],
                        offset: Offset(-4, -4),
                        blurRadius: 4,
                      )
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: new TextButton(
                    onPressed: () => {print('pressed')},
                    child: Text('Personalize More?',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ),
              ),

              SizedBox(height: 40),

              //day-1,2
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day1
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-1 pressed");
                        },
                        child: Text("DAY 1", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal))),
                  ),

                  //day 2
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-2 pressed");
                        },
                        child: Text("DAY 2", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal),)),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //day-3,4
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day3
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-3 pressed");
                        },
                        child: Text("DAY 3", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal))),
                  ),

                  //day 4
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-4 pressed");
                        },
                        child: Text("DAY 4", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal),)),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //day-5,6
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day5
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-5 pressed");
                        },
                        child: Text("DAY 5", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal))),
                  ),

                  //day 6
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-6 pressed");
                        },
                        child: Text("DAY 6", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal),)),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //day-7
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day7
                  new Container(
                    width: 140,
                    height: 90,
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
                    child: TextButton(
                        onPressed: () {
                          print("day-7 pressed");
                        },
                        child: Text("DAY 7", style: TextStyle(color: Colors.cyan[200], fontSize: 22, fontWeight: FontWeight.normal))),
                  ),

                ],
              ),
              // Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavBar(2)))
            ],
          )),
      // body ends

      bottomNavigationBar: bottomNavBar(2),
    );
  }
}
