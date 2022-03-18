import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:momly_app/Pregnancy/screen1.dart';
import 'package:momly_app/Pregnancy/screen3.dart';
import 'package:momly_app/Pregnancy/screen7.dart';
import 'package:momly_app/Pregnancy/screen9.dart';
import 'package:momly_app/book_appointment_screens/appointsmenty_screen.dart';
import 'package:momly_app/momly_Academy_screens/moomly_Academy_screen.dart';
import 'package:momly_app/new_tracker_entry/new_tracker_entry.dart';
import 'package:momly_app/notification_profile/notification_screen.dart';
import 'package:momly_app/notification_profile/screen13.dart';
import 'package:momly_app/notification_profile/screen18.dart';
import 'package:momly_app/notification_profile/screen19.dart';
import 'package:momly_app/period_tracker_screens/period_calendar.dart';
import 'package:momly_app/period_tracker_screens/period_calender_1.dart';
import 'package:momly_app/stats/screen23.dart';
import 'package:momly_app/widgets/widgets.dart';

class screen22 extends StatefulWidget {
  const screen22({Key? key}) : super(key: key);

  @override
  _screen22State createState() => _screen22State();
}

class _screen22State extends State<screen22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                left: 30,
              ),
              child: Icon(Icons.arrow_back_ios_outlined,
                  size: 27, color: Color(0xff4C5980)),
            ),
            automaticallyImplyLeading: false,
            border: Border(bottom: BorderSide(color: Colors.transparent)),
            middle: Text(
              "Momly",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2D3142)),
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) => screen23()),
              );
            },
            child: ListView(
              children: [
                lisst().Lisst('assets/track.png', "Tracker History"),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                new_tracker_entry())),
                    child: lisst()
                        .Lisst('assets/newtrac.png', "New Tracker Entry")),
                ExpansionTile(
                  initiallyExpanded: false,
                  tilePadding: EdgeInsets.only(right: -4),
                  childrenPadding: EdgeInsets.only(left: 30),
                  trailing: SizedBox.shrink(),
                  title: lisst().Lisst('assets/preg.png', "Pregnancy"),
                  children: [
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => screen3())),
                        child: lisst().Lisst('assets/Images.png', "Albums")),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => screen1())),
                        child: lisst()
                            .Lisst('assets/medi.png', "Test and Procedures")),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => screen7())),
                        child: lisst()
                            .Lisst('assets/Stopwatch.png', "Kick Counter")),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => screen9())),
                        child: lisst().Lisst(
                            'assets/Stopwatch.png', "Contraction Counter")),
                  ],
                ),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                moomly_Academy_Screen())),
                    child: lisst().Lisst('assets/acad.png', "Academy")),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                period_calendar1())),
                    child:
                        lisst().Lisst('assets/period.png', "Period Tracker")),
                lisst().Lisst('assets/hreport.png', "Health Report"),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => screen19())),
                    child: lisst().Lisst('assets/acess.png', "Direct Access")),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                notification_screen())),
                    child: lisst().Lisst('assets/noti.png', "Notifications")),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                appointments_screens())),
                    child:
                        lisst().Lisst('assets/Calendar.png', "Appointments")),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => screen13())),
                    child: lisst().Lisst('assets/profile.png', "Profiles")),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => screen18())),
                    child:
                        lisst().Lisst('assets/membership.png', "Membership")),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 24, color: Color(0xff525F84)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 10, bottom: 10),
                  child: Text(
                    "Terms   •   Privacy   •   momly.org",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
