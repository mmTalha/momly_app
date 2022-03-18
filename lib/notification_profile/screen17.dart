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
                    image: AssetImage('assets/i.png'),
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
                "DEVELOPMENT PROCESS",
                style: TextStyle(fontSize: 12, letterSpacing: 2.0),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 65.0, left: 20, right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF4F6FA)),
                  ),
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
              decoration: BoxDecoration(
                  color: Color(0xffF4F6FA),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
              height: double.infinity,
              width: double.infinity,
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Month',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          backgroundColor: Color(0xffE1DDF5),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff7265E3)),
                          value: 0.15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/off.png'))),
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
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        height: 60,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 18),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/on.png'))),
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

                    //2nd month

                    RichText(
                      text: TextSpan(
                          text: '2nd ',
                          style: TextStyle(
                              color: Color(0xff76265E3),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Month',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          backgroundColor: Color(0xffE1DDF5),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff7265E3)),
                          value: 0.56,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/off.png'))),
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
                      height: 60,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/on.png'))),
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
