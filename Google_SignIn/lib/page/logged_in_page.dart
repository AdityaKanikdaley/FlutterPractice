import 'package:flutter/material.dart';
import 'package:google_SignIn/api/google_signIn_api.dart';
import 'package:google_SignIn/main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;

  LoggedInPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Logged In'),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 32),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(user.photoUrl!),
              ),
              SizedBox(height: 10),
              //name
              Text(
                'Name: ' + user.displayName!,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 8),
              //email
              Text(
                'Email: ' + user.email,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 10),
              //logOut btn
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                  child: Text(
                    'LogOut',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () async {
                    await GoogleSignInApi.logout();
                    print('LoggedOut');
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => MyApp()));
                  })
            ],
          ),
        ),
      );
}
