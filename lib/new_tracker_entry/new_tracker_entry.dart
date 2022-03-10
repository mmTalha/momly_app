import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/new_tracker_entry/Create_new_medification_screen.dart';
import 'package:momly_app/new_tracker_entry/Enter_vaccine_detail_screen.dart';
import 'package:momly_app/new_tracker_entry/add_new_nutrition.dart';
import 'package:momly_app/new_tracker_entry/add_water_screen.dart';
import 'package:momly_app/new_tracker_entry/addnew_skill_screen.dart';
import 'package:momly_app/new_tracker_entry/blood_glucoose_screen.dart';
import 'package:momly_app/new_tracker_entry/blood_pressure_screen.dart';
import 'package:momly_app/new_tracker_entry/create_new_sleep_entry.dart';
import 'package:momly_app/new_tracker_entry/enter_your_height_screen.dart';
import 'package:momly_app/new_tracker_entry/fever_screen.dart';
import 'package:momly_app/new_tracker_entry/head_screen.dart';
import 'package:momly_app/new_tracker_entry/health_screen.dart';
import 'package:momly_app/new_tracker_entry/mood_screen.dart';
import 'package:momly_app/new_tracker_entry/new%20pop_entry.dart';
import 'package:momly_app/new_tracker_entry/pee_entry_screen.dart';
import 'package:momly_app/new_tracker_entry/pulse_screen.dart';
import 'package:momly_app/new_tracker_entry/respiration_screen.dart';
import 'package:momly_app/new_tracker_entry/saturation_level_screen.dart';
import 'package:momly_app/new_tracker_entry/whats_your_weight_screen.dart';

class new_tracker_entry extends StatelessWidget {
  const new_tracker_entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          height: 130,
          child: CupertinoNavigationBar(
            padding: EdgeInsetsDirectional.only(
              top: 30,
            ),
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child:
                  Icon(CupertinoIcons.back, size: 27, color: Color(0xff4C5980)),
            ),
            automaticallyImplyLeading: false,
            border: Border(bottom: BorderSide(color: Colors.transparent)),
            middle: Text(
              'Create',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            backgroundColor: theme().backgroundcolour,
          ),
        ),
      ),
      // appBar: CupertinoNavigationBar(
      //   backgroundColor: theme().backgroundcolour,
      //   leading: Icon(CupertinoIcons.back),
      //   middle: Text(
      //     'Create',
      //     style: TextStyle(
      //         color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
      //   ),
      //   border: Border.all(
      //     color: Colors.transparent,
      //     width: 0.0,
      //     style: BorderStyle.none,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Notification.png',
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Create new entry\nfor Richard',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/icon-down.png',
                    height: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => mood_screen()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Smiley Happy2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Mood',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                health_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Heartbeat2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Health',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                add_new_skill_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Brain2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Skill',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                blood_pressure_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 27,
                          width: 27,
                          child: Image.asset('images/pressure.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Blood Pressure  ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => pulse_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Vector2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pulse',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                blood_glucose_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon5.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Blood Glucose  ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => fever_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Thermometer.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Fever ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                weight_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon-weight.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Weight ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                Enter_your_height_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/height2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => head_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/height2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Head  ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                create_new_sleep_entry()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/sleep2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sleep',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                pee_entry_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/pee2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Pee',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                new_pop_entry()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/poop2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Poop ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                add_new_nutrition_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/nutrition2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Nutrition ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => add_water()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/water2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Water ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                Create_new_medification_entry()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Pill.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Medication  ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                saturation_level_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/h201.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Saturation',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                respiration_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/2.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Respiration Rate',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                Enter_vaccine_details_screen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/Syringe.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Vaccine',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(45, 49, 66, 1),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
