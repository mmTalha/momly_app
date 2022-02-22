import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/choose_your_gender.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

import 'height.dart';

class weight extends StatelessWidget {
  const weight({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    final gender = Provider.of<providermodel>(context);

    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 20,),

            SizedBox(height: 20,),
            Center(
              child: Text('Weight',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Enter your current weight.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),),
            ),
            // SizedBox(height: 20,),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     InkWell(
            //       onTap: (){
            //         gender.gender();
            //       },
            //       child: Container(
            //         height: 50,
            //         width: 80,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: gender.animation? Color.fromRGBO(114, 101, 227, 1):Colors.white
            //         ),
            //         child:   Center(
            //           child: Text('lbs',
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //                 color:gender.animation?Colors.white: Color.fromRGBO(156, 158, 185, 1),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w600
            //             ),),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 10,),
            //     InkWell(
            //       onTap: (){
            //         gender.changegender();
            //       },
            //       child: Container(
            //         height: 50,
            //         width: 80,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: gender.female? Color.fromRGBO(114, 101, 227, 1):Colors.white
            //         ),
            //         child:   Center(
            //           child: Text('kg',
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //                 color:gender.female?Colors.white: Color.fromRGBO(156, 158, 185, 1),
            //
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w600
            //             ),),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 275,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      suffixStyle: TextStyle(color: Colors.grey),

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
            ),
            SizedBox(height: 20,),
            buttons,
          ],
        ),
      ),
    );
  }
}
