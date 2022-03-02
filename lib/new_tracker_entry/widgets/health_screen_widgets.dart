import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class healthScreen_widget {
  Widget textfieldcontroller(Searchsymptom, icon, controller) {
    return Container(
      width: 275,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Search symptom',
            hintStyle: TextStyle(color: Color(0xff9C9EB9)),
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
}
