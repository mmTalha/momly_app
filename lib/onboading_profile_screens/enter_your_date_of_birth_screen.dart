import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/choose_your_gender.dart';

class date_of_birth_screen extends StatelessWidget {
  const date_of_birth_screen({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'When did you born?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff2D3142),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Center(
              child: Text(
                'Please enter your date of birth.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 30,
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
                        offset: Offset(0, 3), // changes position of shadow
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
      ),
    );
  }
}
