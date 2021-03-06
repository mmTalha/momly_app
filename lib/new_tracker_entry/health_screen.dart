import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/new_tracker_entry/headche_screen.dart';
import 'package:momly_app/new_tracker_entry/widgets/health_screen_widgets.dart';
import 'package:momly_app/survey_screens/second_screen.dart';

class health_screen extends StatelessWidget {
  const health_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff4C5980),
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
          //height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 20.0,),
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
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'health\n',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(114, 101, 227, 1))),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(
                                fontSize: 24,
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
              Container(
                // height: 500,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: new Container(
                  padding: EdgeInsets.only(
                      left: 30, right: 30, top: 0.0, bottom: 0.0),
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(244, 246, 250, 1),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      healthScreen_widget().textfieldcontroller(
                          'Searchsymptom', Icons.search, null),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          width: 300,
                          height: 450,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (BuildContext context) =>
                                                headchee_screen()));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Headache',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(76, 89, 128, 1),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Color.fromRGBO(228, 223, 255, 1),size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Divider(
                                  thickness: 0.2,
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Headache',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(76, 89, 128, 1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Color.fromRGBO(228, 223, 255, 1),size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                Divider(
                                  thickness: 0.2,
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Headache',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(76, 89, 128, 1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Color.fromRGBO(228, 223, 255, 1),size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                Divider(
                                  thickness: 0.2,
                                ),
                                SizedBox(height: 5.0,),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 100,
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
