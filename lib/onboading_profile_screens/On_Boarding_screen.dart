import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/linear_controller.dart';

import 'enter_your_name_screen.dart';

class on_boarding_screen extends StatelessWidget {
  const on_boarding_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,


      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

           Column(
             children: [
               Align(
                 alignment: Alignment.topRight,
                 child: Container(
                   height: 35,width:35,
                     decoration: BoxDecoration(
                         border: Border.all(
                         color: Colors.black,
                         ),
                         borderRadius: BorderRadius.all(Radius.circular(20))
                     ),
                     child: Center(
                       child: Text(
                         'en',
                         style: TextStyle(
                             color: Color.fromRGBO(114, 101, 227, 1),
                             fontSize: 15,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                 )
               ),
               Align(
                   alignment:Alignment.center,
                   child: Image.asset('images/Icon1.png')),
               Text(
                 'Momly',
                 style: TextStyle(
                     color: Color.fromRGBO(114, 101, 227, 1),
                     fontSize: 28,
                     fontWeight: FontWeight.bold),
               ),
               SizedBox(height: 5,),
               Text(
                 'Health Tracker',
                 style: TextStyle(
                     color: Color.fromRGBO(76, 89, 128, 1),
                     fontSize: 16,
                     fontWeight: FontWeight.w500),
               ),
             ],
           ),
              Column(
                children: [
                  buttons().onboardingbutton('images/Brands-google.png', 'Continue with Google',Colors.white,Colors.black,(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              name_screen()),

                    );
                  }),
                  SizedBox(height: 10,),
                  buttons().onboardingbutton('images/apple.png','Continue with Apple',Colors.black,Colors.white,(){}),
                  SizedBox(height: 10,),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "or",


                          style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                        ),
                        TextSpan(
                          text: " Continue as Guest",
                          style: TextStyle(
                            color: Color.fromRGBO(114, 101, 227, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),



                        ),
                      ])),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
