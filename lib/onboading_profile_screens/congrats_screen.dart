import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/dashboard_screens/dashboard_screen.dart';
import 'package:momly_app/onboading_profile_screens/linear_controller.dart';

class congrats_screen extends StatelessWidget {
  const congrats_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Notification.png',
                      height: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Richard',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Male, 4yrs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(76, 89, 128, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Congratulations',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'You created a new profile. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Tap the button below to see the\n profile overview & start creating\n tracker entries for Richard.',
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
            buttons().largebuttons('Continue', () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => dashboard_screens()));
            }),
          ],
        ),
      ),
    );
  }
}
