import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/new_tracker_entry/mood_screen.dart';
import 'package:momly_app/notification_profile/screen15.dart';
import 'package:momly_app/progress.dart';

class profile_tab extends StatefulWidget {
  const profile_tab({Key? key}) : super(key: key);

  @override
  State<profile_tab> createState() => _profile_tabState();
}

class _profile_tabState extends State<profile_tab> {
  TabController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: CupertinoNavigationBar(
              trailing: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ab.png'),
                  ),
                ),
              ),
              padding: EdgeInsetsDirectional.only(
                top: 20,
              ),
              border: Border(bottom: BorderSide(color: Colors.transparent)),
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back_ios_outlined,
                  size: 22, color: Color(0xff4C5980)),
              automaticallyImplyLeading: false,
              middle: Text(
                "PROFILE DETAILS",
                style: TextStyle(fontSize: 12, letterSpacing: 2.0),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => screen15()),
                    );
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 65.0, left: 20, right: 20),
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff3E2A5A).withOpacity(0.15),
                                    spreadRadius: 1,
                                    blurRadius: 15,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF4F6FA)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff3E2A5A)
                                                .withOpacity(0.15),
                                            spreadRadius: 1,
                                            blurRadius: 15,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xffEFF0F4),
                                      ),
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0,
                                            right: 8.0,
                                            top: 8,
                                            bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/ef.png'),
                                                    ),
                                                  ),
                                                ),
                                                Text("8.7 kg")
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/cc.png'),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff3E2A5A)
                                                .withOpacity(0.15),
                                            spreadRadius: 1,
                                            blurRadius: 15,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xffEFF0F4),
                                      ),
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0,
                                            right: 8.0,
                                            top: 8,
                                            bottom: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("112cm"),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/cc.png'),
                                                  ),
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
                            )),
                      ),
                      Positioned(
                        top: 27,
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
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff2D3142)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xffE4DFFF)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 15, bottom: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/girl.png"))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Richard @ Today",
                                      style: TextStyle(
                                          color: Color(0xff2D3142),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50.0, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/moon.png',
                                    height: 24,
                                  ),
                                  Image.asset(
                                    'assets/feeder.png',
                                    height: 24,
                                  ),
                                  Image.asset(
                                    'assets/water.png',
                                    height: 24,
                                  ),
                                  Image.asset(
                                    'assets/shit.png',
                                    height: 24,
                                  ),
                                  Image.asset(
                                    'assets/born.png',
                                    height: 24,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 9),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(height: 5, color: Colors.grey),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "06:00",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 9),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(height: 5, color: Colors.grey),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "12:00",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 9),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(height: 5, color: Colors.grey),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "18:00",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 9),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(height: 5, color: Colors.grey),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                Text(
                                  "21:00",
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 9),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(height: 5, color: Colors.grey),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(19)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              color: Color(0xff8C80F8),
                                              borderRadius:
                                                  BorderRadius.circular(19)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "OCT",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "13",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Weight",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "12m ago",
                                              style: TextStyle(
                                                  color: Color(0xff4C5980),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      "18,7 kg",
                                      style: TextStyle(
                                          color: Color(0xff7265E3),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 100,
                      child: Container(
                        height: 50,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 170,
                      child: Container(
                        height: 30,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.345,
                      top: 115,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.345,
                      top: 135,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.345,
                      top: 160,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.345,
                      top: 200,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 99,
                      child: Container(
                        height: 8,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 130,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 145,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 160,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 175,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.489,
                      top: 190,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.657,
                      top: 115,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.657,
                      top: 140,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.83,
                      top: 115,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.83,
                      top: 155,
                      child: Container(
                        height: 5,
                        width: 3,
                        decoration: BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Column(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF4F6FA),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: DefaultTabController(
                              length: 2,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      height: 55,
                                      width: double.infinity,
                                      child: TabBar(
                                        unselectedLabelColor: Colors.black,
                                        indicator: BoxDecoration(
                                            color: Color(0xff8C81F8),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        tabs: [
                                          Tab(
                                            child:
                                                Center(child: Text('Progress')),
                                          ),
                                          Tab(icon: Text('Events')),
                                        ],
                                      )),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        progresss(),
                                        Container(
                                          height: 2500,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      )
                    ])
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
