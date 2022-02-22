import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:momly_app/book_appointment_screens/book_appointment_screen.dart';
import 'package:momly_app/book_appointment_screens/second_opinion_screen.dart';

class widgets_appointmentscreen {
  Widget appoint_screen_field(controller, icon, hint) {
    return Container(
      width: 325,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon),
            prefixStyle: TextStyle(color: Colors.grey),
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
    );
  }

  Widget doctorcard(pic, name, field) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Center(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: pic,
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400)),
                    SizedBox(height: 5,),
                    Text(field,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(156, 158, 185, 1))),
                  ],
                )
              ],
            ),
          ))
        ]);
  }

  choosedaterange(BuildContext context) {
    showMaterialModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      context: context,
      builder: (context) => Container(
        height: 200,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding:
                    EdgeInsets.only(left: 30, right: 10, bottom: 5, top: 35),
                child: Image.asset('images/icon-down.png')),
            SizedBox(
              height: 15,
            ),
            Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 350,
                    child: widgets_appointmentscreen().doctorcard(
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        second_opinion_screen()));

                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(228, 223, 255, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 35,
                              height: 35,
                              child: Icon(Icons.favorite_border_rounded,color: Color.fromRGBO(114, 101, 227, 1),)),
                        ),
                        'Request a second opinion',
                        'Second Opinion'),

                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 350,
                    child: widgets_appointmentscreen().doctorcard(
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        Book_Appointment_screen()));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(228, 223, 255, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 35,
                              height: 35,
                              child: Icon(Icons.calendar_view_day_outlined,color: Color.fromRGBO(114, 101, 227, 1),)),
                        ),
                        'Appointment',
                        'Create new appointment'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget speciality(controller,hint,specialty,icon){
    return Column(
      children: [
        Row(
          children: [
           icon,
            Text(
              specialty,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 10,),
      Container(
      width: 325,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(244, 246, 250, 1),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: hint,

            prefixStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Color.fromRGBO(244, 246, 250, 1),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Color.fromRGBO(244, 246, 250, 1),
                )),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.red))),
      ),
    ),

      ],
    );

  }
}
