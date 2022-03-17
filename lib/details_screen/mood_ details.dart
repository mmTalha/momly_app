import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
                child: Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      color: Colors.transparent,
                    ),
                    Positioned(
                      left: 9,
                      top: 2,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/Notification.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 38,
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffF4F6FA)),
                        child: Icon(Icons.expand_more_outlined,
                            size: 13, color: Colors.black),
                      ),
                    )
                  ],
                ),
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
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff4075CD).withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: Offset(4, 8), // changes position of shadow
                          ),
                        ],
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
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff4075CD).withOpacity(0.1),
                            spreadRadius: 7,
                            blurRadius: 5,
                            offset: Offset(4, 8), // changes position of shadow
                          ),
                        ],
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
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('MOOD',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('1h ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/StarEyes.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('I feel Great',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                      'You do not setup a family member profile yet.\nTap the following button to setup one. ',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromRGBO(76, 89, 128, 1),
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
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('HEALTH',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('8h ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/Photo1.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    Text('Headche',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    RatingBar.builder(
                                      itemSize: 15,
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffFF9D2B),
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                      'You do not setup a family member profile yet.\nTap the following button to setup one. ',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color.fromRGBO(76, 89, 128, 1),
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
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Yesterday',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(76, 89, 128, 1),
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('WEIGHT',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('1d ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/icon-weight.png',
                                  color: Color(0xff8FACFF),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('42.8 kg',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                      '+1.2kg since your last measurement.',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.italic,
                                          color: Color.fromRGBO(76, 89, 128, 1),
                                          fontWeight: FontWeight.w400)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('WATER',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('1d ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("💧",
                                    style: TextStyle(
                                      fontSize: 25,
                                    )),
                                Text('1x Glass (200ml)',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Text(
                                      "You reached your daily hydration target.",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.italic,
                                          color: Color.fromRGBO(76, 89, 128, 1),
                                          fontWeight: FontWeight.w400)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Nutrition',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('1d ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/nutrition.png',
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                    'Salad with wheat and white\negg breakfast',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/fire.png'),
                                      Text('345 kcal',
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontStyle: FontStyle.italic,
                                              color: Color.fromRGBO(
                                                  76, 89, 128, 1),
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Medication',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w400)),
                                Text('1d ago',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(156, 158, 185, 1),
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('images/Pill.png',
                                    color: Colors.grey),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Paracetamol',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      trailing: null,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Text('200mg. Daily intake: 800mg',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.italic,
                                          color: Color.fromRGBO(76, 89, 128, 1),
                                          fontWeight: FontWeight.w400)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'images/5bb48b07fa6e3840bb3afa2bc821b882.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Image.asset('assets/cut.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
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
