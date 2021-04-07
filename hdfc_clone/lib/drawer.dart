import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd-mm-yyyy');
    final String dt = formatter.format(now);


    return Container(
      decoration: BoxDecoration(
          color: Color(0xff5500FF)
      ),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: new Text("123456789"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("pics/bg.jpg"),
              ),
              accountEmail: new Text("Last Login ${dt}")
          ),

          //STANDARD
          new ListTile(
            title: Text("STANDARD"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: ()=> print("standard tapped"),
            tileColor: Colors.white,
          ),

          //HOME
          new ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("HOME"),
            tileColor: Color(0xFF0000A0),
            onTap: ()=> print("home tapped"),
          ),

          //PAY
          new ExpansionTile(
            leading: Icon(Icons.payment_sharp),
            title: Text("PAY"),
            subtitle: Text("UPI, Money Transfer, Cards"),
            children: <Widget>[
              InkWell(
                onTap: ()=> print("upi"),
                child: Text("UPI Payment"),
              ),
              InkWell(
                onTap: ()=> print("money transfer"),
                child: Text("Money Transfer"),
              ),
              InkWell(
                onTap: ()=> print("cards from drawer"),
                child: Text("Cards"),
              ),
              InkWell(
                onTap: ()=> print("recharge"),
                child: Text("Recharge"),
              ),
              InkWell(
                onTap: ()=> print("bill pay"),
                child: Text("Bill Pay"),
              ),
              InkWell(
                onTap: ()=> print("cheques"),
                child: Text("Cheques"),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
