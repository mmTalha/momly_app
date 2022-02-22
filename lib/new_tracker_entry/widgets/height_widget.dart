import 'package:flutter/material.dart';



 class height_screen_widget{
   Widget height_textfield (text,icons,controller){
     return Center(
       child: Container(
         width: 285,
         height: 50,
         decoration: BoxDecoration(
             color: Colors.white,
             borderRadius:
             BorderRadius.all(Radius.circular(20))),
         child: TextField(
           controller: controller,
           textAlign: TextAlign.start,
           keyboardType: TextInputType.phone,
           decoration: InputDecoration(
               hintText: text,
               suffixIcon:Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(

                     height: 30,
                     width: 45,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color:Color.fromRGBO(114, 101, 227, 1)),
                     child: Center(child: Text(icons,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
               ),

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
       ),
     );
   }
 }