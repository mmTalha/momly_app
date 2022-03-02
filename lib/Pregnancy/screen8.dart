import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen9.dart';

class screen8 extends StatefulWidget {
  const screen8({ Key? key }) : super(key: key);

  @override
  _screen8State createState() => _screen8State();
}

class _screen8State extends State<screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
      padding: EdgeInsetsDirectional.only(top: 10,),
      border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_ios_outlined,size:17,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
         
         middle: Text("KICK COUNTER - HISTORY",style: TextStyle(fontSize: 10),),
       ),body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:25),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(  color: Color(0xffF4F6FA), borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight:Radius.circular(40.0))
                          ),
                  height: 800,
                  width: double.infinity,
                  child: Padding(
                   padding: const EdgeInsets.only(top:25,left: 15,right: 15,),
                    child: InkWell(
                  onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen9()),

                    );},
                      child: Column(
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Container(
                              color: Color(0xff7265E3),
                            height:40,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left:50,right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  
                                  Text("date",style: TextStyle(fontSize:18,color: Colors.white),),
                                  VerticalDivider(color: Colors.white,),
                                  Text("duration",style: TextStyle(fontSize:18,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 70,
                          child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left:50,right: 50),
                              child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("2022,1 Jan 12:08",style: TextStyle(fontSize:14,color: Color(0xff4C5980)),),
                                  Text("28 Seconds",style: TextStyle(fontSize:14,color: Color(0xff4C5980)),),
                                ],
                              ),
                            ),
                            SizedBox(height: 2,),
                            Divider(color: Colors.grey),
                            SizedBox(height: 2,),
                           Padding(
                                padding: const EdgeInsets.only(left:50,right: 50),
                              child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("2022,1 Jan 12:08",style: TextStyle(fontSize:14,color: Color(0xff4C5980)),),
                                  Text("28 Seconds",style: TextStyle(fontSize:14,color: Color(0xff4C5980)),),
                                ],
                              ),
                            ),
                          ],
                        ),),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}