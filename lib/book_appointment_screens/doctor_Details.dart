import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/book_appointment_screens/details/appoint_details_2.dart';
import 'package:momly_app/book_appointment_screens/details/appointment_Details.dart';
import 'package:momly_app/book_appointment_screens/details/second_apponinments_screen.dart';

class Doctor_details extends StatelessWidget {
  const Doctor_details({Key? key}) : super(key: key);

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
                  color: Color.fromRGBO(244, 246, 250, 1),
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  child: Image.asset(
                    'images/5790-removebg-preview.png',
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
                top: 240,
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height + 10,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 20),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(35.0),
                        topRight: const Radius.circular(35.0),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Brian Hanner',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Neurosurgery',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(144, 147, 163, 1),
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(
                              '4.5',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Specialist in bone and skin health.Love sharing and work at Miami Hospital',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(144, 147, 163, 1),
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        Appointment_details()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(228, 223, 255, 1),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 40,
                                    height: 40,
                                    child: Icon(Icons.dashboard,
                                        color:
                                            Color.fromRGBO(114, 101, 227, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Second Opinion',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    Text(
                                      'Request a second opinion',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(144, 147, 163, 1),
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                CupertinoPageRoute(

                                    builder: (BuildContext context) => oppoint_details_2()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(228, 223, 255, 1),
                                        borderRadius: BorderRadius.circular(20)),
                                    width: 40,
                                    height: 40,
                                    child: Icon(Icons.dashboard,
                                        color: Color.fromRGBO(114, 101, 227, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Second Opinion',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    Text(
                                      'Request a second opinion',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(144, 147, 163, 1),
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) => second_oopinments()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(228, 223, 255, 1),
                                        borderRadius: BorderRadius.circular(20)),
                                    width: 40,
                                    height: 40,
                                    child: Icon(Icons.dashboard,
                                        color: Color.fromRGBO(114, 101, 227, 1))),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Second Opinion',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                    Text(
                                      'Request a second opinion',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(144, 147, 163, 1),
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
