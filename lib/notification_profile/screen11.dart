import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen11 extends StatefulWidget {
  const screen11({ Key? key }) : super(key: key);

  @override
  _screen11State createState() => _screen11State();
}

class _screen11State extends State<screen11> {
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Notifications",style: TextStyle(color: Color(0xff2D3142),fontSize: 32,fontWeight:FontWeight.w600),),
              SizedBox(height: 25,),
              Text("Unread",style: TextStyle(color: Color(0xff2D3142),fontSize: 20,fontWeight:FontWeight.w500),),
              SizedBox(height: 15,),
              
            ],
          ),
        ),
      ),
      
    );
  }


}