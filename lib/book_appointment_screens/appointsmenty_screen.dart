import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/book_appointment_screens/widgets/Widgets.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';

class appointments_screens extends StatelessWidget {
  const appointments_screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset(
                    'images/2 image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 33,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                bottom: 0,
                child: Container(
                    height: MediaQuery.of(context).size.height + 10,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 20),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(35.0),
                          topRight: const Radius.circular(35.0),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Momly Consultıng servıces',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(114, 101, 227, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Appointments',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                onTap: () {
                                  widgets_appointmentscreen()
                                      .choosedaterange(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 35,
                                  height: 35,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color.fromRGBO(114, 101, 227, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          widgets_appointmentscreen().appoint_screen_field(
                              null, Icons.search, 'Search appointments'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 20, top: 30, bottom: 10),
                            width: 325,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TELEMEDICINE',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(114, 101, 227, 1),
                                      fontWeight: FontWeight.w600),
                                ),
                                widgets_appointmentscreen().doctorcard(
                                    Container(
                                        height: 25,
                                        width: 30,
                                        child: Image.asset('assets/dorr.png')),
                                    'Prof. Dr. Deniz Konya',
                                    'Neurosurgery'),
                                widgets_appointmentscreen().doctorcard(
                                  Container(
                                      height: 25,
                                      width: 30,
                                      child: Icon(Icons.calendar_today)),
                                  'Thursday, 6 Feb 2020',
                                  '6:30 PM - 7:30 PM',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: Container(
                                    width: 180,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(228, 223, 255, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Join Meeting',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                114, 101, 227, 1),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 30, bottom: 10),
                            width: 325,
                            height: 240,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CLINIC APPOINTMENT',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(114, 101, 227, 1),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().doctorcard(
                                    Container(
                                        height: 25,
                                        width: 30,
                                        child: Image.asset('assets/dorr.png')),
                                    'Prof. Dr. Deniz Konya',
                                    'Neurosurgery'),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().doctorcard(
                                  Container(
                                      height: 25,
                                      width: 30,
                                      child: Icon(Icons.calendar_today)),
                                  'Thursday, 6 Feb 2020',
                                  '6:30 PM - 7:30 PM',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().doctorcard(
                                  Container(
                                      height: 25,
                                      width: 30,
                                      child: Icon(Icons.location_on)),
                                  'Commonwealth Club',
                                  '110 The Embarcadero, San Fransisco',
                                ),
                                SizedBox(height: 11),
                                Center(
                                  child: Container(
                                    width: 180,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 241, 248, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Pending Report',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                138, 139, 140, 1),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 30, bottom: 15),
                            width: 325,
                            height: 210,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Second Opinion',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(114, 101, 227, 1),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().doctorcard(
                                    Container(
                                        height: 25,
                                        width: 30,
                                        child: Image.asset('assets/dorr.png')),
                                    'Prof. Dr. Deniz Konya',
                                    'Neurosurgery'),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().doctorcard(
                                  Container(
                                      height: 25,
                                      width: 30,
                                      child: Icon(Icons.calendar_today)),
                                  'Thursday, 6 Feb 2020',
                                  '6:30 PM - 7:30 PM',
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Container(
                                    width: 180,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 241, 248, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Pending Report',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                138, 139, 140, 1),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
