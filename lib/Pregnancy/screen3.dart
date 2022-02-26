import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen4.dart';

class screen3 extends StatefulWidget {

  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  List items =[
  "1st Month" ,
  "2nd Month",
  "3rd Month",
  "4th Month",
  "5th Month",
  "6th Month",
  "7th Month",
  "8th Month",
  "9th Month",
  "Birth and After",
  "View all"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
      padding: EdgeInsetsDirectional.only(top: 30,),
      border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
       leading: Icon(Icons.arrow_back_ios_outlined,size:17,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
         
         middle: Text("PREGNANCY TEST",style: TextStyle(fontSize: 10),),
       ),
      body: Container(
        child: GridView.builder(
  itemCount:items.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    childAspectRatio: (2 / 1),
  ),
  itemBuilder: (context,index,) {
    return Container(
      decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),
    
     child: InkWell(
       onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen4()),

                    );},
       child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.collections_outlined,color: Color(0xff4C5980)),
            Text(items[index],style: TextStyle(fontSize: 15, color: Color(0xff4C5980)),
                textAlign: TextAlign.center),
          ],
        ),
     ),
    );
  },
),
      )
    );
  }
}