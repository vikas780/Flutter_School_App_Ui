import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


import 'light_header.dart';

class Light extends StatefulWidget {
  @override
  _LightState createState() => _LightState();
}

class _LightState extends State<Light> {
  int currentindex =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 8,right: 10,top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.bar_chart,
                    color: Colors.black,
                    size: 30,
                  ),
                      onPressed: (){}

                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Shadow's",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            letterSpacing: 1,
                            fontFamily: 'Gilroy-ExtraBold',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: Colors.black26, //Color(0xffa29aac),
                            fontSize: 18,
                            letterSpacing: 1,
                            fontFamily: 'Gilroy-ExtraBold',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset(
                      "assets/notification.png",
                      width: 24,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Lgrid(),

          ],
        ),
        bottomNavigationBar:CurvedNavigationBar(
          backgroundColor: Color(0xff392850),
          buttonBackgroundColor:Colors.white ,
          color: Colors.white,
          animationCurve:Curves.easeInOutBack,
          height: 50,
          items: [
            Icon(Icons.home,size: 20),
            Icon(Icons.list ,size: 20),
            Icon(Icons.add ,size: 20),
            Icon(Icons.merge_type ,size: 20),
          ],
          onTap: (index) {
            //Handle button tap
            setState(() {
              currentindex =index;

            });
          },
        ),

      ),


    );
  }
}
