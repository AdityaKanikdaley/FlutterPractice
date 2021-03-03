import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget exploration(BuildContext context){
  return
    Column(
        children: <Widget>[
          card(context,"assets/exploration_production/Aban_Logo.svg.png", "Aban Offshore", "Oil & Gas", "Chennai", "1986","https://www.bajajauto.com/"),
          card(context,"assets/exploration_production/Bharat_Petroleum_Logo.png", "Bharat Petroleum", "Oil & Gas", "Mumbai", "1976","https://www.forcemotors.com/"),
          card(context,"assets/exploration_production/Chennai_Petroleum_Corporation_logo.svg.png", "Chennai Petroleum Corp.", "Oil & Gas", "Chennai", "1965","https://www.heromotocorp.com/en-in/"),
          card(context,"assets/exploration_production/Hindustan_Petroleum_Logo.svg.png", "Hindustan Petroleum", "Oil & Gas", "Mumbai", "1974","http://www.hindmotor.com/"),
          card(context,"assets/exploration_production/Indian_Oil_Logo.svg.png", "Indian Oil Corp.", "Oil & Gas", "New Delhi", "1959","https://auto.mahindra.com/"),
          card(context,"assets/exploration_production/Oil_India_Logo.svg.png", "Oil India", "Oil & Gas", "Duliajan", "1959","https://www.marutisuzuki.com/"),
          card(context,"assets/exploration_production/ONGC_Logo.svg.png", "Oil & Natural Gas Corp.", "Oil & Gas", "Dehradun", "1956","https://www.royalenfield.com/"),
          card(context,"assets/exploration_production/petronet_lng_logo.png", "Petronet LNG", "Oil & Gas", "New Delhi", "1998","https://www.smlisuzu.com/"),
          card(context,"assets/exploration_production/reliance-petroleum.png", "Reliance Petroleum", "Oil & Gas", "Ahmedabad", "2008","https://www.tatamotors.com/"),
          Text("Updating more companies soon.......",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}