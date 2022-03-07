import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/Notifications_screen.dart';
import 'package:momly_app/onboading_profile_screens/choose_your_gender.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

class height_screen extends StatelessWidget {
  const height_screen({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    final gender = Provider.of<providermodel>(context);

    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Height',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff2D3142),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Enter your current height.',
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
              Center(
                child: Container(
                  width: 275,
                  height: 58,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff4075CD).withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 100.0, left: 100),
                    child: TextField(
                      autocorrect: true,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          suffixText: "ft",
                          suffixStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          prefixStyle: TextStyle(color: Colors.grey),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buttons,
            ],
          ),
        ),
      ),
    );
  }
}
