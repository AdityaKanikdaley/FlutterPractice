import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ripsey_trial/tabs/home_tab.dart';

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  Widget _bNavBar() {
    return Container(
      color: Colors.grey[850],
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homeTab()));
                print("forward pressed");
              },
              icon: Icon(Icons.arrow_forward_sharp,
                  color: Colors.lightBlueAccent, size: 40))
        ],
      ),
    );
  }

  final dateController = TextEditingController();
  // int currentPage = 1;
  // int totalPage = 1;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  List<String> gender = ['Male', 'Female'];
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[850],
      //appbar
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[850],
        title: new Text(
          'Ripsey',
          style: TextStyle(
            letterSpacing: 1.4,
            fontWeight: FontWeight.w100,
            fontSize: 32,
            color: Colors.blue[700],
            fontFamily: 'Lobster',
            fontStyle: FontStyle.italic,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.3, 1.3),
                blurRadius: 1.8,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Shadow(
                offset: Offset(1.8, 1.8),
                blurRadius: 1.6,
                color: Color.fromARGB(125, 0, 0, 255),
              ),
            ],
          ),
        ),

        // $currentPage/$totalPage
      ),

      // drawer
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //           child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[Text("trial")],
      //       ))
      //     ],
      //   ),
      // ),

      //body
      body: new Container(
          padding: new EdgeInsets.fromLTRB(15, 0, 15, 0),
          margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
          child: ListView(
            children: <Widget>[
              new Text("Tell us about you:",
                  style: TextStyle(
                      color: Color(0xff38bbd0),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),

              new SizedBox(height: 15),

              //NAME
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Name*", style: TextStyle(color: Color(0xff38bbd0))),
                  new SizedBox(height: 10),
                  new Container(
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
                            blurRadius: 6.0,
                          )
                        ]),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // DATE OF BIRTH & SEX
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // DATE OF BIRTH
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Date of birth*",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                          width: 160,
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
                                  blurRadius: 6.0,
                                )
                              ]),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            readOnly: true,
                            controller: dateController,
                            onTap: () async {
                              final df = new DateFormat('dd/MM/yyyy');
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              var slashDate = df.format(date);
                              dateController.text = slashDate;
                            },
                          )),
                    ],
                  ),

                  // new SizedBox(width: 5),

                  // SEX
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Sex*",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Row(
                        children: <Widget>[
                          //MALE
                          new Container(
                            width: 80,
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
                                    blurRadius: 6.0,
                                  )
                                ]),
                            child: customRadio(gender[0], 0),
                          ),

                          SizedBox(width: 10),

                          //FEMALE
                          new Container(
                            width: 80,
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
                                    blurRadius: 6.0,
                                  )
                                ]),
                            child: customRadio(gender[1], 1),
                          )
                        ],
                      )
                    ],
                  )
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
                      new Text("Height*",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Row(
                        children: <Widget>[
                          //Ft
                          new Container(
                            width: 60,
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
                                    blurRadius: 6.0,
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text("Ft",
                              style: TextStyle(color: Color(0xff38bbd0))),
                          SizedBox(width: 8),

                          // INCHES
                          new Container(
                            width: 60,
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
                                    blurRadius: 6.0,
                                  )
                                ]),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text("In",
                              style: TextStyle(color: Color(0xff38bbd0))),
                        ],
                      )
                    ],
                  ),

                  new SizedBox(width: 10),

                  // WEIGHT
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Weight (Kg)*",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
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
                                blurRadius: 6.0,
                              )
                            ]),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
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
                      new Text("Chest (Cm)",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 160,
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
                                blurRadius: 6.0,
                              )
                            ]),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
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
                      new Text("Hip (Cm)",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
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
                                blurRadius: 6.0,
                              )
                            ]),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
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
                      new Text("Waist (Cm)",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 160,
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
                                blurRadius: 6.0,
                              )
                            ]),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
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
                      new Text("Tummy (Cm)",
                          style: TextStyle(color: Color(0xff38bbd0))),
                      new SizedBox(height: 10),
                      new Container(
                        width: 170,
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
                                blurRadius: 6.0,
                              )
                            ]),
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.white),
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
              // Align(
              //     alignment: AlignmentDirectional.bottomEnd,
              //     heightFactor: 2.6,
              //     child: IconButton(
              //       onPressed: () {
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => homeTab()));
              //         print("forward pressed");
              //       },
              //       icon: Icon(Icons.arrow_forward_sharp,
              //           color: Colors.lightBlueAccent, size: 40),
              //     )
              // )

            ],
          )
      ),
      // body ends

      bottomNavigationBar: _bNavBar(),
    );
  }

  //changing index
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //return customRadio
  Widget customRadio(String gender, int index) {
    return TextButton(
      onPressed: () => changeIndex(index),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // borderSide: BorderSide(color: selectedIndex == index ? Colors.cyan : Colors.grey),
      child: Text(
        gender,
        style: TextStyle(
            color: selectedIndex == index ? Colors.red : Colors.white70),
      ),
    );
  }
}
