import 'package:flutter/material.dart';

class tab_1 extends StatelessWidget {
  const tab_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
                text: '1st ',
                style: TextStyle(
                    color: Color(0xff76265E3),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Month',
                    style: TextStyle(
                        color: Color(0xff2D3142),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            height: 45,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.radio_button_checked,
                          color: Color(0xffD1CCED),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("You")
                    ],
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 45,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.radio_button_checked,
                            color: Color(0xff7265e3),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("You")
                      ],
                    ),
                    Icon(
                      Icons.edit,
                      color: Color(0xff7265e3),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
