import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/choose_profile_photo.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

class choose_your_gender extends StatelessWidget {
  const choose_your_gender({Key? key, this.buttons}) : super(key: key);
  final buttons;

  @override
  Widget build(BuildContext context) {
    final gender = Provider.of<providermodel>(context);

    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                
                Center(
                  child: Text(
                    'Choose your Gender',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff2D3142),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Momly provides gender-specific\nfeatures. For a more personalized\n experience, choose your gender.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(76, 89, 128, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Container(
                     height: 100,
                   ),
                   InkWell(
                     onTap: () {
                       gender.gender();
                     },
                     child:
                     Container(
                       height: 190,
                       width: 146,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: gender.animation
                               ? Color.fromRGBO(114, 101, 227, 1)
                               : Colors.white),
                       child: Center(
                         child: Stack(
                           overflow: Overflow.visible,
                          alignment: Alignment.center,
                           children: [
                             Container(
                               height: 190,
                               width: 190,
                             ),
                             Positioned(
                               left: 5,

                                 child: Image.asset('images/newmale.png',)),
                             SizedBox(
                               height: 10,
                             ),
                             Positioned(
                               bottom: 10,
                               child: Center(
                                 child: Text(
                                   'Male',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                       color: gender.animation
                                           ? Colors.white
                                           : Colors.black,
                                       fontSize: 18,
                                       fontWeight: FontWeight.w500),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),

                    InkWell(
                      onTap: () {
                        gender.changegender();
                      },
                      child:
                      Container(
                        height: 190,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: gender.female
                                ? Color.fromRGBO(114, 101, 227, 1)
                                : Colors.white
                        ),
                        child: Center(
                          child: Stack(
                            overflow: Overflow.visible,
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 190,
                                width: 190,
                              ),
                              Positioned(
                                top: 35,
                                  right: 30,

                                  child: Image.asset('assets/img.png',)),
                              SizedBox(
                                height: 10,
                              ),
                              Positioned(
                                bottom: 10,
                                child: Center(
                                  child: Text(
                                    'Female',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: gender.female
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                buttons,
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Center(
              child: Text(
                'Prefer not to choose',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(114, 101, 227, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
