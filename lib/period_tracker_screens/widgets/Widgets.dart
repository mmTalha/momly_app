import 'package:flutter/material.dart';

class period_Screen_widgets{
Widget period_name(color,name){
 return Center(
   child: Container(
     height: 30,
     width: 140,
     child: Row(children: [
       Container(

         margin: EdgeInsets.all(5),
         decoration: BoxDecoration(
           color:color,
           borderRadius: BorderRadius.circular(20),
         ),
         width: 20,
         height: 20,
       ),
       Text(name,style: TextStyle(
           color: Color(0xff4C5980)
       ),),

     ],),
   ),
 );
}
Widget period_buttons(img,name){
  return   Center(
    child: Container(

      width: 150,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(

              child: Image.asset(
                img,

              )),
          SizedBox(
            width: 5,
          ),
          Text(name,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff8C80F8),
                  fontWeight: FontWeight.w600)),
        ],
      ),
    ),
  );
}
}