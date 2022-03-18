import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/momly_Academy_screens/widgets.dart';

class notification_screen extends StatelessWidget {
  const notification_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.back),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Text(
                'Unread',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [

                Container(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Stack(
                      children: [
                        Container(
                          height: 68,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'images/Avatar.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                      Positioned(top: 40.0,left: 49.0,
                        child: Container(height: 20.0,width: 20.0,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),

                          //child: Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),),
                        ),
                      ),
                    Positioned(top: 43,left: 52,
                      child: Container(height: 12.0,width: 12.0,decoration: BoxDecoration(color: Color(0xff7FE3F0),borderRadius: BorderRadius.circular(10)),
                      )),
                      ]),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tommy Parker',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                        Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffE1DDF5)),
                          child: Center(
                            child: Text('Sponsored',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff7265E3),
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Text('commented your post.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(76, 89, 128, 1),
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
      Row(
        children: [
          Container(
              child: Stack(
                children:[ Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(143, 172, 255, 1)),
                      child: Image.asset('assets/drop.png')),
                ),
                  Positioned(top: 43.5,left: 49.0,
                    child: Container(height: 20.0,width: 20.0,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),

                      //child: Container(height: 5,width: 5,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),),
                    ),
                  ),
                  Positioned(top: 47,left: 52,
                      child: Container(height: 12.0,width: 12.0,decoration: BoxDecoration(color: Color(0xff7FE3F0),borderRadius: BorderRadius.circular(10)),
                      )),

                ]
              )),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Drink more',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 9,
              ),
              Text('You drink less than 200ml today',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(76, 89, 128, 1),
                      fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
            // academy_Widgets().tile(
            //     'assets/drop.png',
            //     'Drink more',
            //     'You drink less than 200ml today',
            //     Color.fromRGBO(143, 172, 255, 1)),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Earlier',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            academy_Widgets().tile(
                'assets/run.png',
                'Daily Target',
                'Congrats you just hit your goal!',
                Color.fromRGBO(175, 142, 255, 1)),
            SizedBox(
              height: 10,
            ),
            academy_Widgets().tile(
                'images/achievement.png',
                'Achievement',
                'You are the first among your friends',
                Color.fromRGBO(31, 135, 254, 1)),
            SizedBox(
              height: 10,
            ),
            academy_Widgets().tile(
                'assets/aple.png',
                'Nutrition',
                'Your breakfast has high cals',
                Color.fromRGBO(89, 185, 253, 1)),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
