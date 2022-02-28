import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/period_tracker_screens/periodic_tracker_main_screen.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

import 'onboading_profile_screens/On_Boarding_screen.dart';

void main() {
  runApp(ChangeNotifierProvider<providermodel>(
      create: (_) => providermodel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Momly',
      theme: ThemeData(
        fontFamily: 'Rubik',

        primaryColor:
        Colors.black,
      ),

      home: main_screen(),
    );
  }
}

