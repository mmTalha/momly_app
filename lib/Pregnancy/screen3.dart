import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen4.dart';

class screen3 extends StatefulWidget {
  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  List items = [
    "1st Month",
    "2nd Month",
    "3rd Month",
    "4th Month",
    "5th Month",
    "6th Month",
    "7th Month",
    "8th Month",
    "9th Month",
    "Birth and After",
    "View all"
  ];
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
                  "PREGNANCY GALLERY",
                  style: TextStyle(fontSize: 12, letterSpacing: 2.0),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    album().Album(context, "1st Month", 0.5),
                    album().Album(context, "2nd Month", 0.5)
                  ],
                ),
                Row(
                  children: [
                    album().Album(context, "3rd Month", 0.5),
                    album().Album(context, "4th Month", 0.5)
                  ],
                ),
                Row(
                  children: [
                    album().Album(context, "5th Month", 0.5),
                    album().Album(context, "6th Month", 0.5)
                  ],
                ),
                Row(
                  children: [
                    album().Album(context, "7th Month", 0.5),
                    album().Album(context, "8th Month", 0.5)
                  ],
                ),
                Row(
                  children: [
                    album().Album(context, "9th Month", 0.5),
                    album().Album(context, "Birth and After", 0.5)
                  ],
                ),
                album().Album(context, "View all", 1),
              ],
            ),
          ),
        ));
  }
}

class album {
  Widget Album(BuildContext context, txt, sze) {
    return Container(
      width: MediaQuery.of(context).size.width * sze,
      height: 140,
      decoration: BoxDecoration(
          color: Color(0xffF4F6FA),
          border: Border.all(
            color: Color(0xffE1DDF5),
            width: 1,
          )),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (BuildContext context) => screen4()),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Images.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(txt,
                style: TextStyle(fontSize: 16, color: Color(0xff4C5980)),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
