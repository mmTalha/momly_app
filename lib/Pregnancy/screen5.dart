import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen6.dart';

class screen5 extends StatefulWidget {
  const screen5({Key? key}) : super(key: key);

  @override
  _screen5State createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: CupertinoNavigationBar(
          middle: Text(
            "1st MONTH SLIDHSHOW",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 2.0,
              color: Color(0xffE4DFFF),
            ),
          ),
          padding: EdgeInsetsDirectional.only(
            top: 30,
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(Icons.close, size: 22, color: Colors.grey),
          ),
          automaticallyImplyLeading: false,
          border: Border(bottom: BorderSide(color: Colors.transparent)),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => screen6()),
                      );
                    },
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Pau.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/List.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Trash.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Share.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Description",
                            style: TextStyle(
                                color: Color(0xffE4DFFF), fontSize: 16),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "This is the description text entered for this photo and description view can be turned on and off using the controls above. ",
                            style: TextStyle(
                                color: Color(0xffE4DFFF), fontSize: 16),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "User can also tap share button at the right side to open the share panel.",
                            style: TextStyle(
                                color: Color(0xffE4DFFF), fontSize: 16),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
