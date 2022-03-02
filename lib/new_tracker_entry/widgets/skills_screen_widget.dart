import 'package:flutter/material.dart';

class skilss_screen_widget {
  Widget skills_textfield(text, icons, controller) {
    return Center(
      child: Container(
        width: 285,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextField(
          controller: controller,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(color: Color(0xff9C9EB9)),
              suffixIcon: icons,
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

  Widget learnmore() {
    return Center(
      child: Container(
        width: 285,
        height: 45,
        decoration: BoxDecoration(
            color: Color.fromRGBO(228, 223, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: Color.fromRGBO(228, 223, 255, 1),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'images/erroricon.png',
                    height: 12,
                  )),
              RichText(
                text: TextSpan(
                  text: 'Learn more about ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Concentration.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(114, 101, 227, 1))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
