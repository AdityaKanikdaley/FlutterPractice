import 'package:flutter/material.dart';
import 'package:hdfc_clone/more.dart';
import 'package:hdfc_clone/overview.dart';
import 'package:hdfc_clone/payment.dart';
import 'package:hdfc_clone/shop.dart';

import 'help.dart';

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

  var _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    shop(),
    Text("Index 1: asasas", style: optionStyle),
    Text("Index 2: dddd", style: optionStyle)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   // title: new Text('HDFC Clone'),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.blue.withOpacity(0.8),
      //     elevation: 1,
      //     type: BottomNavigationBarType.fixed,
      //     items: const<BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text("Shop"),),
      //       BottomNavigationBarItem(icon: Icon(Icons.payment_outlined), title: Text("UPI Payment")),
      //       BottomNavigationBarItem(icon: ImageIcon(AssetImage("pics/question_mark.png")), title: Text("Help")),
      //       BottomNavigationBarItem(icon: Icon(Icons.more_horiz), title: Text("More")),
      //     ],
      //   currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.yellow,
      //     onTap: onItemTapped,
      // ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("pics/bg.jpg"),
            fit: BoxFit.cover
           )
         ),

        child:
         ListView(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Image.asset("pics/bhim_upi.png", width: 50,height: 50, alignment: Alignment.center),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.black26.withOpacity(0.5),
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.teal,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('pics/bg.jpg'),
                        radius: 28,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        width:  MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter User ID',
                            hintText: 'Enter User ID',
                          ),
                          autofocus: false,
                        )
                    ),
                    SizedBox(height: 20),
                    Container(
                        width:  MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Password',
                            hintText: 'Enter Password',
                          ),
                          autofocus: false,
                        )
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () => print("forgot"),
                      child: Text("Forgot Password?", style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      child: Text('LOGIN'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => overview()));
                        print('Login Pressed');
                      },
                    ),
                    Divider(color: Colors.white,thickness: 1,),
                    RaisedButton(
                      color: Colors.transparent,
                      onPressed: () {
                        print('Pressed');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text('SET UP QUICK ACCESS PIN', style: TextStyle(color: Colors.white),),
                      ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap:()=> print("Secure Banking"),
                          child: Text("Secure Banking", style: TextStyle(color: Colors.white),)),
                        Container(height: 20,width: 20, child: VerticalDivider(color: Colors.white)),
                        InkWell(
                            onTap:()=> print("Privacy Policy"),
                            child: Text("Privacy Policy", style: TextStyle(color: Colors.white),)),
                      ],
                    ),

                  ],
                )
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.075),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => shop()));
                          },
                          icon: Icon(Icons.shopping_cart), color: Colors.white,
                      ),
                      Text("Shop", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => payment()));
                        },
                        icon: Icon(Icons.payment_outlined), color: Colors.white,
                      ),
                      Text("Payment", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => help()));
                        },
                        icon: ImageIcon(AssetImage("pics/question_mark.png"), color: Colors.white,),
                      ),
                      Text("Help", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => more()));
                        },
                        icon: Icon(Icons.more_horiz), color: Colors.white,
                      ),
                      Text("More", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ],
              ),

            )
          ],
        )
      ),
    );
  }

  void onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
