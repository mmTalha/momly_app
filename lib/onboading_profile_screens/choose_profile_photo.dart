import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:momly_app/onboading_profile_screens/weight.dart';

class choose_profile_photo extends StatefulWidget {
  const choose_profile_photo({Key? key, this.buttons}) : super(key: key);
  final buttons;

  @override
  _choose_profile_photoState createState() => _choose_profile_photoState();
}

class _choose_profile_photoState extends State<choose_profile_photo> {
  @override
  Widget build(BuildContext context) {
    List colors = [Colors.white, Colors.white, Colors.white, Colors.white];
    final List images = [
      'images/Emoji.png',
      'images/Emoji4.png',
      'images/Emoji 02.png',
      'images/Emoji.png',
      'images/Emoji4.png',
      'images/Emoji 02.png',
      'images/Emoji.png',
      'images/Emoji4.png',
      'images/Emoji 02.png',
    ];
    final List<String> color = ['Colors.white'];

    int _selectedIndex = 0;

    _onSelected(int index) {
      setState(() => _selectedIndex = index++);
    }

    return Scaffold(
      backgroundColor: theme().backgroundcolour,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Profile Photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ListView.builder(
                  physics: const PageScrollPhysics(), // t

                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    height: 10,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () => _onSelected(index++),
                        child: Image.asset(images[index])),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Choose an emoji or select a photo\nfrom your gallery.',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Add Custom Photo',
                style: TextStyle(
                    color: Color.fromRGBO(114, 101, 227, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            widget.buttons,
          ],
        ),
      ),
    );
  }
}
