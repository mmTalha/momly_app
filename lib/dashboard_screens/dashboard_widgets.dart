import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboard_Widgets {
  Widget moodwidget(ontap, BuildContext context, mood, fellings, description,
      images, emojies, time, imagesa) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 15),
          height: 142,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(mood,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(114, 101, 227, 1),
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Text(time,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(156, 158, 185, 1),
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 25, height: 25, child: Image.asset(emojies)),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fellings,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      Text(description,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(76, 89, 128, 1),
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(images),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(imagesa),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget doctorcard(pic, name, field) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.only(
                  left: 10,
                ),
                height: 60,
                width: 300,
                child: Center(
                  child: Row(
                    children: [
                      Container(width: 35, height: 35, child: Image.asset(pic)),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(name,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Text(field,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      )
                    ],
                  ),
                )),
          )
        ]);
  }
}
