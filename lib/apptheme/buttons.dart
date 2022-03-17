import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttons {
  Widget onboardingbutton(
      img, text, color, textcolour, sze, wight, VoidCallback ontap) {
    return Container(
      width: 325,
      height: 50,
      child: CupertinoButton(
        padding: EdgeInsets.all(10),
        minSize: 2.0,
        onPressed: ontap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 30,
            ),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textcolour,
                  fontSize: sze,
                  fontWeight: wight),
            ),
          ],
        ),
        color: color,
        disabledColor: Colors.grey,
        pressedOpacity: 0.6,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }

  Widget buttonsab(text, VoidCallback ontap) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        child: CupertinoButton(
          padding: EdgeInsets.all(10),
          minSize: 2.0,
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          color: Color.fromRGBO(114, 101, 227, 1),
          disabledColor: Colors.grey,
          pressedOpacity: 0.6,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  Widget largebuttons(text, VoidCallback ontap) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 60,
        child: CupertinoButton(
          padding: EdgeInsets.all(15),
          minSize: 2.0,
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          color: Color.fromRGBO(114, 101, 227, 1),
          disabledColor: Colors.grey,
          pressedOpacity: 0.6,
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
      ),
    );
  }

  Widget momlybuttons(text, VoidCallback ontap) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60),
      child: Container(
        width: double.infinity,
        height: 60,
        child: CupertinoButton(
          padding: EdgeInsets.all(10),
          minSize: 2.0,
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          color: Color.fromRGBO(114, 101, 227, 1),
          disabledColor: Colors.grey,
          pressedOpacity: 0.6,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}
