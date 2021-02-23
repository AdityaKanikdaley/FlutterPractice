import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget industrials(BuildContext context){
  return
    Column(
        children: <Widget>[
          card(context,"assets/industrial/accLimited.jpg", "ACC Cements", "Building materials", "Mumbai", "1936",""),
          card(context,"assets/industrial/ambujaCement.jpg", "Ambuja Cements", "Building materials", "Mumbai", "1983",""),
          card(context,"assets/industrial/asia_motorworks_logo.png", "Asia Motors", "Vehicles", "Mumbai", "2002",""),
          card(context,"assets/industrial/bharat-electronics-ltd.jpg", "Bharat Electronics Limited", "Aerospace & Defence", "Bengaluru", "1954",""),
          card(context,"assets/industrial/Bharat-Forge-Logo.jpg", "Bharat Forge", "Industrial Engineering", "Pune", "1961",""),
          card(context,"assets/industrial/bharat-heavy-electricals-limited-logo.png", "Bharat Heavy Electronics Ltd.", "Electricals", "New Delhi", "1964",""),
          card(context,"assets/industrial/eicher-motors.jpg", "Eicher Motors", "Vehicles", "Gurugram", "1948",""),
          card(context,"assets/industrial/escorts-group.jpg", "Escorts Group", "Industrial Engineering", "Faridabad", "1960",""),
          card(context,"assets/industrial/Exide-Logo.png", "Exide Industries", "Electricals", "Kolkata", "1947",""),
          card(context,"assets/industrial/firstsourse.png", "Firstsource", "Business Support Services", "Mumbai", "2001",""),
          card(context,"assets/industrial/GREAVES.png", "Greaves Cotton", "Industrial Engineering", "Mumbai", "1859",""),
          card(context,"assets/industrial/hindustan_aero.png", "Hindustan Aeronautics Ltd.", "Aerospace & Defence", "Bengaluru", "1940",""),
          card(context,"assets/industrial/havells.jpg", "Havells", "Electricals", "Noida", "1958",""),
          card(context,"assets/industrial/hcl.jpg", "HCL", "Business Support Services", "Noida", "1976",""),
          card(context,"assets/industrial/hmt.jpg", "HMT", "Defence", "Kolkata", "1775",""),
          card(context,"assets/industrial/indianrailway.png", "Indian Railways", "Railroads", "New Delhi", "1853",""),
          card(context,"assets/industrial/infosys.png", "Infosys", "Business Support Services", "Bengaluru", "1981",""),
          Text("Updating more companies soon.......",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}