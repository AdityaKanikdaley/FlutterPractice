import 'package:flutter/material.dart';
import 'package:indian_companies/card.dart';

Widget banks(BuildContext context){
  return
    Column(
        children: <Widget>[
          card(context,"assets/banks/axis bank.png", "Axis Bank", "Financials", "Ahmedabad", "1993",""),
          card(context,"assets/banks/Bank_of_Baroda_logo.png", "Bank of Baroda", "Financials", "Vadodara", "1908",""),
          card(context,"assets/banks/bank of india.png", "Bank of India", "Financials", "Mumbai", "1906",""),
          card(context,"assets/banks/Canara-Bank-logo.png", "Canara Bank", "Financials", "Banglore", "1906",""),
          card(context,"assets/banks/central-bank-of-india-logo-vector.png", "Central Bank of India", "Financials", "Mumbai", "1911",""),
          card(context,"assets/banks/dena-bank-logo.png", "Dena Bank", "Financials", "Mumbai", "1938",""),
          card(context,"assets/banks/HDFC-Bank-Logo-PNG.png", "HDFC Bank", "Financials", "Mumbai", "1994",""),
          card(context,"assets/banks/icici_bank_logo_symbol.png", "ICICI Bank", "Financials", "Mumbai", "1994",""),
          card(context,"assets/banks/idbi-bank-logo.png", "IDBI Bank", "Financials", "Mumbai", "1964",""),
          card(context,"assets/banks/indian-bank-logo.png", "Indian Bank", "Financials", "Chennai", "1907",""),
          card(context,"assets/banks/Indusind-bank-logo.png", "IndusInd Bank", "Financials", "Mumbai", "1994",""),
          card(context,"assets/banks/state-bank-of-india.png", "State Bank of India", "Financials", "Mumbai", "1806",""),
          card(context,"assets/banks/uco-bank-logo.png", "UCO Bank", "Financials", "Kolkata", "1943",""),
          card(context,"assets/banks/union-bank-of-india-logo.png", "Union Bank of India", "Financials", "Mumbai", "1919",""),
          card(context,"assets/banks/yes-bank-logo.png", "Yes Bank", "Financials", "Mumbai", "2004",""),
          card(context,"assets/banks/Kotak_Mahindra_Bank_logo.png", "Kotak Mahindra Bank", "Financials", "Mumbai", "1965",""),
          // card("assets/banks/city-union-bank-logo.png", "City Union Bank", "Financials", "Kumbakonam", "1904"),
          // card("assets/banks/Karnataka_Bank_.png", "Karnataka Bank", "Financials", "Mangaluru", "1924"),
          // card("assets/banks/indian-overseas-bank-logo.png", "Indian Overseas Bank", "Financials", "Chennai", "1937"),
          Text("Updating more companies soon.......",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
        ]
    );

}