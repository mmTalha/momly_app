import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/survey_screens/second_screen.dart';

class mood_screen extends StatelessWidget {
  const mood_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/graph.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/i.png'),
                ),
              ),
            ),
          ],
        ),
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back,color: Color(0xff4C5980),),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Image.asset('images/Notification.png'),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'How is your ',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'mood\n',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(114, 101, 227, 1))),
                            TextSpan(
                              text: 'today?',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: new Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(244, 246, 250, 1),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  width: 300,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        hintText: 'Choose a mood',contentPadding: EdgeInsets.only(left: 20,top: 10),
                                        hintStyle:
                                            TextStyle(color: Color(0xff9C9EB9)),
                                        suffixIcon: Icon(
                                          Icons.expand_more_outlined,
                                        size: 30,color: Color(0xff9C9EB9),
                                        ),
                                        prefixStyle:
                                            TextStyle(color: Colors.grey),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: Container(
                                  width: 300,
                                  height: 47,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(228, 223, 255, 1),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Image.asset(
                                              'images/erroricon.png',
                                              height: 12,
                                            )),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Learn more about ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: 'Concentration.',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          114, 101, 227, 1))),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: Container(
                                  width: 325,
                                  height: 118,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: TextField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        hintText: '   Add notes or comments..',
                                        hintStyle:
                                            TextStyle(color: Color(0xff9C9EB9)),
                                        prefixStyle:
                                            TextStyle(color: Color(0xff9C9EB9)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
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
                                  Image.asset('images/cock.png'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(height:58,width: 65,decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/duck2.png',),fit: BoxFit.fill),
                                  ), ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(height:58,width: 65,decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/empty.png',),fit: BoxFit.fill),
                                  ), ),
                                ],
                              ),
                            ],
                          ),

                          Center(
                            child: buttons().largebuttons('Add Mood', () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (BuildContext context) =>
                                          second_screen()));
                            }),
                          ),
                        ],
                      ),
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
