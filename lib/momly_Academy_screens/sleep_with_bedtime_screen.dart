import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/dashboard_screens/dashboard_widgets.dart';
import 'package:momly_app/momly_Academy_screens/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class sleep_screen extends StatelessWidget {
  const sleep_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.back),
        trailing: Image.asset('images/Share.png'),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Academy - Home Activities',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff7265E3),
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sleep With Me\nBedtime Stories',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset('images/bedtime.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Train your mind for a happier, healthier life by learning the fundamentals of mediation and mindfullness. Train your mind for a happier, healthier life by learning the fundamentals of mediation and mindfullness. ',
                      maxLines: 6,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff4C5980),
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child:
                        buttons().largebuttons('Add Optional CTA Button', () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(

                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rate & review',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Share your experience to help others',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff4C5980),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 30,
                                          color: Color(0xff8C80F8),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 30,
                                          color: Color(0xff8C80F8),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 30,
                                          color: Color(0xff8C80F8),
                                        ),
                                        Icon(
                                          Icons.star_border_rounded,
                                          size: 30,
                                          color: Color(0xff8C80F8),
                                        ),
                                        Icon(
                                          Icons.star_border_rounded,
                                          size: 30,
                                          color: Color(0xff8C80F8),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Optional: Write a comment',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff4C5980),
                                      ),
                                    ),
                                    Material(


                                      color: Color(0xffF4F6FA),
                                      child: Center(
                                        child: Container(
                                          width: 285,
                                          height: 110,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF4F6FA),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: TextField(
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                hintText:
                                                    'Add notes or comments..',
                                                prefixStyle: TextStyle(
                                                    color: Colors.grey),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              242, 242, 242, 1),
                                                        )),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                          color: Color.fromRGBO(
                                                              242, 242, 242, 1),
                                                        )),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide: BorderSide(
                                                        color: Colors.red)),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.red))),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                actions: [
                                  CupertinoDialogAction(
                                      child: Text('Close'),
                                      onPressed: () => Navigator.pop(context)),
                                ],
                              ));
                    }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 20,
                      ),
                      height: 250,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(244, 246, 250, 1),
                      ),
                      child: Column(
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
                          dashboard_Widgets().doctorcard(
                              'images/prof_deniz.png',
                              'Prof. Dr. Deniz Konya',
                              'Neurosurgery'),
                          dashboard_Widgets().doctorcard(
                              'images/prof_deniz.png',
                              'Prof. Dr. Deniz Konya',
                              'Neurosurgery'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      'More in Home Activities',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  academy_Widgets().tile(
                      'images/back-icon copy.png',
                      'Train Whistle At Night',
                      'Congrats you just hit your goal!',
                      Color(0xff8C80F8)),
                  SizedBox(
                    height: 20,
                  ),
                  academy_Widgets().tile(
                      'images/back-icon copy.png',
                      'Train Whistle At Night',
                      'Congrats you just hit your goal!',
                      Color(0xff8C80F8)),
                  SizedBox(
                    height: 20,
                  ),
                  academy_Widgets().tile(
                      'images/back-icon copy.png',
                      'Train Whistle At Night',
                      'Locked - Premium Only',
                      Color(0xffD6D9E0)),
                  SizedBox(
                    height: 20,
                  ),
                  academy_Widgets().tile(
                      'images/back-icon copy.png',
                      'Train Whistle At Night',
                      'Locked - Premium Only',
                      Color(0xffD6D9E0)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 155,
              color: Color(0xffE4DFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rate & review',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Share your experience to help others',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff4C5980),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Color(0xff8C80F8),
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Color(0xff8C80F8),
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Color(0xff8C80F8),
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 30,
                        color: Color(0xff8C80F8),
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 30,
                        color: Color(0xff8C80F8),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                children: [
                  Text(
                    '4.7',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Color(0xff8C80F8),
                  ),
                  Text(
                    '(28 Reviews)',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff4C5980),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('images/Notification.png'),
                            SizedBox(
                              width: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Marie Smith',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  child: Text('1 mo ago',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(147, 147, 170, 1),
                                          fontWeight: FontWeight.w400)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 190,
                                  child: Text(
                                      'I use this most every morning to get me moving with whatever may be on my mind that needs attention 🤩',
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(147, 147, 170, 1),
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffE1DDF5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xff8C80F8),
                                ),
                                Center(
                                  child: Text('5.0',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff7265E3),
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            )),
                      ],
                    ),

                  ],
                )),
            new CircularPercentIndicator(radius:  40, lineWidth: 5.0, percent: 0.75, center: new Text("75%", style: TextStyle(color: Color(0xFF535355))), linearGradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: <Color>[Color(0xFF1AB600),Color(0xFF6DD400)]),rotateLinearGradient: true, circularStrokeCap: CircularStrokeCap.round)
          ],
        ),
      ),
    );
  }
}
