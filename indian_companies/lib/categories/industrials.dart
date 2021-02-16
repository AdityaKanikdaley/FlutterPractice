import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget industrials(){
  return
    Column(
        children: <Widget>[
          card("assets/accLimited.jpg", "ACC Cements", "Building materials", "Mumbai", "1936"),
          card("assets/ambujaCement.jpg", "Ambuja Cements", "Building materials", "Mumbai", "1983"),
          card("assets/asia_motorworks_logo.png", "Asia Motors", "Vehicles", "Mumbai", "2002"),
          card("assets/bharat-electronics-ltd.jpg", "Bharat Electronics Limited", "Aerospace & Defence", "Bengaluru", "1954"),
          card("assets/Bharat-Forge-Logo.jpg", "Bharat Forge", "Industrial Engineering", "Pune", "1961"),
          card("assets/bharat-heavy-electricals-limited-logo.png", "Bharat Heavy Electronics Ltd.", "Electricals", "New Delhi", "1964"),
          card("assets/eicher-motors.jpg", "Eicher Motors", "Vehicles", "Gurugram", "1948"),
          card("assets/escorts-group.jpg", "Escorts Group", "Industrial Engineering", "Faridabad", "1960"),
          card("assets/Exide-Logo.png", "Exide Industries", "Electricals", "Kolkata", "1947"),
          card("assets/firstsourse.png", "Firstsource", "Business Support Services", "Mumbai", "2001"),
          card("assets/GREAVES.png", "Greaves Cotton", "Industrial Engineering", "Mumbai", "1859"),
          card("assets/hindustan_aero.png", "Hindustan Aeronautics Ltd.", "Aerospace & Defence", "Bengaluru", "1940"),
          card("assets/havells.jpg", "Havells", "Electricals", "Noida", "1958"),
          card("assets/hcl.jpg", "HCL", "Business Support Services", "Noida", "1976"),
          card("assets/hmt.jpg", "HMT", "Defence", "Kolkata", "1775"),
          card("assets/indianrailway.png", "Indian Railways", "Railroads", "New Delhi", "1853"),
          card("assets/infosys.png", "Infosys", "Business Support Services", "Bengaluru", "1981"),
          Text("Updating more companies soon.......\n",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}