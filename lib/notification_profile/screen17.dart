import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen18.dart';

class screen17 extends StatefulWidget {
  const screen17({Key? key}) : super(key: key);

  @override
  _screen17State createState() => _screen17State();
}

class _screen17State extends State<screen17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 30,
        ),
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 21, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF4F6FA)),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 120,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/gi.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "Richard  (1 mo) ",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff2D3142)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF4F6FA)),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: '1st ',
                          style: TextStyle(
                              color: Color(0xff76265E3),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Month',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 55,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xffD1CCED),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Social and emotional",
                                  style: TextStyle(
                                      color: Color(0xff7265E3), fontSize: 8),
                                ),
                                Text(
                                  "Look at you",
                                  style: TextStyle(
                                      color: Color(0xff2D3142), fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) => screen18()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        height: 45,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 18),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.radio_button_checked,
                                  color: Color(0xff7265e3),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Language/Communication",
                                    style: TextStyle(
                                        color: Color(0xff7265E3), fontSize: 8),
                                  ),
                                  Text(
                                    "Look at you",
                                    style: TextStyle(
                                        color: Color(0xff2D3142), fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '2nd ',
                          style: TextStyle(
                              color: Color(0xff76265E3),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Month',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 45,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xffD1CCED),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Social and emotional",
                                  style: TextStyle(
                                      color: Color(0xff7265E3), fontSize: 8),
                                ),
                                Text(
                                  "Look at you",
                                  style: TextStyle(
                                      color: Color(0xff2D3142), fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 45,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xff7265e3),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Language/Communication",
                                  style: TextStyle(
                                      color: Color(0xff7265E3), fontSize: 8),
                                ),
                                Text(
                                  "Look at you",
                                  style: TextStyle(
                                      color: Color(0xff2D3142), fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
