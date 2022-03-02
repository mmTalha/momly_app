import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen21.dart';

class screen20 extends StatefulWidget {
  const screen20({Key? key}) : super(key: key);

  @override
  _screen20State createState() => _screen20State();
}

class _screen20State extends State<screen20> {
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
          middle: Text("DIRECT ACCESS",style: TextStyle(fontSize: 10),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Container(
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffF4F6FA)),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    "Direct Access",
                    style: TextStyle(fontSize: 24, color: Color(0xff2D3142)),
                    textAlign: TextAlign.center,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Use the following instructions to access your health report through momly.org",
                    style: TextStyle(color: Color(0xff4C5980), fontSize: 14),
                  ),
                  SizedBox(
                    height: 40,
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
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xffD1CCED),
                                size: 30,
                              ),
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
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xffD1CCED),
                                size: 30,
                              ),
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
                              child: Icon(
                                Icons.radio_button_checked,
                                color: Color(0xffD1CCED),
                                size: 30,
                              ),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                            "3",
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
                        "Open https://direct.momly.org",
                        style:
                            TextStyle(color: Color(0xff4C5980), fontSize: 16),
                      )
                    ],
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
                            "4",
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
                        "Enter the following access code",
                        style:
                            TextStyle(color: Color(0xff4C5980), fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) => screen21()),
                        );
                      },
                      child: Center(
                          child: Text(
                        "[ A172X ]",
                        style:
                            TextStyle(color: Color(0xff2D3142), fontSize: 20),
                      ))),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) => screen21()),
                        );
                      },
                      child: Center(
                          child: Icon(
                        Icons.share,
                        size: 25,
                        color: Color(
                          0xff4C5980,
                        ),
                      ))),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Text(
                    "You can also tap your access code to access your\nmedical report online.",
                    style: TextStyle(
                      color: Color(0xff9C9EB9),
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
