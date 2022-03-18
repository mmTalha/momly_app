import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:momly_app/notification_profile/screen14.dart';
import 'package:country_code_picker/country_code_picker.dart';

class screen13 extends StatefulWidget {
  const screen13({Key? key}) : super(key: key);

  @override
  _screen13State createState() => _screen13State();
}

class _screen13State extends State<screen13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Icon(Icons.arrow_back_ios_outlined,
              size: 25, color: Color(0xff4C5980)),
        ),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xff2D3142),
                              fontWeight: FontWeight.w600),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/gi.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text(
                              "change",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xff7265E3)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$1200.00",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, right: 18),
                              child: DottedLine(
                                direction: Axis.vertical,
                                dashColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Points",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "1280",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 470,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xffF4F6FA)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
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
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            children: [
                              Text(
                                "Name:",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text(
                                "Candece Beck",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7265E3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            children: [
                              Text(
                                "Gender:",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 85,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7265E3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 30),
                          child: Row(
                            children: [
                              CountryCodePicker(
                                flagWidth: 25.0,
                                showDropDownButton: true,
                                onChanged: print,
                                initialSelection: '+62',
                                favorite: ['+62', 'PO'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "82227580727",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7265E3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            children: [
                              Text(
                                "Date of Birth:",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                "July 28, 1981",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7265E3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            children: [
                              Text(
                                "Language:",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 65,
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7265E3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffF4F6FA)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Profiles",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff2D3142),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/girl.png"))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Richard",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff2D3142),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "1mo, Male",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff4C5980)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Divider(
                        color: Color(0xffD8D8D8),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 40),
                        child: SizedBox(
                          height: 3,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/girl.png"))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Christine",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff2D3142),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "7yo, Female",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff4C5980)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'To add a new photo ',
                              style: TextStyle(
                                  color: Color(0xff4C5980), fontSize: 16),
                              children: [
                                TextSpan(
                                  text: 'tap here',
                                  style: TextStyle(
                                      color: Color(0xff7265E3),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => screen14()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF4F6FA)),
                    child: Center(
                        child: Text(
                      "LOGOUT",
                      style: TextStyle(fontSize: 16, color: Color(0xff2D3142)),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
