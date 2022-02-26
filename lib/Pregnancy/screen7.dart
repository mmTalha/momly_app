import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen8.dart';

class screen7 extends StatefulWidget {
  const screen7({ Key? key }) : super(key: key);

  @override
  _screen7State createState() => _screen7State();
}

class _screen7State extends State<screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CupertinoNavigationBar(
         padding: EdgeInsetsDirectional.only(top: 30,),
          leading: Icon(Icons.arrow_back_ios_outlined,size:21,color: Color(0xff4C5980)),
         automaticallyImplyLeading: false,
           border: Border(bottom: BorderSide(color: Colors.transparent)),
      backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:25),
          child: Container(
                    decoration: BoxDecoration(  color: Color(0xffF4F6FA), borderRadius: new BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight:Radius.circular(40.0))
                          ),
                  height: 550,
                  width: double.infinity,
                  child: Padding(
                   padding: const EdgeInsets.only(top:25,left: 15,right: 15,),
                    child: Column(
                      children: [
                        Text("0",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold,color: Color(0xff7265E3)),),
                      SizedBox(height: 40,),
                      InkWell(
                  onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen8()),

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
                                       color: Color(0xff7265E3),
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
                                           color: Color(0xff7265E3),
                                            width: 5.0,
                                          ),
                                          
                                        ),
                                        child: Image(image: AssetImage('assets/foot.png'))
                                      ),
                             ),
                      
                                 
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Icon(
  Icons.pause_outlined,
  color: Colors.grey,
),
Text("Pause",style: TextStyle(fontSize: 13,color: Colors.grey),),
                              ],),
                              Text("00:00",style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),),
                              Column(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all( Radius.circular(50.0)),
                                    border: Border.all(
                                         color: Colors.grey,
                                          width: 2.0,
                                        ),
                                  ),
                                  child: Icon(
  Icons.restart_alt_outlined,
  color: Colors.grey,
),
                                ),
Text("Reset",style: TextStyle(fontSize: 13,color: Colors.grey),),
                              ],),
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