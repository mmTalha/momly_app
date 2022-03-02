import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen12.dart';

class screen10 extends StatefulWidget {
  const screen10({ Key? key }) : super(key: key);

  @override
  _screen10State createState() => _screen10State();
}

class _screen10State extends State<screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CupertinoNavigationBar(padding: EdgeInsetsDirectional.only(top: 10,),
      border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_ios_outlined,size:17,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
         
         middle: Text("KICK COUNTER",style: TextStyle(fontSize: 10),),
       ),body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:25),
          child: Container(
                    decoration: BoxDecoration(  color: Color(0xffF4F6FA), borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight:Radius.circular(40.0))
                          ),
                  height:600,
                  width: double.infinity,
                  child: Padding(
                   padding: const EdgeInsets.only(top:25),
                    child: Column(
                      children: [
                         Column(
                           children: [
                             Text("00:23",style: TextStyle(color: Color(0xffE8544E),fontSize: 48,fontWeight: FontWeight.w400),),
                              Text("You are been contracted",style: TextStyle(color: Color(0xffE8544E),fontSize: 16,fontWeight: FontWeight.w400),),
                           ],
                         ),
                      SizedBox(height: 40,),
                      InkWell(
                  onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen12()),

                    );},
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Center(
                              child: Container(
                                   width: 200.0,
                                   height: 200.0,
                                   decoration: BoxDecoration(
                                     color: const Color(0xffF4F6FA),
                                     borderRadius: BorderRadius.all( Radius.circular(150.0)),
                                     border: Border.all(
                                       color: Color(0xffE8544E),
                                       width: 3.0,
                                     ),
                                   ),
                                 ),
                            ),
                      
                             Positioned(
                               bottom: 10,
                               child: Container(
                                        width: 180.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all( Radius.circular(100.0)),
                                          border: Border.all(
                                           color: Color(0xffE8544E),
                                            width: 5.0,
                                          ),
                                          
                                        ),
                                        child:Center(child: Text("I have\ncontraction",textAlign: TextAlign.center,style: TextStyle(fontSize: 24,color: Color(0xffE8544E),),)))
                                      ),
                             
                      
                                 
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
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
                  ),
                ),
        ),
      ),
    );
  }
}