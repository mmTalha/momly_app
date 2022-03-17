import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen3.dart';
import 'package:momly_app/apptheme/buttons.dart';

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
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/gi.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '1st ',
                          style: TextStyle(
                              color: Color(0xff76265E3),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'Month ',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Smear\n',
                              style: TextStyle(
                                  color: Color(0xff76265E3),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Test ',
                              style: TextStyle(
                                  color: Color(0xff76265E3),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Detail ',
                              style: TextStyle(
                                  color: Color(0xff2D3142),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF4F6FA),
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                height: 600,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        height: 45,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38.0, right: 38),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Date:",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
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
                            borderRadius: BorderRadius.circular(8)),
                        height: 45,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38.0, right: 38),
                          child: Row(
                            children: [
                              Text(
                                "Time:",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 120,
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText: 'Add notes or comments..',
                              hintStyle: TextStyle(color: Color(0xff9C9EB9)),
                              prefixStyle: TextStyle(color: Color(0xff9C9EB9)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(242, 242, 242, 1),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(242, 242, 242, 1),
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.red)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.red))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Add Media',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF4C5980),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/cock.png',
                            fit: BoxFit.cover,
                            height: 55,
                            width: 55,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/cut.png',
                            fit: BoxFit.cover,
                            height: 55,
                            width: 55,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/khali.png',
                            fit: BoxFit.cover,
                            height: 55,
                            width: 55,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Center(
                          child: buttons().buttonsab('Save', () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        screen3()));
                          }),
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
    );
  }
}
