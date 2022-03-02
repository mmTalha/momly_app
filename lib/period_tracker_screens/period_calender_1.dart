import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/period_tracker_screens/period_calendar.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class period_calendar1 extends StatefulWidget {
  const period_calendar1({Key? key}) : super(key: key);

  @override
  _period_calendar1State createState() => _period_calendar1State();
}

class _period_calendar1State extends State<period_calendar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/i.png'),
            ),
          ),
        ),
        padding: EdgeInsetsDirectional.only(
          top: 30,
        ),
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 17, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        middle: Text(
          "PERIOD TRACKER",
          style: TextStyle(fontSize: 10),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffF4F6FA),
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0))),
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                children: [
                  SleekCircularSlider(
                    innerWidget: (double value) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ovulation Starts in',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '1 Day',
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff8C80F8),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Divider(
                              color: Color(0xff8C80F8),
                            ),
                          ),
                          Text(
                            'Chance of pregnancy:',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Medium',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff8C80F8),
                            ),
                          ),
                        ],
                      );
                    },
                    appearance: CircularSliderAppearance(
                        customColors: CustomSliderColors(
                            progressBarColor: Color(0xff8C80F8),
                            trackColor: Color(0xffD8D8D8)),
                        size: 250,
                        customWidths: CustomSliderWidths(
                            progressBarWidth: 15, trackWidth: 15)),
                    min: 10,
                    max: 28,
                    initialValue: 25,
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'YOU MAY BE FERTILE\n',
                        style: TextStyle(
                          color: Color(0xff2D3142),
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'TODAY',
                            style: TextStyle(
                              color: Color(0xff76265E3),
                              fontSize: 16,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => MyHomePage(
                                  title: '',
                                ))),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff8C80F8).withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 80,
                      width: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Calendar.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Period Calendar",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
