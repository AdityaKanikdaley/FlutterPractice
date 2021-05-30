import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyApp({Key key}) : super(key : key);
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  final dateController = TextEditingController();
  int currentPage = 1;
  int totalPage = 4;

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

      //appbar
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: new Text('$currentPage/$totalPage', style: TextStyle(color: Colors.blue[900]),),
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
                    Text("trial")
                  ],
              )
            )
          ],
        ),
      ),

      //body
      body: new Container(
        // color: Colors.white70,
        padding: new EdgeInsets.fromLTRB(15, 0, 15, 0),
        margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
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

            // DATE OF BIRTH & SEX
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                // DATE OF BIRTH
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("Date of birth*",style: TextStyle(color: Color(0xff38bbd0))),
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
                        style: TextStyle(color: Colors.blue[900]),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,
                        readOnly: true,
                        controller: dateController,
                        onTap: () async{
                          var date = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          dateController.text = date.toString().substring(0,10);
                        },
                      )
                    ),
                  ],
                ),

                // new SizedBox(width: 5),

                // SEX
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("Sex*", style: TextStyle(color: Color(0xff38bbd0))),
                    new SizedBox(height: 10),
                    new Row(
                      children: <Widget>[

                        //MALE
                        new Container(
                          width: 80,
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
                          child: customRadio(gender[0], 0),
                        ),

                        SizedBox(width: 10),

                        //FEMALE
                        new Container(
                          width: 80,
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
            Align(
              alignment: AlignmentDirectional.bottomEnd,
                heightFactor: 2.6,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      currentPage +=1;
                    });
                    print("forward pressed");
                  },
                  icon: Icon(Icons.arrow_forward_sharp, color: Colors.lightBlueAccent, size: 40),
                  )
            )


          ],
        )
      ),
      // body ends

    );
  }

  //changing index
  void changeIndex(int index){
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
        child: Text(gender,style: TextStyle(color: selectedIndex == index ?Colors.blue[900] : Colors.grey),),

    );
  }
}
