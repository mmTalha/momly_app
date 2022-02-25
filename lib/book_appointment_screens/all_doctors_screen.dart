import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/book_appointment_screens/details/appoint_details_2.dart';
import 'package:momly_app/book_appointment_screens/details/appointment_Details.dart';
import 'package:momly_app/book_appointment_screens/details/second_apponinments_screen.dart';

class all_doctor_screen extends StatelessWidget {
  const all_doctor_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 250, 1),
      appBar: CupertinoNavigationBar(
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Doctors',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset('images/Filter.png'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: new Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 30, top: 15, bottom: 20),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 285,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 246, 250, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 12),
                                    hintText: 'Search for doctor or disease',
                                    suffixIcon: Icon(Icons.search),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(244, 246, 250, 1),
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(244, 246, 250, 1),
                                        )),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'All Doctors',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                  color: Color.fromRGBO(244, 246, 250, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                  child: Image.asset('images/39381-removebg-preview.png')),

                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Dr. Caroline',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '4.5',
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      'Dentist specialist since\n 2008 in LBC Hospital',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(147, 147, 170, 1),
                                          fontWeight: FontWeight.w400)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration:BoxDecoration(
                                    color: Color.fromRGBO(244, 246, 250, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset('images/39381-removebg-preview.png')),

                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Dr. Caroline',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '4.5',
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      'Dentist specialist since\n 2008 in LBC Hospital',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                          Color.fromRGBO(147, 147, 170, 1),
                                          fontWeight: FontWeight.w400)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
