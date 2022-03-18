import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen15.dart';
import 'package:momly_app/notification_profile/screen16.dart';

class screen14 extends StatefulWidget {
  const screen14({Key? key}) : super(key: key);

  @override
  _screen13State createState() => _screen13State();
}

class _screen13State extends State<screen14> {
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
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xffF4F6FA)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 45),
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
                                    image: AssetImage("assets/av.png"))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Add Profile",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff2D3142),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Tap here to create your first\nprofile",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff4C5980)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => screen15()),
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
