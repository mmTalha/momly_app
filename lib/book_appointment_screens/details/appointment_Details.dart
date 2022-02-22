import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';

import '../book_appointment_screen2.dart';

class Appointment_details extends StatelessWidget {
  const Appointment_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Color.fromRGBO(244, 246, 250, 1),
        leading: Material(
          color: Color.fromRGBO(244, 246, 250, 1),
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
      backgroundColor: Color.fromRGBO(244, 246, 250, 1),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Appointment Details',
                    style: TextStyle(
                        fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.only(left: 10, right: 20, top: 30, bottom: 10),
                      width: 325,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Container(
                                  margin: EdgeInsets.all(5),
                                  child: Image.asset('images/Notification.png')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Ethel Howard',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Neurosurgery',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.add_location_rounded,size: 12,color: Colors.grey,),
                                      Text('Clinic address, City, Zip\nCode Second line can be used…',

                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.only(left: 10, right: 20, top: 30, bottom: 10),
                      width: 325,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('images/Icon_24.png',color: Color.fromRGBO(114, 101, 227, 1),)),
                              SizedBox(width: 5,),
                              Text('Visit Time',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Divider(),
                          Text('Thursday, 6 Feb 2020',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              )),
                          Text('6:30 PM - 7:30 PM',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(156, 158, 185, 1),
                                  fontWeight: FontWeight.w400)),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.only(left: 10, right: 20,  ),
                      width: 325,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 223, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(


                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('images/Checkmark (Circle).png',color: Color.fromRGBO(114, 101, 227, 1),)),
                              SizedBox(width: 10,),
                              Text('Planned',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(114, 101, 227,1),
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.only(left: 10, right: 20, top: 30, bottom: 10),
                      width: 325,
                      height: 260,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('images/Fill.png')),
                              SizedBox(width: 5,),
                              Text('Request Details',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Divider(),
                          SizedBox(height: 5,),

                          Text('Ask for her daughter, 4 years old',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10,),
                          Text('Late falling of milk teeth on a child, resulting in two rows of milk and permanent teeth at the same time, what could help?',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Image.asset('images/child.png'),
                              SizedBox(width: 10,),
                              Image.asset('images/child.png'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      padding:
                      EdgeInsets.only(left: 10, right: 20, top: 30, bottom: 10),
                      width: 325,
                      height: 260,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset('images/Icon_24.png')),
                              SizedBox(width: 5,),
                              Text('Additional Information',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Divider(),
                          SizedBox(height: 5,),

                          Text('Diagnosed Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10,),
                          Text('None',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(147, 147, 170, 1),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 10,),

                          Text('Diagnosed Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10,),
                          Text('None',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(147, 147, 170, 1),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 10,),

                          Text('Diagnosed Conditions',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10,),
                          Text('None',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(147, 147, 170, 1),
                                  fontWeight: FontWeight.w400)),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  left: 30, right: 30, bottom: 5),
              decoration: new BoxDecoration(
                color: Colors.white70,

              ),
              child:Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(224, 224, 224, 1),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: 327,
                  height: 50,
                  child:  Center(
                    child: Text('Cancel Appointment',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(147, 147, 170, 1),
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ) ,
            )
          ],
        )
      ),
    );
  }
}
