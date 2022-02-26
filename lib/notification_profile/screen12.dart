import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen13.dart';

class screen12 extends StatefulWidget {
  const screen12({ Key? key }) : super(key: key);

  @override
  _screen12State createState() => _screen12State();
}

class _screen12State extends State<screen12> {
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
      middle: Text("NOTIFICAION DETAILS",style: TextStyle(fontSize: 10),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Column(
                  children: [
                    Text("Do Bananas Cause Weight Gain or\nHelp With Weight Loss?",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Color(0xff2D3142),fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                  Text("1 mo ago",style: TextStyle(fontSize: 12,color: Color(0xff9C9EB9),)),
                  SizedBox(height: 8,),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffE4DFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Sponsered",style: TextStyle(fontSize: 10,color: Color(0xff7265E3),))),
                  )
                  ],
                ),
              ),
               SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/baby.png"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Bananas are healthy and nutritious, there is no doubt about that. They are also high in fiber, but low in calories. Bananas are healthy and nutritious, there is no doubt about that. They are also high in fiber, but low in calories. ",
                    style: TextStyle(color: Color(0xff4C5980),fontSize: 14),
                    ),
                    SizedBox(height: 18,),
                    Text("Bananas are healthy and nutritious, there is no doubt about that. They are also high in fiber, but low in calories. ",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14),),
                    SizedBox(height: 18,),
                    Text("Bananas are healthy and nutritious, there is no doubt about that. They are also high in fiber, but low in calories. Bananas are healthy and nutritious, there is no doubt about that. ",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14),),
                  ],
                ),
              ),
                SizedBox(height: 40,),
              Padding(
               padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20),
                child: InkWell(
                  onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen13()),

                    );},
                  child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff7265E3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Optional CTA",style: TextStyle(fontSize: 16,color: Colors.white,))),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}