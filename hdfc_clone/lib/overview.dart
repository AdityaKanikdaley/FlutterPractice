import 'package:flutter/material.dart';
import 'package:hdfc_clone/drawer.dart';

class overview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future<void> _alertDialog() async {
      switch(await showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              content: Text("Are you sure you want to Logout?"),
              title: Text("Logout?"),
              actions: <Widget>[
                FlatButton(
                    onPressed: ()=> Navigator.pop(context, "Yes"),
                    child: const Text("Yes")),
                FlatButton(
                    onPressed: ()=> Navigator.pop(context, "No") ,
                    child: const Text("No")),
              ],
            );
          })){
        case "Yes":
             Navigator.of(context).pop(); break;
        // case "No":
             // Navigator.of(context).pop(); break;
      }
      }

    final _page = ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: new Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10,30,10,20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Savings Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Available Balance", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),),
                      IconButton(icon: Icon(Icons.arrow_forward_ios_sharp, color: Colors.blue,),
                          onPressed: () => print("account pressed"))
                    ],
                  ),
                  // SizedBox(height: 2),
                  Text("Rs. 0.00", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(6.0),
            child: new Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text("Register your billers and", style: TextStyle( fontSize: 19)),
                    Text("pay all your bills with 2 ", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19)),
                    Text("clicks", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19)),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: ()=> print("add biller pressed"),
                      color: Colors.blueAccent,
                      elevation: 2,
                      child: Text("ADD BILLER", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
        )
      ],
    );




    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
            appBar: new AppBar(
              actions: [
                PopupMenuButton(itemBuilder: (context) => [
                  PopupMenuItem(child: InkWell(onTap: null, child: Text("Contact Us"))),
                  PopupMenuItem(child: InkWell(onTap: null, child: Text("FAQs")))
                ],
                  icon: ImageIcon(AssetImage("pics/question_mark.png"), color: Colors.white),
                ),
                IconButton(icon: Icon(
                    Icons.power_settings_new_sharp), 
                    onPressed: _alertDialog)
                
              ],
              title: new Text("Menu"),
              bottom: new TabBar(
                  tabs: <Widget>[
                    new Tab(text: "Overview"),
                    new Tab(text: "Favorites"),
                  ]
              ),
            ),
          drawer: new Drawer(
            child: drawer(),
          ),
          body: new TabBarView(
              children: <Widget>[
                  new Container(
                      color: Colors.deepOrangeAccent,
                      child: new Center(
                        child: _page
                    ),
                  ),
                  new Container(
                    color: Colors.blueGrey,
                    child: new Center(
                      child: new Text(
                        "Second"
                      ),
                    ),
                  ),
          ]),
        )
    );
  }
  
}