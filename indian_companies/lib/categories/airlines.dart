import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget airlines(){
  return
    Column(
        children: <Widget>[
          card("assets/airlines/air india.png", "Air India", "Airlines", "New Delhi", "1932"),
          card("assets/airlines/deccan air.png", "Deccan Charters", "Airlines", "Bengaluru", "1997"),
          card("assets/airlines/goAir airlines.png", "GoAir Airlines", "Airlines", "Mumbai", "2005"),
          card("assets/airlines/indigo.png", "IndiGo", "Airlines", "Gurugram", "2006"),
          card("assets/airlines/SpiceJet.png", "SpiceJet", "Airlines", "Gurugram", "2004"),
          card("assets/airlines/jet airways.png", "Jet Airways", "Airlines", "Mumbai", "1992"),
          card("assets/airlines/air costa.png", "Air Costa", "Airlines", "Vijayawada", "2013"),
          card("assets/airlines/air odisha.png", "Air Odisha", "Airlines", "Bhubaneswar", "2012"),
          card("assets/airlines/jetlite.png", "JetLite", "Airlines", "Mumbai", "1991"),
          card("assets/airlines/pawan hans.png", "Pawan Hans", "Airlines", "Noida", "1985"),
          Text("Updating more companies soon.......",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}