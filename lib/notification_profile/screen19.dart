import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen20.dart';

class screen19 extends StatefulWidget {
  const screen19({Key? key}) : super(key: key);

  @override
  _screen19State createState() => _screen19State();
}

class _screen19State extends State<screen19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 20,start: 10.0,
        ),
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 24, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
          middle: Text("DIRECT ACCESS",style: TextStyle(fontSize: 12,letterSpacing: 1.5),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffF4F6FA)),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Direct Access",
                    style: TextStyle(fontSize: 24, color: Color(0xff2D3142)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Use the following instructions to access \nyour health report through momly.org",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff4C5980), fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                            border: Border.all(
                              color: Color(0xff4C5980),
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4C5980),
                            ),
                          ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Choose Profile",
                        style:
                            TextStyle(color: Color(0xff4C5980), fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/gi.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Richard >",
                          style:
                              TextStyle(color: Color(0xff4C5980), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                            border: Border.all(
                              color: Color(0xff4C5980),
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "2",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff4C5980),
                            ),
                          ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Choose Starting Options",
                        style:
                            TextStyle(color: Color(0xff4C5980), fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                   padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image(image: AssetImage('images/on.png'),)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Include Trackers",
                              style: TextStyle(
                                  color: Color(0xff2D3142), fontSize: 17),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, right: 5),
                          child: Divider(),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image(image: AssetImage('images/on.png'),)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Include Measurements",
                              style: TextStyle(
                                  color: Color(0xff2D3142), fontSize: 17),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, right: 5),
                          child: Divider(),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image(image: AssetImage('images/on.png'),)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Include Notes & Attachments",
                              style: TextStyle(
                                  color: Color(0xff2D3142), fontSize: 17),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, right: 5),
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => screen20()),
                      );
                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Color(0xff8C80F8),
                      ),
                      child: Center(
                          child: Text(
                        "Generate Direct Access Code",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
