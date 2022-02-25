import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/momly_Academy_screens/widgets.dart';


class search_Academy_screen_2 extends StatelessWidget {
  const search_Academy_screen_2({Key? key}) : super(key: key);

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
                          SizedBox(height: 10,),
                          Text(
                            'Search Results',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10,),
                          Row(

                            children: [
                              Container(

                                  child:
                                  Container(
                                    height:60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromRGBO(175, 142,255 , 1)
                                      )
                                      ,
                                      child: Image.asset('images/achievement.png'))),
                              SizedBox(width: 10,),
                              Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                   children:  [
                                     Text('Daily target',
                                         style: TextStyle(
                                             fontSize: 13,
                                             color: Colors.black,
                                             fontWeight: FontWeight.w600)),
                                     SizedBox(width: 60,),
                                     Container(

                                       height:20,
                                       width: 80,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),
                                           color: Color(0xffE1DDF5)
                                     ),
                                       child:  Center(
                                         child: Text('Sponsored',
                                             style: TextStyle(
                                                 fontSize: 13,
                                                 color: Color(0xff7265E3),
                                                 fontWeight: FontWeight.w600)),
                                       ),
                                     )
                                   ],
                                 ),
                                  SizedBox(height: 5,),

                                  Text('Congrats you just hit your goal!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(76, 89,128 , 1),
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: 10,),
                          academy_Widgets().tile('images/achievement.png','Achievement','You are the first among your friends',Color.fromRGBO(31, 135,254 , 1)),
                          SizedBox(height: 10,),
                          academy_Widgets().tile('images/nutrition.png','Nutrition','Your breakfast has high cals',Color(0xff59B9FD))




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
