import 'package:flutter/material.dart';
import 'package:ripsey_trial/bottomNavBar.dart';
import 'package:ripsey_trial/drawer.dart';

class profileTab extends StatefulWidget {
  @override
  _profileTabState createState() => _profileTabState();
}

class _profileTabState extends State<profileTab> {
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
        actions: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                final scaffold = ScaffoldMessenger.of(context);
                scaffold.showSnackBar(
                  SnackBar(
                    backgroundColor: Color(0xffeeeeee),
                    duration: const Duration(milliseconds: 500),
                    content: Align(
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Information Saved',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 15, top: 20),
                width: 62,
                height: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff24bed8)),
                child: Center(
                    child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          )
        ],
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
              //profile
              new Text("Profile:",
                  style: TextStyle(
                      color: Color(0xff45b8c2),
                      fontSize: 18,
                      fontWeight: FontWeight.w800)),

              SizedBox(height: 20),

              //allergies
              new Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Allergies',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff4db6c8)),
                        ),
                        Text('No Allergies',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[200]))
                      ],
                    ),
                    new IconButton(onPressed: () {print('allergies edit pressed');}, icon: Icon(Icons.edit, color: Colors.grey[200],))
                  ],
                ),
              ),

              SizedBox(height: 20),

              //preferences
              new Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Preferences',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff4db6c8)),
                        ),
                        Text('Vegetarian. All days of the week',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[200]))
                      ],
                    ),
                    new IconButton(onPressed: () {print('preferences edit pressed');}, icon: Icon(Icons.edit, color: Colors.grey[200],))
                  ],
                ),
              ),

              SizedBox(height: 20),

              //clinical concerns
              new Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Clinical Concerns',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff4db6c8)),
                        ),
                        Text('No Clinical Concerns',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[200]))
                      ],
                    ),
                    new IconButton(onPressed: () {print('clinical concerns edit pressed');}, icon: Icon(Icons.edit, color: Colors.grey[200],))
                  ],
                ),
              ),

              SizedBox(height: 20),

              //choice of proteins
              new Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choice of Proteins',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff4db6c8)),
                        ),
                        Text('Paneer, Tofu',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[200]))
                      ],
                    ),
                    new IconButton(onPressed: () {print('choice of proteins edit pressed');}, icon: Icon(Icons.edit, color: Colors.grey[200],))
                  ],
                ),
              ),

              SizedBox(height: 20),

              //cuisines
              new Container(
                padding: EdgeInsets.all(10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cuisines',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff4db6c8)),
                        ),
                        Text('North Indian, South Indian, Bengali',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan[200]))
                      ],
                    ),
                    new IconButton(onPressed: () {print('cuisines edit pressed');}, icon: Icon(Icons.edit, color: Colors.grey[200],))
                  ],
                ),
              ),

            ],
          )),
      // body ends

      bottomNavigationBar: bottomNavBar(5),
    );
  }
}
