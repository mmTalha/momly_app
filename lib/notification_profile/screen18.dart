import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/notification_profile/screen19.dart';
import 'package:momly_app/widgets/widgets.dart';


class screen18 extends StatefulWidget {
  const screen18({ Key? key }) : super(key: key);

  @override
  _screen18State createState() => _screen18State();
}

class _screen18State extends State<screen18> {
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
              Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                    'assets/star.png'),
              fit: BoxFit.fill,
            ),
        
        ),
          ),
          Text("Support Momly\nSupport the Community",style: TextStyle(fontSize: 24,color: Color(0xff2D3142)),textAlign: TextAlign.center,),
             SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:24,right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Momly is used by thousands of women (and men) worldwide. We are delighted to support parents who strive for a healthier and happier family with Momly.",
                      style: TextStyle(color: Color(0xff4C5980),fontSize: 14),
                      ),
                      SizedBox(height: 10,),
                      Text("But we need your support to keep Momly alive. To continue to offer you all the features for free, we ask you to support us by watching a short advertising video.",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14),),
                      SizedBox(height: 10,),
                      Text("You can also support us with a monthly subscription. In this case, Momly app will not offer you watching ads.",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14),),
                       SizedBox(height: 10,),
                      Text("Love,\nMomly Team",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14),),
                       
                    ],
                  ),
                ),
                 
                  Padding(
                     padding: const EdgeInsets.only(left:13,right: 13,),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                screen19()),
      
                      );},
                          child: Stack(
                            children: [
                        
                              Container(
                                child: supportmomly().stakeprice(context, "\$400", "\$4.99/month, billed yearly \$60")
                              ),
                              Positioned(
                                right: 51,
                                child: Container(
                                  height: 45,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xff8FACFF),
                                              borderRadius: BorderRadius.all( Radius.circular(15.0)),
                                                 
                                              
                                            ),
                                            child: Center(child: Text("SAVE 30%")),
                                  
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                        child: supportmomly().stakeprice(context, "\$40", "\$4.99/month, billed monthly"),
                       )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                                   height: 140,
                                       width: MediaQuery.of(context).size.width,
                                   decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                               color: Color(0xffF4F6FA),),
                                  child: Padding(
                                        padding: const EdgeInsets.only(left: 30,right: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Watch ad video",  style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Watch an ad video (approx. 30 sec) to support Momly.",  style: TextStyle(color: Color(0xff4C5980),fontSize: 14,),),
                      SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                 ),
                  ),
                               SizedBox(height: 30,),
                                 Text("Subscription billed as annual payment.\nRecurring billing. Cancel anytime.",  style: TextStyle(color: Color(0xff9C9EB9),fontSize: 12,),textAlign: TextAlign.center,),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,right: 80),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text("Term",  style: TextStyle(color: Color(0xff4C5980),fontSize: 17,)),
                                Icon(
  Icons.circle,
  size: 5,
  color: Color(0xff4C5980)
),
                                Text("Privacy",  style: TextStyle(color: Color(0xff4C5980),fontSize: 17,)),
                                 Icon(
  Icons.circle,
  size: 5,
  color: Color(0xff4C5980)
),
                                Text("momly.org",  style: TextStyle(color: Color(0xff4C5980),fontSize: 17,)),
                            ],
                          ),
                        ),
                      ),
                         SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}