import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget oil_gas(){
  return
    Column(
        children: <Widget>[
          card("assets/Aban_Logo.svg.png", "Aban Offshore", "Exploration", "Chennai", "1986"),
          card("assets/bgr.jpg", "BGR Energy Systems Ltd.", "Equipment", "Chennai", "1952"),
          card("assets/Bharat_Petroleum_Logo.svg.png", "Bharat Petroleum", "Exploration", "Mumbai", "1976"),
          card("assets/chennai-petroleum-corporation-limited.jpg", "Chennai Petroleum Co.", "Exploration", "Chennai", "1965"),
          card("assets/EIL-Logo.png", "Engineers India", "Equipment", "New Delhi", "1965"),
          card("assets/Gujarat State Petroleum Corporation.jpg", "Gujarat State Petroleum Co.", "Exploration", "Ahmedabad", "1979"),
          card("assets/hindustan petroleum.jpg", "Hindustan Petroleum", "Exploration", "Mumbai", "1974"),
          card("assets/Indian Oil Corporation.png", "Indian Oil Corporation", "Exploration", "Mumbai", "1974"),
          card("assets/Mangalore Refinery and Petrochemicals Limited.png", "Mangalore Refinery & Petrochemicals", "Exploration", "Mangaluru", "1988"),
          card("assets/Oil and Natural Gas Corporation.png", "Oil and Natural Gas Co.", "Exploration", "Dehradun", "1956"),
          card("assets/oil-india-limited.png", "Oil India", "Exploration", "Duliajan", "1959"),
          card("assets/Petronet LNG.jpg", "Petronet LNG", "Exploration", "New Delhi", "1988"),
          card("assets/reliance-petrol.jpg", "Reliance Petroleum", "Exploration", "Ahmedabad", "2008"),
          Text("Updating more companies soon.......\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}