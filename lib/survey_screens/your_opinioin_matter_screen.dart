import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/dashboard_screens/dashboard_screen.dart';
import 'package:momly_app/survey_screens/second_screen.dart';


class opinion_screen extends StatelessWidget {
  const opinion_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/icon-down.png'),
              SizedBox(height: 15,),
              Center(
                child: Text('Your opinion matters',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 410,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/opinoio.png',fit: BoxFit.cover,width: 330,),

                     Container(
                       padding: EdgeInsets.only(left: 15,right: 15,top: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('WELLNESS',
                               style: TextStyle(
                                   fontSize: 14,
                                   color: Color.fromRGBO(114, 101, 227, 1),
                                   fontWeight: FontWeight.w400)),
                           SizedBox(height: 10,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Sleep With Me\nBedtime Stories',
                                   textAlign: TextAlign.start,
                                   style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.black,
                                       fontWeight: FontWeight.bold)),
                               SizedBox(height: 15,),
                               Container(
                                 width: 45,
                                 height: 30,
                                 decoration: BoxDecoration(
                                   color: Color.fromRGBO(228, 223, 255, 1),
                                   borderRadius: BorderRadius.circular(22),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [

                                    Image.asset('images/message1.png',height: 12,),
                                     Text('517',style: TextStyle(fontSize: 12),)
                                   ],
                                 ),

                               ),
                             ],
                           ),
                           SizedBox(height: 5,),
                           Container(


                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(10))),

                             height:45,
                             width: 350,
                             child:
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 30,
                                   width:30,
                                   decoration: BoxDecoration(
                                     color: Color.fromRGBO(209, 204, 234, 1),
                                     borderRadius: BorderRadius.all(
                                       Radius.circular(20),
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 5,),
                                 Text(
                                   'Mindfullness of Breath',
                                   textAlign: TextAlign.center,
                                   softWrap: true,
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400),
                                 ),

                               ],
                             ),



                           ),
                           Container(


                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(10))),

                             height:45,
                             width: 350,
                             child:
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 30,
                                   width:30,
                                   decoration: BoxDecoration(
                                     color: Color.fromRGBO(209, 204, 234, 1),
                                     borderRadius: BorderRadius.all(
                                       Radius.circular(20),
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 5,),
                                 Text(
                                   'A Meditation Lullaby',
                                   textAlign: TextAlign.center,
                                   softWrap: true,
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400),
                                 ),

                               ],
                             ),



                           ),
                           Container(


                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(10))),

                             height:45,
                             width: 350,
                             child:
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(
                                   height: 30,
                                   width:30,
                                   decoration: BoxDecoration(
                                     color: Color.fromRGBO(209, 204, 234, 1),
                                     borderRadius: BorderRadius.all(
                                       Radius.circular(20),
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 5,),
                                 Text(
                                   'The Twilight Zone',
                                   textAlign: TextAlign.center,
                                   softWrap: true,
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400),
                                 ),

                               ],
                             ),



                           ),


                         ],
                       ),
                     ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: buttons().largebuttons('Submit Response', () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => second_screen()));

                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
