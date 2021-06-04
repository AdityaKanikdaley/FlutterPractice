import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget{
  bottomNavBar(this.pageNumber);
  int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeeeeee),
      padding: EdgeInsets.fromLTRB(12, 0, 12, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          //home
          new Container(
            padding: EdgeInsets.all(2),
            width: 63, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 1 ? Colors.blue[300] : Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black.withOpacity(0.26),
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeeeeee),
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
                      Icon(Icons.home_outlined),
                      Text("Home")
                    ],
                  )
              ),
            ),
          ),

          //week
          new Container(
            padding: EdgeInsets.all(2),
            width: 63, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 2 ? Colors.blue[300] : Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black.withOpacity(0.26),
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeeeeee),
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
                      Icon(Icons.calendar_today_outlined),
                      Text("Week")
                    ],
                  )
              ),
            ),
          ),

          //buy
          new Container(
            padding: EdgeInsets.all(2),
            width: 63, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 3 ? Colors.blue[300] : Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black.withOpacity(0.26),
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeeeeee),
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
                      Icon(Icons.shopping_bag_outlined),
                      Text("Buy")
                    ],
                  )
              ),
            ),
          ),

          //labs
          new Container(
            padding: EdgeInsets.all(2),
            width: 63, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 4 ? Colors.blue[300] : Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black.withOpacity(0.26),
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {
                    print("labs pressed");
                    Navigator.pushReplacementNamed(context, '/lab');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.whatshot_outlined),
                      Text("Labs")
                    ],
                  )
              ),
            ),
          ),

          //profile
          new Container(
            padding: EdgeInsets.all(2),
            width: 63, height: 63,
            decoration: BoxDecoration(
                color: pageNumber == 5 ? Colors.blue[300] : Color(0xffeeeeee),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow( //bottom
                    color: Colors.black.withOpacity(0.26),
                    offset: Offset(6, 6),
                    blurRadius: 10,
                  ),
                  BoxShadow( //top
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 6.0,
                  )
                ]
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffeeeeee),
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
                      Icon(Icons.person_outline),
                      Text("Profile")
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
