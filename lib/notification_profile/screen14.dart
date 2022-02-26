import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen16.dart';

class screen14 extends StatefulWidget {
  const screen14({ Key? key }) : super(key: key);

  @override
  _screen13State createState() => _screen13State();
}

class _screen13State extends State<screen14> {
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
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Profile",style: TextStyle(fontSize: 32,color: Color(0xff2D3142)) ,),
                        Column(
                          children: [
                            Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
            image: DecorationImage(
                    image: AssetImage(
                              'assets/gi.png'),
                    fit: BoxFit.fill,
            ),
        
        ),
          ),
          Text("change",style: TextStyle(fontSize: 9,color: Color(0xff7265E3)) ,),
                          ],
                        ),
      
                      ],
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF4F6FA)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Profile Information",style: TextStyle(fontSize: 16,color: Color(0xff2D3142),fontWeight: FontWeight.w700) ,),
                     SizedBox(height: 30,),
                    Container(
                      height:60,
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                     padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(children: [
                      Text("Name:",style: TextStyle(fontSize: 16),),
                      SizedBox(width: 50,),
                      Text("Candece Beck",style: TextStyle(fontSize: 16,color: Color(0xff7265E3)),),
                    ],),
                  ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height:60,
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                     padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(children: [
                      Text("Gender:",style: TextStyle(fontSize: 16),),
                      SizedBox(width:45,),
                      Text("Female",style: TextStyle(fontSize: 16,color: Color(0xff7265E3)),),
                    ],),
                  ),
                  
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height:60,
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                     padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(children: [
                      Text("+92:",style: TextStyle(fontSize: 16),),
                      SizedBox(width:35,),
                      Text("33334444",style: TextStyle(fontSize: 16,color: Colors.red),),
                    ],),
                  ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height:60,
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                     padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(children: [
                      Text("Date of Birth:",style: TextStyle(fontSize: 16),),
                      SizedBox(width:5,),
                      Text("July 28, 1981",style: TextStyle(fontSize: 16,color: Color(0xff7265E3)),),
                    ],),
                  ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height:60,
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Padding(
                     padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(children: [
                      Text("Language:",style: TextStyle(fontSize: 16),),
                      SizedBox(width:35,),
                      Text("English",style: TextStyle(fontSize: 16,color: Color(0xff7265E3)),),
                    ],),
                  ),
                    ),
                  ],),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF4F6FA)
                ),
                child: Padding(
                   padding: const EdgeInsets.only(left: 30,right: 20,top: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         Text("My Profiles",style: TextStyle(fontSize: 16,color: Color(0xff2D3142),fontWeight: FontWeight.w700) ,),
                         SizedBox(height: 15,),
                         Row(
                           children: [
                             Container(
                               height: 50,
                               width: 50,
                               decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/av.png"))
                               ),
                             ),
                             SizedBox(width: 20,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                    Text("Add Profile",style: TextStyle(fontSize: 16,color: Color(0xff2D3142),fontWeight: FontWeight.w500) ,),
                                      SizedBox(height: 6,),
                                       Text("Tap here to create your first\nprofile",style: TextStyle(fontSize: 14,color: Color(0xff4C5980)) ,),
                               ],
                             )
                           ],
                         ),
                          SizedBox(height: 15,),
                        
                    ],
                  ),
                ),
              ),
                 SizedBox(height: 50,),
                 Padding(
                   padding: const EdgeInsets.only(left: 30,right: 20,top: 30),
                   child: InkWell(
                  onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen16()),

                    );},
                     child: Container(
                    width: double.infinity,
                                   height: 60,
                                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffF4F6FA)
                                   ),
                                   child:  Center(child: Text("LOGOUT",style: TextStyle(fontSize: 16,color: Color(0xff2D3142)) ,)),
                     ),
                   ),
                 ),
                 SizedBox(height: 17,),
            ],
          ),
        ),
      ),
    );
  }
}