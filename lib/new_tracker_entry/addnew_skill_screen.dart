import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/new_tracker_entry/widgets/skills_screen_widget.dart';
import 'package:momly_app/survey_screens/second_screen.dart';
import 'package:momly_app/survey_screens/your_opinioin_matter_screen.dart';

class add_new_skill_screen extends StatelessWidget {
  const add_new_skill_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/graph.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/i.png'),
                ),
              ),
            ),
          ],
        ),
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Notification.png'),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Add new ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                              text: ' Skill ',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(114, 101, 227, 1))),
                          TextSpan(
                            text: 'for \nRichard',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: new Container(
                    padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            skilss_screen_widget().skills_textfield(
                                'Choose a skill',
                                Icon(
                                  Icons.expand_more_outlined,
                                  size: 30,color: Color(0xff9C9EB9),
                                ),
                                null),
                            SizedBox(
                              height: 15,
                            ),
                            skilss_screen_widget().learnmore(),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                width: 285,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  //mainAxisAlignment:
                                      //MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Skill level: ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(76, 89, 128, 1),
                                      ),
                                    ),
                                    SizedBox(width: 5.0,),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 25,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,unratedColor: Color(0xffEDF1F7),
                                          itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Color(0xffFF9D2B),
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Container(
                                width: 327,
                                height: 118,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      hintText: 'Add notes or comments..',
                                      hintStyle: TextStyle(
                                          color: Color(0xff9C9EB9),
                                          fontSize: 14.0),
                                      prefixStyle:
                                          TextStyle(color: Color(0xff9C9EB9)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Color.fromRGBO(
                                                242, 242, 242, 1),
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Add Media',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(76, 89, 128, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset('images/cock.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(height:58,width: 65,decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/duck2.png',),fit: BoxFit.fill),
                                ), ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(height:58,width: 65,decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/empty.png',),fit: BoxFit.fill),
                                ), ),
                              ],
                            ),
                          ],
                        ),
                        Center(
                          child: buttons().largebuttons('Add Symptoms', () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        opinion_screen()));
                          }),
                        ),
                      ],
                    ),
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
