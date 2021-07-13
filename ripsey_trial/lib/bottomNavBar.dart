import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget{
  bottomNavBar(this.pageNumber);
  int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      padding: EdgeInsets.fromLTRB(12, 0, 12, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          //home
          new Container(
            padding: EdgeInsets.all(2),
            width: 60, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 1 ? Colors.blue[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.grey[800],
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("home pressed");
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home_outlined, color: Colors.blue[300],size: 27,),
                      Text("Home", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.blue[800]),)
                    ],
                  )
              ),
            ),
          ),

          //week
          new Container(
            padding: EdgeInsets.all(2),
            width: 60, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 2 ? Colors.blue[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.grey[800],
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("week pressed");
                    Navigator.pushReplacementNamed(context, '/week');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_today_outlined, color: Colors.blue[300],size: 27,),
                      Text("Week", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.blue[800]))
                    ],
                  )
              ),
            ),
          ),

          //buy
          new Container(
            padding: EdgeInsets.all(2),
            width: 60, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 3 ? Colors.blue[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.grey[800],
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("buy pressed");
                    Navigator.pushReplacementNamed(context, '/buy');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_bag_outlined, color: Colors.blue[300],size: 27,),
                      Text("Buy", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.blue[800]))
                    ],
                  )
              ),
            ),
          ),

          //labs
          new Container(
            padding: EdgeInsets.all(2),
            width: 60, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 4 ? Colors.blue[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.grey[800],
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("labs pressed");
                    // Navigator.pushReplacementNamed(context, '/lab');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.whatshot_outlined, color: Colors.grey,size: 27,),
                      Text("Labs", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.grey))
                    ],
                  )
              ),
            ),
          ),

          //profile
          new Container(
            padding: EdgeInsets.all(2),
            width: 60, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 5 ? Colors.blue[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.grey[800],
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("profile pressed");
                    Navigator.pushReplacementNamed(context, '/profile');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_outline, color: Colors.blue[300],size: 27,),
                      Text("Profile", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: Colors.blue[800]))
                    ],
                  )
              ),
            ),
          ),

        ],
      ),
    );
  }
}
