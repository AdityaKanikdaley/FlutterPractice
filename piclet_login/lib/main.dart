import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  bool _lightmode = false;
  String username;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: _lightmode ? Color(0xfffffafa) : Colors.grey[850],
      body: new Container(
        padding: new EdgeInsets.fromLTRB(12, 0, 12, 0),
        child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[

            //heading
            new Padding(
              padding: const EdgeInsets.fromLTRB(20, 45, 20, 50),
              child: Center(
                  child: new Text(
                'Pic Let',
                style: TextStyle(
                    color: _lightmode ? Colors.black : Colors.white,
                    fontFamily: "Lobster",
                    fontSize: 50,
                    fontStyle: FontStyle.italic),
              )),
            ),

            new SizedBox(height: 50),

            //username
            new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          color: _lightmode ? Colors.black : Colors.white,
                          fontSize: 18,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: _lightmode ? Colors.grey.shade100 : Colors.grey[850],
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                              color: _lightmode
                                  ? Colors.black.withOpacity(0.3)
                                  : Colors.black54,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: _lightmode ? Colors.white : Colors.grey[800],
                              offset: _lightmode ? Offset(-10,-10) : Offset(-4.0, -4.0),
                              blurRadius: _lightmode ? 6.0 : 15.0,
                              spreadRadius: _lightmode ? 0.0 : 1.0),
                        ]),
                    child: TextField(
                      onSubmitted: (value) {
                        setState(() {
                          username = value;
                        });
                      },
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          color: _lightmode ? Colors.black : Colors.white70),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ]),

            new SizedBox(height: 50),

            //password
            new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: _lightmode ? Colors.black : Colors.white,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: _lightmode ? Colors.grey.shade100 : Colors.grey[850],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        boxShadow: [
                          BoxShadow(
                              color: _lightmode
                                  ? Colors.black.withOpacity(0.3)
                                  : Colors.black54,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: _lightmode ? Colors.white : Colors.grey[800],
                              offset: _lightmode ? Offset(-10,-10) : Offset(-4.0, -4.0),
                              blurRadius: _lightmode ? 6.0 : 15.0,
                              spreadRadius: _lightmode ? 0.0 : 1.0),
                        ]),
                    child: TextField(
                      textAlign: TextAlign.start,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                          color: _lightmode ? Colors.black : Colors.white70),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ]),

            new SizedBox(height: 20),

            //forgot password
            new Center(
              child: new InkWell(
                onTap: () {
                  final scaffold = ScaffoldMessenger.of(context);
                  scaffold.showSnackBar(
                    SnackBar(
                      content: const Text(
                        'Mail will be sent to Username',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: _lightmode ? Colors.black : Colors.white),
                ),
              ),
            ),

            new SizedBox(height: 60),

            //sign-in
            new Container(
              decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  boxShadow: [
                    BoxShadow(
                      //bottom
                      color: Colors.red[600],
                      offset: _lightmode ? Offset(3.0,3.0) : Offset(4.0, 4.0),
                      blurRadius: _lightmode ? 4.0 : 6.0,
                      // spreadRadius: 1.0
                    ),
                    BoxShadow(
                      //top
                      color: _lightmode ? Colors.red[800] : Colors.red[200],
                      offset: _lightmode ? Offset(-3.0, -2.0) : Offset(-2.0, -2.0),
                      blurRadius: _lightmode ? 4.0 : 6.0,
                      // spreadRadius: 1.0
                    ),
                  ]),
              child: TextButton(
                onPressed: () {
                  if (username == null) {
                    username = "User";
                  }
                  final scaffold = ScaffoldMessenger.of(context);
                  scaffold.showSnackBar(
                    SnackBar(
                      content: Text(
                        'Wellcome $username',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                    ),
                  );
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: _lightmode ? Colors.black : Colors.white,
                      fontSize: 20,
                      fontFamily: "PatrickHand",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            new SizedBox(height: 20),

            //or
            new Center(
                child: new Text("OR",
                    style: TextStyle(
                        color: _lightmode ? Colors.black : Colors.white,
                        fontSize: 16))),

            new SizedBox(height: 5),

            //icons
            new Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.red[800],
                    ),
                    onPressed: () {
                      print("google pressed");
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Google Sign-In',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebookF,
                        color: Colors.blue[300]),
                    onPressed: () {
                      print("facebook pressed");
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Facebook Sign-In',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue[400],
                    ),
                    onPressed: () {
                      print("twitter pressed");
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Twitter Sign-In',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            new SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            //theme icon & sign-up
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    print("theme changed");
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        duration: const Duration(milliseconds: 500),
                        content: const Text(
                          'Theme Changed',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                      ),
                    );
                    setState(() {
                      _lightmode = !_lightmode;
                    });
                  },
                  icon: Icon(Icons.wb_sunny,
                      color: _lightmode ? Colors.black : Colors.white),
                ),
                InkWell(
                    onTap: () {
                      final scaffold = ScaffoldMessenger.of(context);
                      scaffold.showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Sign-Up',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          // action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
                        ),
                      );
                    },
                    child: Text("Sign-Up",
                        style: TextStyle(
                            color:
                                _lightmode ? Colors.red[900] : Colors.red[300],
                            fontFamily: "PatrickHand",
                            fontSize: 22))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
