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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.83,
          padding: EdgeInsets.only(top: 25, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Let’s start with your\n Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff2D3142),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'How should we call you?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(76, 89, 128, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      width: 275,
                      height: 58,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff4075CD).withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
                  SizedBox(
                    height: 20,
                  ),
                  buttons,
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "By continuing, you agree to Momly’s",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: " Terms & Conditions\n",
                          style: TextStyle(
                              color: Color.fromRGBO(114, 101, 227, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                        text: "and confirm that you have read Momly’s",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: " Privacy Policy",
                        style: TextStyle(
                            color: Color.fromRGBO(114, 101, 227, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
