import 'package:flutter/material.dart';
import 'package:momly_app/onboading_profile_screens/On_Boarding_screen.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<providermodel>(
      create: (_) => providermodel(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Momly',
        theme: ThemeData(
          fontFamily: 'Rubik',
          primaryColor: Colors.black,
        ),
        home: on_boarding_screen());
  }
}
