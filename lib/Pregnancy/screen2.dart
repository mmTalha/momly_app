import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/i.png'),
            ),
          ),
        ),
        padding: EdgeInsetsDirectional.only(
          top: 10,
        ),
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 17, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        middle: Text(
          "PREGNANCY TEST",
          style: TextStyle(fontSize: 10),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Row(
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
                      SizedBox(
                        width: 15,
                      ),
                      RichText(
                        text: TextSpan(
                            text: '1st ',
                            style: TextStyle(
                                color: Color(0xff76265E3),
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: 'Month ',
                                style: TextStyle(
                                    color: Color(0xff2D3142),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Smear\n',
                                style: TextStyle(
                                    color: Color(0xff76265E3),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Test ',
                                style: TextStyle(
                                    color: Color(0xff76265E3),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Detail ',
                                style: TextStyle(
                                    color: Color(0xff2D3142),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ],
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
                  height: 800,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          height: 45,
                          width: double.infinity,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 38.0, right: 38),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date:"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "2022,11january",
                                  style: TextStyle(
                                    color: Color(0xff76265E3),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          height: 45,
                          width: double.infinity,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 38.0, right: 38),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Time:"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "14:18",
                                  style: TextStyle(
                                    color: Color(0xff76265E3),
                                  ),
                                )
                              ],
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
        ),
      ),
    );
  }
}
