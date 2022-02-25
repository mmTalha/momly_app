import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/momly_Academy_screens/widgets.dart';

class Home_Activities_Screen extends StatelessWidget {
  const Home_Activities_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.back),
        trailing: Icon(CupertinoIcons.search),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Home Activities',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 345,
                width: 345,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/home_Activities_bg.png')),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DAILY PICK',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff7FE3F0),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sleep With Me\n Bedtime Stories',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Train your mind for a happier,\n healthier life',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff7265E3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/back-icon copy.png',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Lets start',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  'Recent',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: GridView.extent(
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  maxCrossAxisExtent: 200.0,

                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,left: 10),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff8DC2FF),
                              image: DecorationImage(
                                image: AssetImage('images/spomsored.png'),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(

                            height:30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white
                            ),
                            child:  Center(
                              child: Text('Sponsored',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff7265E3),
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ),

                        ),
                        SizedBox(height: 10,),
                        Text('Living Beyond Fear',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                        Text('15 minutes',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff9C9EB9),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    academy_Widgets().sponsoreditems(0xff8DC2FF,'The Twilight Zone','15 minutes','images/mask.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10,left: 10),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff8DC2FF),
                              image: DecorationImage(
                                image: AssetImage('images/spomsored.png'),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(

                              height:30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white
                              ),
                              child:  Center(
                                child: Text('New',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff7265E3),
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),

                        ),
                        SizedBox(height: 10,),
                        Text('Retrain Your Brain',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                        Text('15 minutes',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff9C9EB9),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),

                    academy_Widgets().sponsoreditems(0xff8DC2FF,'The Twilight Zone','15 minutes','images/mask.png'),




                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                  'Earlier',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10,),
              Row(

                children: [
                  Container(

                      child:
                      Container(
                          height:60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(175, 142,255 , 1)
                          )
                          ,
                          child: Image.asset('images/achievement.png'))),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children:  [
                          Text('Daily target',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 60,),
                          Container(

                            height:20,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffE1DDF5)
                            ),
                            child:  Center(
                              child: Text('Sponsored',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff7265E3),
                                      fontWeight: FontWeight.w600)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5,),

                      Text('Congrats you just hit your goal!',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(76, 89,128 , 1),
                              fontWeight: FontWeight.w400)),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 10,),
              academy_Widgets().tile('images/achievement.png','Achievement','You are the first among your friends',Color.fromRGBO(31, 135,254 , 1)),
              SizedBox(height: 10,),
              academy_Widgets().tile('images/nutrition.png','Nutrition','Your breakfast has high cals',Color(0xff59B9FD)),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 30,right: 20,
                  ),
                  height: 250,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(244, 246, 250, 1),
                  ),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Get a second opinion',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ),
                      dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),
                      dashboard_Widgets().doctorcard('images/prof_deniz.png','Prof. Dr. Deniz Konya','Neurosurgery'),



                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
