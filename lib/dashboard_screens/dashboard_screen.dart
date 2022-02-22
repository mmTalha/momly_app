import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/apptheme/modal_sheet.dart';
import 'package:momly_app/book_appointment_screens/appointsmenty_screen.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/details_screen/details_emty_screen.dart';
import 'package:momly_app/details_screen/mood_%20details.dart';
import 'package:momly_app/survey_screens/your_opinioin_matter_screen.dart';

class dashboard_screens extends StatelessWidget {
  const dashboard_screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Row(
                      children: [
                        Icon(
                          Icons.wb_sunny,
                          size: 15,
                          color: Color.fromRGBO(114, 101, 227, 1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'TUE 13 OCT',
                          style: TextStyle(
                              color: Color.fromRGBO(114, 101, 227, 1),
                              fontSize: 12),
                        ),
                      ],
                    ),
                    trailing: Image.asset(
                      'images/Group.png',
                      height: 24,
                    ),
                    subtitle: Text(
                      'Hi, Grace',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Notification.png',
                        height: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Today’s Summary',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: GridView.extent(
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 200.0,
                    childAspectRatio: 4 / 3,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(140, 128, 248, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('MOOD',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Center(child: Image.asset('images/mood.png')),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Happy',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('3 days ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(175, 142, 255, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('HEALTH',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 25,
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title: Row(
                                children: [
                                  Text(
                                    '7 ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'symptoms ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              trailing: Image.asset(
                                'images/Path 1342.png',
                                height: 24,
                              ),
                              subtitle: Text('7hrs ago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(200, 128, 248, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Blood PRESSURE',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 25,
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title: Text(
                                '12/7mmHg ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Image.asset(
                                'images/1.png',
                                height: 24,
                              ),
                              subtitle: Text('7hrs ago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(31, 135, 254, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WATER',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 25,
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title: Text(
                                'Tap here to add',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              trailing: Image.asset(
                                'images/glass.png',
                                height: 24,
                              ),
                              subtitle: Text('Never',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(128, 176, 248, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('PULSE',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 25,
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title: Text(
                                '71bpm ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Image.asset(
                                'images/Path 3565.png',
                                height: 24,
                              ),
                              subtitle: Text('3mins ago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(76, 89, 128, 1),
                            borderRadius: BorderRadius.circular(15)),
                        height: 250,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 2,
                            ),
                            Center(child: Image.asset('images/Group 13.png')),
                            SizedBox(
                              height: 5,
                            ),
                            Text('128lbs',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('21sec ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Image.asset('images/List.png'),
                      Text('Momly Academy',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) =>
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(15),
                                height: 290,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'images/coveroutdoor.png',
                                      fit: BoxFit.cover,
                                      width: 350,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 25, right: 25),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              '20-minutes Outdoor Can\nMake You Less Stress',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600)),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'images/Avatar-Image.png',
                                                    height: 24,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text('Jimmy Abrahamson',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromRGBO(
                                                              76, 89, 128, 1),
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ],
                                              ),
                                              Icon(Icons.favorite_border)
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 30,right: 20,
                    ),
                    height: 300,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(244, 246, 250, 1),
                    ),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Get a second opinion',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                        dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),
                        dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),
                        Center(
                          child: buttons().largebuttons('See all Doctors', () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      appointments_screens()),
                            );;
                          }),
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(244, 246, 250, 1),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Today',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromRGBO(76, 89, 128, 1),
                                      fontWeight: FontWeight.w400)),
                              Image.asset('images/listdropdown.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          dashboard_Widgets().moodwidget(() {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Empty_details_screens()),
                            );
                          },
                              context,
                              'MOOD',
                              'I feel Great',
                              'You do not setup a family member profile yet.\nTap the following button to setup one.',
                              'images/5bb48b07fa6e3840bb3afa2bc821b882.png',
                              'images/StarEyes.png',
                              '1h ago'),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: buttons().largebuttons('GO TO PROFILE', () {
                              modelsheet().bottomsheet(context);
                            }),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
