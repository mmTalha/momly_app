import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/notification_profile/screen16.dart';

class screen15 extends StatefulWidget {
  const screen15({Key? key}) : super(key: key);

  @override
  State<screen15> createState() => _screen15State();
}

class _screen15State extends State<screen15> {
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
              leading: Icon(Icons.arrow_back_ios_outlined,
                  size: 22, color: Color(0xff4C5980)),
              automaticallyImplyLeading: false,
              middle: Text("PROFILE DETAILS",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 2.0,
                    color: Colors.black,
                  )),
              padding: EdgeInsetsDirectional.only(
                top: 20,
              ),
              border: Border(bottom: BorderSide(color: Colors.transparent)),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => screen16()),
                  );
                },
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 65.0, left: 20, right: 20),
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.5, right: 15.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Last Event',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff2D3142),
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 15,
                    ),
                    dashboard_Widgets().moodwidget(
                        () {},
                        context,
                        'MOOD',
                        'I feel Great',
                        'You do not setup a family member profile yet.\nTap the following button to setup one.',
                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png',
                        'images/StarEyes.png',
                        '1h ago',
                        'assets/cut.png',
                        SizedBox(),
                        50.0,
                        50.0),
                    SizedBox(
                      height: 15,
                    ),
                    dashboard_Widgets().moodwidget(
                        () {},
                        context,
                        'HEALTH',
                        'Headche',
                        'You do not setup a family member profile yet.\nTap the following button to setup one.',
                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png',
                        'images/Photo1.png',
                        '8h ago',
                        'assets/cut.png',
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: RatingBar.builder(
                            itemSize: 15,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Color(0xffFF9D2B),
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                        20.0,
                        20.0),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.5, right: 30.5),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffE8E9EA),
                        width: 5,
                      ),
                      color: Color(0xffF4F6FA),
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff8C80F8),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/Queue.png"))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("See all Events",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff7265E3),
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/re.png"))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
