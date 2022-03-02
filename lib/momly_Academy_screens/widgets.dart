import 'package:flutter/material.dart';

class academy_Widgets {
  Widget tile(img, title, subtitle, color) {
    return Row(
      children: [
        Container(
            child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: color),
                child: Image.asset(img))),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 9,
            ),
            Text(subtitle,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }

  Widget sponsoreditems(color, name, time, img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          height: 100,
          decoration: BoxDecoration(
              color: Color(color),
              image: DecorationImage(
                image: AssetImage(img),
              ),
              borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(name,
            style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5,
        ),
        Text(time,
            style: TextStyle(
                fontSize: 12,
                color: Color(0xff9C9EB9),
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
