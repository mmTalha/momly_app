import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:momly_app/onboading_profile_screens/choose_profile_photo.dart';
import 'package:momly_app/onboading_profile_screens/choose_your_gender.dart';
import 'package:momly_app/onboading_profile_screens/congrats_screen.dart';
import 'package:momly_app/onboading_profile_screens/enter_your_date_of_birth_screen.dart';
import 'package:momly_app/onboading_profile_screens/enter_your_name_screen.dart';
import 'package:momly_app/onboading_profile_screens/height.dart';
import 'package:momly_app/onboading_profile_screens/weight.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';

import 'Notifications_screen.dart';

class name_screen extends StatelessWidget {
  const name_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LinearProgressPageIndicatorDemo(),
    );
  }
}

class LinearProgressPageIndicatorDemo extends StatefulWidget {
  @override
  _LinearProgressPageIndicatorDemoState createState() {
    return _LinearProgressPageIndicatorDemoState();
  }
}

class _LinearProgressPageIndicatorDemoState
    extends State<LinearProgressPageIndicatorDemo> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      appBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Colors.black,
        ),
        automaticallyImplyMiddle: true,
        trailing: Text(
          value ? 'Skip' : '',
          style: TextStyle(
            color: Color.fromRGBO(114, 101, 227, 1),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: true,
        middle: _buildLinearProgressIndicator(),
        border: Border.all(
            color: Colors.transparent, width: 0.0, style: BorderStyle.none),
        backgroundColor: theme().backgroundcolour,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                'STEP ${_currentPageNotifier.value}/6',
                style: TextStyle(
                  color: Color.fromRGBO(114, 101, 227, 1),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        _buildPageView(),
      ],
    );
  }

  _buildPageView() {
    return Expanded(
      child: PageView(
          controller: _pageController,
          children: [
            Enter_Your_name_screen(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            date_of_birth_screen(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            choose_your_gender(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            choose_profile_photo(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            height_screen(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            weight(
              buttons: buttons().largebuttons('Continue', () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 50),
                  curve: Curves.easeIn,
                );
              }),
            ),
            Notifications_screens(
                buttons: buttons().largebuttons('Allow', () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => congrats_screen()));
            }))
          ],
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
            setState(() {
              if (index > 1) {
                value = true;
              } else {
                value = false;
              }
            });
          }),
    );
  }

  _buildLinearProgressIndicator() {
    return Center(
      child: Container(
        width: 120,
        height: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressPageIndicator(
            itemCount: 7,
            currentPageNotifier: _currentPageNotifier,
            progressColor: Color.fromRGBO(114, 101, 227, 1),
            width: 100,
            height: 10,
          ),
        ),
      ),
    );
  }
}
