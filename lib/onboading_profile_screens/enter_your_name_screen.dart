import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';

import 'enter_your_date_of_birth_screen.dart';

class Enter_Your_name_screen extends StatelessWidget {
  const Enter_Your_name_screen({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: Container(
        padding: EdgeInsets.only(top: 15,bottom: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
             Column(
               children: [


                 Center(
                   child: Text('Let’s start with your\n Name',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                         fontWeight: FontWeight.w500
                     ),),
                 ),
                 SizedBox(height: 20,),
                 Center(
                   child: Text('How should we call you?',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Color.fromRGBO(76, 89, 128, 1),
                         fontSize: 14,
                         fontWeight: FontWeight.w400
                     ),),
                 ),
                 SizedBox(height: 20,),
                 Center(
                   child: Container(
                     width: 275,
                     height: 50,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(10))),
                     child: TextField(
                       keyboardType: TextInputType.phone,
                       decoration: InputDecoration(
                           suffixStyle: TextStyle(color: Colors.grey),

                           prefixStyle: TextStyle(color: Colors.grey),

                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                                 color: Color.fromRGBO(242, 242, 242, 1),
                               )),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(
                                 color: Color.fromRGBO(242, 242, 242, 1),
                               )),
                           errorBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.red)),
                           focusedErrorBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide(color: Colors.red))),
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 buttons,
               ],
             ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "By continuing, you agree to Momly’s",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: " Terms & Conditions\n",
                        style: TextStyle(
                            color: Color.fromRGBO(114, 101, 227, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                      text:
                      "and confirm that you have read Momly’s",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text:
                      " Privacy Policy",
                      style: TextStyle(
                          color: Color.fromRGBO(114, 101, 227, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),

                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
