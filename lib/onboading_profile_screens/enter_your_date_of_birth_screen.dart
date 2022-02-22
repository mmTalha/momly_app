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
            SizedBox(height: 20,),


            Center(
              child: Text('When did you born?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Please enter your date of birth.',
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
      ),
    );
  }
}
