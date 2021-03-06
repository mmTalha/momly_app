import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/survey_screens/second_screen.dart';

class headchee_screen extends StatelessWidget {
  const headchee_screen({Key? key}) : super(key: key);

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
            color: Color(0xff4C5980),
            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Image.asset('images/Notification.png'),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'How is your ',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'headache\n',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(114, 101, 227, 1))),
                      TextSpan(
                        text: 'today?',
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
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 0,
                              right: 0,
                            ),
                            width: 319,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Severity',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(76, 89, 128, 1),
                                  ),
                                ),
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

                                // Row(
                                //   children: [
                                //     for (var i = 0; i < 5; i++)
                                //       Icon(
                                //         Icons.star,
                                //         color: Colors.orange,
                                //       ),
                                //   ],
                                // )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'To indicate the severity of your headache,give a score\nfrom 1 to 5,with 1 being the lowest and 5 the highest.',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(76, 89, 128, 0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                  hintText: '    Add notes or comments..',
                                  hintStyle:
                                  TextStyle(color: Color(0xff9C9EB9),fontSize: 14.0),
                                  prefixStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(242, 242, 242, 1),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(242, 242, 242, 1),
                                      )),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                            Container(height: 58,width: 65, child: Image.asset('assets/duck2.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Container(height: 58,width: 65, child: Image.asset('assets/empty.png')),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: buttons().largebuttons('Add Symptom', () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    second_screen()));
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
