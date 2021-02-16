import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indian_companies/about.dart';
import 'package:url_launcher/url_launcher.dart';


final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

void _showbar(){
  _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Cannot open at this moment')));
}

Widget drawer(BuildContext context){
  key: _scaffoldstate;
  return
    ListView(children: <Widget>[
      new UserAccountsDrawerHeader(
          accountName: new Text("Aditya Kanikdaley"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/me.jpg")),
          accountEmail: new Text("adikanikdaley@gmail.com")),

      //about
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

      //contact
      new ExpansionTile(
          leading: new Icon(Icons.contact_page_outlined, color: Colors.purple),
          title: Text("Contact"),
          children: <Widget>[

            //facebook
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook,color: Colors.blue),
              onPressed: () async {
                const url = "https://www.facebook.com/profile.php?id=100004353226781";
                if(await canLaunch(url))
                  await launch(url);
                else
                  throw _showbar;
              },
            ),

            //instagram
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram,color: Colors.purpleAccent),
              onPressed: () async {
                const url = "https://www.instagram.com/aditya_kanikdaley/";
                if(await canLaunch(url))
                  await launch(url);
                else
                  throw _showbar;
              },
            ),

            //twitter
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter,color: Colors.blue),
              onPressed: () async {
                const url = "https://twitter.com/AKanikdaley";
                if(await canLaunch(url))
                  await launch(url);
                else
                  throw _showbar;
              },
            ),

            //linkedIn
            IconButton(
              icon: Icon(FontAwesomeIcons.linkedin,color: Colors.blue[700]),
              onPressed: () async {
                const url = "https://www.linkedin.com/in/aditya-kanikdaley-471452190/";
                if(await canLaunch(url))
                  await launch(url);
                else
                  throw _showbar;
              },
            ),
          ],
      ),


      new Divider(
        height: 10.0,
        color: Colors.black,
      ),
    ],
    );
}