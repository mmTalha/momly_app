import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen3.dart';

class screen1 extends StatefulWidget {
  const screen1({ Key? key }) : super(key: key);

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CupertinoNavigationBar(
      trailing: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                  'assets/i.png'),
          ),
      
      ),
    ),
      padding: EdgeInsetsDirectional.only(top: 30,),
      border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_ios_outlined,size:17,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
         
         middle: Text("PREGNANCY TEST",style: TextStyle(fontSize: 10),),
       ),
     body: Container(
       
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Container(
            decoration: BoxDecoration(  color: Color(0xffF4F6FA), borderRadius: new BorderRadius.only(
                            topLeft:  const  Radius.circular(40.0),
                            topRight: const  Radius.circular(40.0))
                    ),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top:25,left: 15,right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                   text: '1st ',
              style: TextStyle(
                  color: Color(0xff76265E3), fontSize: 15,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'Month',
                    style: TextStyle(
                        color: Color(0xff2D3142), fontSize:15,fontWeight: FontWeight.bold),
                )
                  ]
                  ),
                ),
                 SizedBox(height: 10,),
      
                Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                  height:45,
                  width: double.infinity,
                     child:Padding(
                       padding: const EdgeInsets.only(left:18.0, right: 18),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(children: [
                             InkWell(
                               onTap: (){},
                               child: Icon(Icons.radio_button_checked, color: Color(0xffD1CCED),
                               ),
                             ),
                             SizedBox(width: 10,),
                             Text("You")
                           ],
                             
                           ),Icon(Icons.edit, color: Colors.grey,)
                         ],
                       ),
                     ),
                  ),
                  SizedBox(height: 10,),
                   InkWell(
                     onTap: (){
                        Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen3()),

                    );
                     },
                     child: Container(
                                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                     height:45,
                                     width: double.infinity,
                       child:Padding(
                         padding: const EdgeInsets.only(left:18.0, right: 18),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(children: [
                               InkWell(
                                 onTap: (){},
                                 child: Icon(Icons.radio_button_checked, color: Color(0xff7265e3),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Text("You")
                             ],
                               
                             ),Icon(Icons.edit,  color: Color(0xff7265e3),)
                           ],
                         ),
                       ),
                       
                                     ),
                   ),
                  SizedBox(height: 50,),
      
      
                  //2nd month
      
                   RichText(text: TextSpan(
                   text: '2nd ',
              style: TextStyle(
                  color: Color(0xff76265E3), fontSize: 15,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: 'Month',
                    style: TextStyle(
                        color: Color(0xff2D3142), fontSize:15,fontWeight: FontWeight.bold),
                )
                  ]
                  ),
                ),
                 SizedBox(height: 10,),
      
                Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                  height:45,
                  width: double.infinity,
                     child:Padding(
                       padding: const EdgeInsets.only(left:18.0, right: 18),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(children: [
                             InkWell(
                               onTap: (){},
                               child: Icon(Icons.radio_button_checked, color: Color(0xffD1CCED),
                               ),
                             ),
                             SizedBox(width: 10,),
                             Text("You")
                           ],
                             
                           ),Icon(Icons.edit, color: Colors.grey,)
                         ],
                       ),
                     ),
                  ),
                  SizedBox(height: 10,),
                   Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                  height:45,
                  width: double.infinity,
                     child:Padding(
                       padding: const EdgeInsets.only(left:18.0, right: 18),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(children: [
                             InkWell(
                               onTap: (){},
                               child: Icon(Icons.radio_button_checked, color: Color(0xff7265e3),
                               ),
                             ),
                             SizedBox(width: 10,),
                             Text("You")
                           ],
                             
                           ),Icon(Icons.edit,  color: Color(0xff7265e3),)
                         ],
                       ),
                     ),
                     
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}