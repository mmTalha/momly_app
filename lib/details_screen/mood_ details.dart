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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                              children: [
                                Image.asset('images/StarEyes.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        Image.asset('assets/cut.png'),
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('images/Photo1.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Headche⭐⭐⭐⭐⭐',
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
                                        Image.asset('assets/cut.png'),
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Weight',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/icon-weight.png',
                                  color: Color(0xff8FACFF),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('42.8 kg',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    Text('+1.2kg since your last measurement.',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
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
                                        Image.asset('assets/cut.png'),
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Water',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("💧",
                                    style: TextStyle(
                                      fontSize: 25,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1x Glass (200ml)',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                        "You reached your daily hydration target.",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
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
                                        Image.asset('assets/cut.png'),
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/nutrition.png',
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Salad with wheat and white\negg breakfast',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    Text('345 kcal',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
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
                                        Image.asset('assets/cut.png'),
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
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
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
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('images/Pill.png',
                                    color: Colors.grey),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Paracetamol',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    Text('200mg. Daily intake: 800mg',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
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
                                        Image.asset('assets/cut.png'),
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
