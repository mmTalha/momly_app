import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/colortheme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:momly_app/onboading_profile_screens/weight.dart';
import 'package:momly_app/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class choose_profile_photo extends StatefulWidget {
  const choose_profile_photo({Key? key, this.buttons}) : super(key: key);
  final buttons;

  @override
  _choose_profile_photoState createState() => _choose_profile_photoState();
}

class _choose_profile_photoState extends State<choose_profile_photo> {
  @override
  Widget build(BuildContext context) {
    final iconsss = Provider.of<providermodel>(context);
    int _index = 0;
    int _focusedIndex = 0;
    List product = [
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      },
      {
        "picture": "images/Emoji.png",
        "color": Colors.white,
      }
    ];

    final List images = [
      'images/Emoji4.png',
      'images/Emoji.png',
      'images/Emoji4.png',
      'images/Emoji.png',
      'images/ghost.png',
      'images/Emoji4.png',
      'images/Emoji.png',
      'images/Emoji4.png',
      'images/Emoji.png',
    ];
    List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    int selectedIndex = 0;

    _onSelected(int index) {
      setState(() => selectedIndex = index);
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
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Icon(Icons.arrow_drop_down,
                    size: 35, color: Color.fromRGBO(114, 101, 227, 1)),
                Container(
                  height: 98,
                  child: ScrollSnapList(
                    updateOnScroll: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        // onTap: () {
                        //   _onSelected(index);
                        //   print('update');
                        // },
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: selectedIndex != null && _index == index
                                ? Color.fromRGBO(143, 172, 255, 1)
                                : Colors.white,
                          ),
                          child: InkWell(
                              // onTap: () {
                              //   _onSelected(index);
                              //   print('update');
                              // },
                              child: Image.asset(images[index])),
                        ),
                      );
                    },
                    itemSize: 100,
                    dynamicItemSize: true,
                    onReachEnd: () {
                      print('Done!');
                    },
                    itemCount: images.length,
                    onItemFocus: (int) {
                      // _focusedIndex = _index;
                      _index = int;
                      print(_index);
                    },
                  ),
                ),
                Icon(Icons.arrow_drop_up_outlined,
                    size: 35, color: Color.fromRGBO(114, 101, 227, 1)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Choose an emoji or select a photo\nfrom your gallery.',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    color: Color.fromRGBO(76, 89, 128, 1),
                    fontSize: 14,
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
