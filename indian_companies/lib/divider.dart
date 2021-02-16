import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:indian_companies/about.dart';


Widget divider(BuildContext context){
  return
    ListView(children: <Widget>[
      new UserAccountsDrawerHeader(
          accountName: new Text("Aditya Kanikdaley"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/me.jpg")),
          accountEmail: new Text("adikanikdaley@gmail.com")),
      new ListTile(
          title: new InkWell(
            child: Text("About"),
            onTap: () {
              debugPrint("about pressed");
              Navigator.push(context, MaterialPageRoute(builder: (context) => aboutClass()
              )
              );
            },
          ),
          leading: new Icon(Icons.info_outline, color: Colors.purple)),
      new Divider(
        height: 10.0,
        color: Colors.black,
      ),
    ],
    );
}