import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';

class Notifications_screens extends StatelessWidget {
  const Notifications_screens({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Do you want to turn\n on notifications?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/Img.png'),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/Shape1.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Weekly updates for your profiles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(76, 89, 128, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/reminder.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Motivational reminders',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(76, 89, 128, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/Shape.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Health insights',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(76, 89, 128, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
              SizedBox(
                height: 20,
              ),
              buttons,
            ],
          ),
        ),
      ),
    );
  }
}
