import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

class weight extends StatelessWidget {
  const weight({Key? key, this.buttons}) : super(key: key);
  final buttons;
  @override
  Widget build(BuildContext context) {
    final weight = Provider.of<providermodel>(context);

    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //SizedBox(height: 20,),

              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Weight',
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
                  'Enter your current weight.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(76, 89, 128, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // gender.gender();
                      weight.weight();
                    },
                    child: Container(
                      height: 65,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: weight.animation
                              ? Color.fromRGBO(114, 101, 227, 1)
                              : Colors.white),
                      child: Center(
                        child: Text(
                          'lbs',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: weight.animation
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      weight.changeweight();
                    },
                    child: Container(
                      height: 65,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: weight.female
                              ? Color.fromRGBO(114, 101, 227, 1)
                              : Colors.white),
                      child: Center(
                        child: Text(
                          'kg',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:
                                  weight.female ? Colors.white : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
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
                  child: TextField(
                    autocorrect: true,
                    textAlign: TextAlign.center,
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
