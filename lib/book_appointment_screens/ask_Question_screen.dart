import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/book_appointment_screens/details/appointment_details_3_screen.dart';
import 'package:momly_app/book_appointment_screens/details/oppoint_details_screen_4.dart';
import 'package:momly_app/book_appointment_screens/payment_succeded.dart';



class ask_Question_screen extends StatefulWidget {
  const ask_Question_screen({Key? key}) : super(key: key);

  @override
  _ask_Question_screenState createState() => _ask_Question_screenState();
}

class _ask_Question_screenState extends State<ask_Question_screen> {
  @override
  Widget build(BuildContext context) {
    bool agree = false;

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
                      'Ask a Question',
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
                                Text('Appointment Time',
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
                            color: Color.fromRGBO(127, 227, 240, 1),
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
                                    child: Image.asset('images/Checkmark (Circle).png',  color: Color.fromRGBO(127, 227, 240, 1),)),
                                SizedBox(width: 10,),
                                Text('View Report',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
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
                        height: 500,
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
                                Text('Question Details',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Divider(),
                            SizedBox(height: 5,),
                            Center(
                              child: Container(
                                width: 285,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      hintText: 'Add notes or comments..',
                                      prefixStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(242, 242, 242, 1),
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color:
                                            Color.fromRGBO(242, 242, 242, 1),
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
                            Text('Attach photos so your physician can review your condition better.',style: TextStyle(color: Colors.black.withOpacity(0.4) ),),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add Media',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(76, 89, 128, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset('images/cock.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/cock.png'),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1.0,
                                  child: SizedBox(
                                    height: 25.0,
                                    width: 25.0,
                                    child: Checkbox(
                                        focusColor:
                                        Color.fromRGBO(252, 186, 24, 1),
                                        hoverColor:
                                        Color.fromRGBO(252, 186, 24, 1),
                                        checkColor:
                                        Colors.white,
                                        activeColor:  Color.fromRGBO(114, 101, 227, 1),
                                        value: agree,
                                        onChanged: (value) {
                                          setState(() {
                                            agree = value ?? false;
                                          });
                                        }),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text('I accept terms and conditions and general policy.',style: TextStyle(fontSize: 11),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: buttons().largebuttons('Send Question', () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (BuildContext context) => oppoint_details_screen_4()));

                              }),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),

            ],
          )
      ),
    );
  }
}
