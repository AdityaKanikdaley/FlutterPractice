import 'package:flutter/material.dart';
import 'package:google_signIn/api/google_signIn_api.dart';
import 'package:google_signIn/main.dart';
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
          actions: [
            TextButton(
                child: Text('LogOut', style: TextStyle(color: Colors.white),),
                onPressed: () async {
                  await GoogleSignInApi.logout();
                  print('LoggedOut');
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MyApp()));
                })
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: Column(
            children: [
              Text("Profile", style: TextStyle(fontSize: 24)),
              SizedBox(height: 32),
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user.photoUrl!),
              ),
              SizedBox(height: 8),
              Text(
                'Name: ' + user.displayName!,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Email: ' + user.email,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      );
}
