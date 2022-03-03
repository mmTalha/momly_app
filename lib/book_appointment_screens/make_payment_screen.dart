import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/book_appointment_screens/payment_succeded.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/survey_screens/second_screen.dart';

class Make_payment_screen extends StatefulWidget {
  const Make_payment_screen({Key? key}) : super(key: key);

  @override
  _Make_payment_screenState createState() => _Make_payment_screenState();
}

class _Make_payment_screenState extends State<Make_payment_screen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color.fromRGBO(244, 246, 250, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Make Payment',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 20, top: 30, bottom: 10),
                  width: 325,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORDER DETAILS',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(114, 101, 227, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'CLINIC APPOINTMENT',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              child: Image.asset("images/prof_deniz.png")),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Prof. Dr. Kadir Sümerkent',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text('Neurosurgery',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff9C9EB9),
                                      fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              child: Icon(Icons.calendar_today)),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Thursday, 6 Feb 2020',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text('6:30 PM - 7:30 PM',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff9C9EB9),
                                      fontWeight: FontWeight.w400)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              child: Icon(Icons.credit_card)),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Payment Amount',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text('\$49.99',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w400)),
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
                  height: 466,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PAYMENT',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(114, 101, 227, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'PAYMENT INFORMATION',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            hoverColor: Colors.grey.shade200,
                            focusColor: Colors.grey.shade200,
                            labelText: 'Name on Card',
                            hintText: 'John Doe'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            hoverColor: Colors.grey.shade200,
                            focusColor: Colors.grey.shade200,
                            labelText: 'Card Number',
                            hintText: 'xxxx-xxxx-xxxx-xxxx'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            hoverColor: Colors.grey.shade200,
                            focusColor: Colors.grey.shade200,
                            labelText: 'Expiration Date',
                            hintText: 'MM-YY'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            hoverColor: Colors.grey.shade200,
                            focusColor: Colors.grey.shade200,
                            suffixIcon: Icon(
                              Icons.credit_card,
                              size: 40,
                            ),
                            labelText: 'Security Code',
                            hintText: 'CCV'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.0,
                            child: SizedBox(
                              height: 25.0,
                              width: 25.0,
                              child: Checkbox(
                                  focusColor: Color.fromRGBO(252, 186, 24, 1),
                                  hoverColor: Color.fromRGBO(252, 186, 24, 1),
                                  checkColor: Colors.white,
                                  activeColor: Color.fromRGBO(114, 101, 227, 1),
                                  value: agree,
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value ?? false;
                                    });
                                  }),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'I accept terms and conditions and general policy.',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: buttons().largebuttons('Make Payment', () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Payment_succeded()));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
