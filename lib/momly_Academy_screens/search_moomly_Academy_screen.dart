import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/book_appointment_screens/appointsmenty_screen.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/new_tracker_entry/widgets/skills_screen_widget.dart';

import 'moomly_Academy_screen.dart';


class Search_Academy_Screen extends StatelessWidget {
  const Search_Academy_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Search Academy',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
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
                  padding:
                  EdgeInsets.only(left: 20, right: 30, top: 15, bottom: 20),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 285,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(244, 246, 250, 1),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: TextField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 12),
                                    hintText: 'Type to search',
                                    suffixIcon: Icon(Icons.search),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                          Color.fromRGBO(244, 246, 250, 1),
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                          Color.fromRGBO(244, 246, 250, 1),
                                        )),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),






                        ],
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 30,right: 20,
                          ),
                          height: 250,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(244, 246, 250, 1),
                          ),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Get a second opinion',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ),
                              dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),
                              dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),



                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
