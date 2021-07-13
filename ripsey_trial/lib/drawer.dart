import 'package:flutter/material.dart';

Widget drawer(BuildContext context){
  return
      Container(
        color: Color(0xff0e92b3),
        child: ListView(
          children: [

            //avatar & theme-switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //avatar
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 46.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("assets/me.jpg", ),
                          // child: Image.asset("assets/me.jpg"),
                        ),
                      ),
                      Text('Aditya Kanikdaley', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(height: 3),
                      Text('9479238157', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),),
                    ],
                  ),
                ),

                //icon-theme
                // IconButton(onPressed: (){}, icon: Icon(Icons.wb_sunny_outlined))
              ],
            ),

            SizedBox(height: 12),

            new Container(height: 1.5, color: Colors.grey),

            //home
            new ListTile(
              onTap: () {
                print("home pressed");
                Navigator.pushReplacementNamed(context, '/home');
              },
              leading: Icon(Icons.home_outlined, color: Colors.white, size: 30,),
              title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //health record
            new ListTile(
              leading: Icon(Icons.person_outline, color: Colors.white, size: 30,),
              title: Text('Health Record', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //ripseyLabs
            new ListTile(
              leading: Icon(Icons.whatshot_outlined, color: Colors.grey, size: 30,),
              title: Text('Ripsey Labs', style: TextStyle(color: Colors.grey, fontSize: 16)),
            ),

            //reminders
            new ListTile(
              leading: Icon(Icons.doorbell_outlined, color: Colors.white, size: 30,),
              title: Text('Reminders', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //order history
            new ListTile(
              leading: Icon(Icons.history_outlined, color: Colors.white, size: 30,),
              title: Text('Order History', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //faq
            new ListTile(
              leading: Icon(Icons.question_answer_outlined, color: Colors.white, size: 30,),
              title: Text('FAQ', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            ///legal
            new ListTile(
              leading: Icon(Icons.local_police_outlined, color: Colors.white, size: 30,),
              title: Text('Legal', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //contact us
            new ListTile(
              leading: Icon(Icons.call_outlined, color: Colors.white, size: 30,),
              title: Text('Contact Us', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            //log out
            new ListTile(
              onTap: () {
                print("logout pressed");
                Navigator.pushReplacementNamed(context, '/');
              },
              leading: Icon(Icons.login_outlined, color: Colors.white, size: 30,),
              title: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),

            new Container(height: 1.5, color: Colors.grey),

            //version
            new ListTile(
              leading: Text('V 2.0.68', style: TextStyle(color: Colors.white, fontSize: 14)),
            ),

          ],
        ),
      );
}