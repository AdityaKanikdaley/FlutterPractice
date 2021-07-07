import 'package:flutter/material.dart';
import 'package:google_signIn/api/google_signIn_api.dart';
import 'package:google_signIn/page/logged_in_page.dart';

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
  Future signIn() async {
    final user = await GoogleSignInApi.login();

    if(user == null){
      ScaffoldMessenger.of(context)
          .showSnackBar((SnackBar(content: Text("Sign-In failed"),)));
    }

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(user: user!)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity, 50)
              ),
              icon: Icon(Icons.gavel_outlined),
              label: Text('Sign Up with Google'),
              onPressed: signIn,

            )
          ],
        ),
      ),
    );
  }
}
