import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen12.dart';

import '../dashboard_screens/dashboard_widgets.dart';

class screen10 extends StatefulWidget {
  const screen10({Key? key}) : super(key: key);

  @override
  _screen10State createState() => _screen10State();
}

class _screen10State extends State<screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: CupertinoNavigationBar(
              padding: EdgeInsetsDirectional.only(
                top: 10,
              ),
              border: Border(bottom: BorderSide(color: Colors.transparent)),
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back_ios_outlined,
                  size: 22, color: Color(0xff4C5980)),
              automaticallyImplyLeading: false,
              middle: Text(
                "KICK COUNTER",
                style: TextStyle(fontSize: 12, letterSpacing: 2.0),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffF4F6FA),
                borderRadius: new BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            height: 700,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "00:23",
                                style: TextStyle(
                                    color: Color(0xffE8544E),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "You are been contracted",
                                style: TextStyle(
                                    color: Color(0xffE8544E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        screen12()),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Center(
                                  child: Container(
                                    width: 200.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffF4F6FA),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(150.0)),
                                      border: Border.all(
                                        color: Color(0xffE8544E),
                                        width: 3.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    child: Container(
                                        width: 180.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100.0)),
                                          border: Border.all(
                                            color: Color(0xffE8544E),
                                            width: 5.0,
                                          ),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Contraction\nStopped",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xffE8544E),
                                          ),
                                        )))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              color: Color(0xff7265E3),
                              height: 40,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 40,
                                      ),
                                      child: VerticalDivider(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Duration",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            height: 70,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50, right: 80),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "2022,1 Jan 12:08",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff4C5980)),
                                      ),
                                      Text(
                                        "28 Sec",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff4C5980)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Divider(color: Colors.grey),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50, right: 80),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "2022,1 Jan 12:08",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff4C5980)),
                                      ),
                                      Text(
                                        "28 Sec",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff4C5980)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 20,
                    ),
                    height: 125,
                    width: 340,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.28),
                          blurRadius: 2,
                          spreadRadius: 4,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(244, 246, 250, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 18),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Get a second opinion',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff7265E3).withOpacity(0.1),
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              )
                            ],
                          ),
                          child: dashboard_Widgets().doctorcard(
                              'images/prof_deniz.png',
                              'Prof. Dr. Deniz Konya',
                              'Neurosurgery'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
