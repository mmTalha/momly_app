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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                        ),
                        Image.asset('images/Icon1.png'),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Color(0xffE4DFFF),
                              border: Border.all(
                                color: Color(0xff7265E3),
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              'en',
                              style: TextStyle(
                                  color: Color.fromRGBO(114, 101, 227, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Momly',
                      style: TextStyle(
                          color: Color.fromRGBO(114, 101, 227, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
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
                    buttons().onboardingbutton(
                        'images/Brands-google.png',
                        'Continue with Google',
                        Colors.white,
                        Colors.black,
                        14.0,
                        FontWeight.w500, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => name_screen()),
                      );
                    }),
                    SizedBox(
                      height: 15,
                    ),
                    buttons().onboardingbutton(
                        'images/apple.png',
                        'Continue with Apple',
                        Colors.black,
                        Colors.white,
                        16.0,
                        FontWeight.bold,
                        () {}),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "or",
                        style: TextStyle(
                            color: Color.fromRGBO(134, 134, 134, 1),
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: " Continue as Guest",
                        style: TextStyle(
                            color: Color(0xff7265E3),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ])),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
