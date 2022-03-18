import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 65.0, left: 20, right: 20),
                    child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF4F6FA)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.red,
                                ),
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  AssetImage('assets/ef.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Text("8.7 kg")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.pink,
                                ),
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                            ],
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
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff2D3142)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
