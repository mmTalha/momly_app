import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pee_entry {
  Widget pee_entry_field() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        width: 285,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Text(
                'Appearance: ',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(76, 89, 128, 1),
                ),
              ),
            ),
            Container(
              width: 100,
              child: Text(
                'Normal',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(114, 101, 227, 1),
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Color.fromRGBO(228, 223, 255, 1),
            ),
          ],
        ),
      ),
    );
  }
}
