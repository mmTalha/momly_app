import 'package:flutter/material.dart';



class profile_details_screen extends StatelessWidget {
  const profile_details_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
            height: 340,
            width:330,
            decoration: BoxDecoration(
              color: Color(0xffE4DFFF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image.asset('assets/girl.png'),

              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
