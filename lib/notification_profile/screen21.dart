import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/home_profiles/screen22.dart';
import 'package:momly_app/widgets/widgets.dart';


class screen21 extends StatefulWidget {
  const screen21({ Key? key }) : super(key: key);

  @override
  _screen21State createState() => _screen21State();
}

class _screen21State extends State<screen21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
         padding: EdgeInsetsDirectional.only(top: 30,),
          leading: Icon(Icons.arrow_back_ios_outlined,size:21,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
           border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
         padding: const EdgeInsets.only(top: 70),
          child: Container(
            width: double.infinity,
                                height:700,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffF4F6FA)
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Center(
                                      child: Container(
                            height:20,
                            width: 20,
                            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                      'assets/lock.png'),
                fit: BoxFit.fill,
              ),
          
          ),
            ),
                                    ),
                                    SizedBox(height: 8,),
            Center(child: Text("Sign-In Required",style: TextStyle(fontSize: 24,color: Color(0xff2D3142),fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
               SizedBox(height: 20,),
               Center(
                 child: Text("You are required to sign-in to\nproceed.",
                          style: TextStyle(color: Color(0xff4C5980),fontSize: 18),
                          textAlign: TextAlign.center,
                          ),
               ),
                SizedBox(height: 20,),
               Center(
                 child: Text("Please choose one of the following\nactions to continue. ",
                          style: TextStyle(color: Color(0xff4C5980),fontSize: 18),
                          textAlign: TextAlign.center,
                          ),
               ),
                        SizedBox(height: 40,),

                        InkWell(
                          onTap: (){Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    screen22()),
          
                          );},
                          child: signin().sign(Colors.white,"Sign in With Google",Color(0xff292929),14.0,FontWeight.normal,'assets/google.png')),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    screen22()),
          
                          );},
                          child: signin().sign(Colors.black,"Sign in With Apple",Colors.white,16.0,FontWeight.bold,'assets/apple.png')),
                        
                         SizedBox(height: 200,),
                       
                                   Center(child: Text("You can also tap back button to go back and\ncontinue using Momly as a guest.",  style: TextStyle(color: Color(0xff9C9EB9),fontSize: 12,),textAlign: TextAlign.center,)),
                                  ],),
                                ),
          ),
        ),
      ),
    );
  }
}