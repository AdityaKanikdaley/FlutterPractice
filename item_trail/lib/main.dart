import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  @override
  Widget build(BuildContext context) {

    final me = Hero(
        tag: "hero",
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 90.0,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 86.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/me.jpg", ),
              // child: Image.asset("assets/me.jpg"),
            ),
          ),
          )
        );

    final about_me = Container(
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        direction: Axis.horizontal,
            children: <Widget>[
              Text("This app is mainly made to show that India is becoming much 'self-reliant India' or 'self-sufficient'. \n"
                  "This term is used by the Prime Minister of India Narendra Modi in relation to economic development in country.\n\n",
                      style: TextStyle(fontSize: 16, color: Color(0xFFe80909)),),

              Text("The five pillars of ‘Atmanirbhar Bharat’ he stated as economy, infrastructure, technology, vibrant demography"
                  " and demand and asked the nation of 1.3 billion people diligently to be vocal for local, PM said.\n\n",
                      style: TextStyle(fontSize: 16, color: Color(0xFFe32222)),),
              Text("Therefore, be Proud to be an INDIAN\n\n",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.indigoAccent), ),

              Text("Development of this app is been done by Aditya Kanikdaley,\nFor any queries mail me on:",
                  style: TextStyle(fontSize: 14, color: Color(0xFFac07b5)),),

              Text("adikanikdaley@gmail.com\n\n", style: TextStyle(color: Colors.lightBlue),),

              Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: () async {
                      debugPrint("wiki button pressed");
                      const url = "https://en.wikipedia.org/wiki/Atmanirbhar_Bharat";
                      if(await canLaunch(url))
                        await launch(url);
                      else
                        Flushbar(
                          message: "Can't be reached at this moment!",
                          duration: Duration(seconds: 3),
                        )..show(context);
                       },
                  child: Text("Know more about Atmanirbhar Bharat"),
                ),
              )
            ],
          )
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body:
        Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              me,
              about_me
            ],
          ),
        )
    );
  }
}