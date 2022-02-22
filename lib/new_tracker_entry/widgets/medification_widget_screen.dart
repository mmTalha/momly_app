import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';


class medification_widget_screen{
  choose_medification(BuildContext context ){
    showCupertinoModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      context: context,
      builder: (context) =>
          Material(
            child: Container(
              height:500,

              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 30,right: 10,bottom: 5,top: 35),
                      child: Image.asset('images/icon-down.png')),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 30,right: 10,  ),
                    child: Text('Choose a Medication',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 15,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 15),

                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(244, 246, 250, 1),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))),

                            height:45,
                            width: 350,
                            child:
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Paracetamol',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),


                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))),

                            height:45,
                            width: 350,
                            child:
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Medication 1',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),


                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))),

                            height:45,
                            width: 350,
                            child:
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Medication 2',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),


                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10))),

                            height:45,
                            width: 350,
                            child:
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Medication 3',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),


                          ),

                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 15,right: 15),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(114, 101, 227, 1),
                                borderRadius: BorderRadius.all(Radius.circular(10))),

                            height:45,
                            width: 350,
                            child:
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Create new Medication',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),


                          ),

                        ],
                      ),
                    ),

                  )
                ],
              ),
            ),
          ),
    );
  }
}