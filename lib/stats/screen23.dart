import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/stats/screen24.dart';
import 'package:momly_app/widgets/widgets.dart';

class screen23 extends StatefulWidget {
  const screen23({Key? key}) : super(key: key);

  @override
  _screen23State createState() => _screen23State();
}

class _screen23State extends State<screen23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8C80F8),
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 20,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Icon(Icons.arrow_back_ios_outlined,
              size: 21, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Color(0xff8C80F8),
        middle: Text(
          "STATS",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 115,
                color: Color(0xff8C80F8),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 30),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "TOTAL SKILLS",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffE4DFFF)),
                            ),
                            Text(
                              "512",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Brain.png"))),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "AVERAGE",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffE4DFFF)),
                            ),
                            Text(
                              "4.4",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF4F6FA),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 40),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) => screen24()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Skills",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xff2D3142),
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffE4DFFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weekly",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff7265E3),
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down_outlined,
                                      color: Color(0xff7265E3)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      skill().skills("Fine Motor (252)", 4.0),
                      SizedBox(
                        height: 15,
                      ),
                      skill().skills("Focus (52)", 4.0),
                      SizedBox(
                        height: 15,
                      ),
                      skill().skills("Balance (12)", 3.0)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
