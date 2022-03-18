import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen7.dart';

class screen6 extends StatefulWidget {
  const screen6({Key? key}) : super(key: key);

  @override
  _screen6State createState() => _screen6State();
}

class _screen6State extends State<screen6> {
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
              padding: EdgeInsetsDirectional.only(
                top: 30,
              ),
              leading: Icon(Icons.arrow_back_ios_outlined,
                  size: 22, color: Color(0xff4C5980)),
              automaticallyImplyLeading: false,
              border: Border(bottom: BorderSide(color: Colors.transparent)),
              backgroundColor: Colors.white,
              middle: Text(
                "PREGNANCY ALBUM",
                style: TextStyle(fontSize: 12, letterSpacing: 2.0),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Add a new photo to\n album:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '1st Month',
                            style: TextStyle(
                                color: Color(0xff76265E3),
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF4F6FA),
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  height: 610,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 25,
                      right: 25,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            width: double.infinity,
                            height: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffF4F6FA),
                                border: Border.all(
                                  color: Color(0xffE1DDF5),
                                  width: 2,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/camera.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Tapp to add a photo",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff4C5980)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 160,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (BuildContext context) => screen7()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff7265E3),
                                    borderRadius: BorderRadius.circular(20)),
                                width: double.infinity,
                                height: 60,
                                child: Center(
                                    child: Text(
                                  "Save Photo",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: 40,
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
    );
  }
}
