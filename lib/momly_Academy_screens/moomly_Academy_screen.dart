import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/momly_Academy_screens/home_Activities.dart';
import 'package:momly_app/momly_Academy_screens/search_Academy2_screen.dart';
import 'package:momly_app/momly_Academy_screens/sleep_with_bedtime_screen.dart';
import 'package:momly_app/new_tracker_entry/health_screen.dart';
import 'package:momly_app/new_tracker_entry/mood_screen.dart';

import 'search_moomly_Academy_screen.dart';

class moomly_Academy_Screen extends StatelessWidget {
  const moomly_Academy_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      appBar: CupertinoNavigationBar(
        backgroundColor: theme().backgroundcolour,
        leading: Icon(CupertinoIcons.back),
        trailing: Icon(CupertinoIcons.search),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Momly Academy',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => Search_Academy_Screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset('images/Smiley Happy2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Home Activities',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>  search_Academy_screen_2()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset('images/Heartbeat2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Behavior',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),

              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => mood_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset(
                            'images/1.png',
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Category x ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => mood_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset('images/Heartbeat2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Behavior',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => Home_Activities_Screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40, child: Image.asset('images/Brain2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Know your child  ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => mood_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset(
                            'images/Vector2.png',
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Category y',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => sleep_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset(
                            'images/icon-weight.png',
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Category '
                          'z',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => mood_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 40,
                          child: Image.asset(
                            'images/icon-weight.png',
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          'Get a Second Opinion ',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(45, 49, 66, 1),
                          ),
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
