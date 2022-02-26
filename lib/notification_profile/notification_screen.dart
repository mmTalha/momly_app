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
      body: Column(
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
          Container(
            child: Text(
              'Unread',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Container(

                  child:
                  Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                      )
                      ,
                      child: Image.asset('images/Avatar.png',fit: BoxFit.cover,))),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children:  [
                      Text('Daily target',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      SizedBox(width: 60,),
                      Container(

                        height:20,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffE1DDF5)
                        ),
                        child:  Center(
                          child: Text('Sponsored',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff7265E3),
                                  fontWeight: FontWeight.w600)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),

                  Text('Congrats you just hit your goal!',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(76, 89,128 , 1),
                          fontWeight: FontWeight.w400)),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          academy_Widgets().tile('images/achievement.png','Drink more','You drink less than 200ml today',Color.fromRGBO(31, 135,254 , 1)),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
