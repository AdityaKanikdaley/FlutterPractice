import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';

class weekTab extends StatefulWidget {
  @override
  _weekTabState createState() => _weekTabState();
}

class _weekTabState extends State<weekTab> {
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
              children: <Widget>[Text("week trial")],
            ))
          ],
        ),
      ),

      //body
      body: new Container(
          padding: new EdgeInsets.all(20),
          color: Color(0xffeeeeee),
          child: ListView(
            children: <Widget>[

              //personalize btn
              new Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                        //bottom
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        //top
                        color: Colors.white70,
                        offset: Offset(-5, -5),
                        blurRadius: 6.0,
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
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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

              SizedBox(height: 35),

              //day-3,4
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day3
                  new Container(
                    width: 140,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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

              SizedBox(height: 35),

              //day-5,6
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day5
                  new Container(
                    width: 140,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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

              SizedBox(height: 35),

              //day-7
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //day7
                  new Container(
                    width: 140,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            //bottom
                            color: Colors.black.withOpacity(0.075),
                            offset: Offset(10, 10),
                            blurRadius: 10,
                          ),
                          BoxShadow(
                            //top
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 6.0,
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
