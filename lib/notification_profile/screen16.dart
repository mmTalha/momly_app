import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen17.dart';

class screen16 extends StatefulWidget {
  const screen16({Key? key}) : super(key: key);

  @override
  _screen16State createState() => _screen16State();
}

class _screen16State extends State<screen16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 10,
        ),
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 17, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        middle: Text(
          "PROFILE DETAILS",
          style: TextStyle(fontSize: 10),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffF4F6FA)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profile Information",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff2D3142),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "Name:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      "Candece Beck",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff7265E3)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "Gender:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 45,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff7265E3)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      "Date of Birth:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "July 28, 1981",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff7265E3)),
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
                  Positioned(
                    top: 20,
                    left: 140,
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
                        Text(
                          "change",
                          style:
                              TextStyle(fontSize: 9, color: Color(0xff7265E3)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 20, top: 300, bottom: 50),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => screen17()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffF4F6FA)),
                  child: Center(
                      child: Text(
                    "REMOVE PROFILE",
                    style: TextStyle(fontSize: 16, color: Color(0xff2D3142)),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
