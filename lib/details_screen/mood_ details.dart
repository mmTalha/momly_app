import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/modal_sheet.dart';

class mood_details extends StatelessWidget {
  const mood_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
          iconSize: 30,
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset('images/Notification.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    modelsheet().filterevents(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Everything',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Color.fromRGBO(156, 158, 185, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Color.fromRGBO(156, 158, 185, 1),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    modelsheet().choosedaterange(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'This Month',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Color.fromRGBO(156, 158, 185, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Color.fromRGBO(156, 158, 185, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: new Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(244, 246, 250, 1),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(76, 89, 128, 1),
                                fontWeight: FontWeight.w400)),
                        Image.asset('images/listicon1.png'),
                      ],
                    ),
                    for (var i = 0; i < 3; i++)
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 15),
                          height: 142,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('MOOD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(114, 101, 227, 1),
                                          fontWeight: FontWeight.w400)),
                                  Text('1h ago',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(156, 158, 185, 1),
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('images/StarEyes.png'),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('I feel Great',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                      SizedBox(
                                        height: 30,
                                        child: Text(
                                            'You do not setup a family member profile yet.\nTap the following button to setup one. ',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color.fromRGBO(
                                                    76, 89, 128, 1),
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                              'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    Text('Yesterday',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(76, 89, 128, 1),
                            fontWeight: FontWeight.w400)),
                    for (var i = 0; i < 2; i++)
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 15),
                          height: 142,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('MOOD',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(114, 101, 227, 1),
                                          fontWeight: FontWeight.w400)),
                                  Text('1h ago',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(156, 158, 185, 1),
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('images/StarEyes.png'),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('I feel Great',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600)),
                                      Text(
                                          'You do not setup a family member profile yet.\nTap the following button to setup one. ',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color.fromRGBO(
                                                  76, 89, 128, 1),
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Image.asset(
                                              'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
