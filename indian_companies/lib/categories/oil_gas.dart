import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget oil_gas(){
  return
    Column(
        children: <Widget>[
          card("assets/oil_gas/Aban_Logo.svg.png", "Aban Offshore", "Exploration", "Chennai", "1986"),
          card("assets/oil_gas/bgr.jpg", "BGR Energy Systems Ltd.", "Equipment", "Chennai", "1952"),
          card("assets/oil_gas/Bharat_Petroleum_Logo.svg.png", "Bharat Petroleum", "Exploration", "Mumbai", "1976"),
          card("assets/oil_gas/chennai-petroleum-corporation.jpg", "Chennai Petroleum Co. Ltd.", "Exploration", "Chennai", "1965"),
          card("assets/oil_gas/EIL-Logo.png", "Engineers India", "Equipment", "New Delhi", "1965"),
          card("assets/oil_gas/Gujarat State Petroleum Corporation.jpg", "Gujarat State Petroleum Co.", "Exploration", "Ahmedabad", "1979"),
          card("assets/oil_gas/hindustan petroleum.jpg", "Hindustan Petroleum", "Exploration", "Mumbai", "1974"),
          card("assets/oil_gas/Indian Oil Corporation.png", "Indian Oil Corporation", "Exploration", "Mumbai", "1974"),
          card("assets/oil_gas/Oil and Natural Gas Corporation.png", "Oil and Natural Gas Co.", "Exploration", "Dehradun", "1956"),
          card("assets/oil_gas/oil-india-limited.png", "Oil India", "Exploration", "Duliajan", "1959"),
          card("assets/oil_gas/Petronet LNG.jpg", "Petronet LNG", "Exploration", "New Delhi", "1988"),
          card("assets/oil_gas/reliance-petrol.jpg", "Reliance Petroleum", "Exploration", "Ahmedabad", "2008"),
          Text("Updating more companies soon.......", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}