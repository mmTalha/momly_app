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
    bool lodaing1 = false;

    final PageController _controller = PageController(viewportFraction: 0.3333);
    int _focusedIndex = 0;
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
    List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    void _onItemFocus(int index) {
      setState(() {
        _focusedIndex = index;
        if (_focusedIndex == index) {
          Colors.red;
        }
      });
    }

    Widget _buildItemDetail() {
      if (images.length > _focusedIndex)
        return Container(
          height: 150,
          child: Text("index $_focusedIndex: ${data[_focusedIndex]}"),
        );

      return Container(
        height: 150,
        child: Text("No Data"),
      );
    }

    Widget _buildItemList(BuildContext context, int index) {
      if (index == data.length)
        return Center(
          child: CircularProgressIndicator(),
        );
      print(data[index]);
      return Container(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: index == data[index] ? Colors.yellow : Colors.red,
              width: 150,
              height: 200,
              child: Center(
                child: Text(
                  '${data[index]}',
                  style: TextStyle(fontSize: 50.0, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      );
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
              height: 40,
            ),
            Container(
              height: 100,
              child: ScrollSnapList(
                updateOnScroll: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      iconsss.iconss();
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: iconsss.animation
                              ? Color.fromRGBO(114, 101, 227, 1)
                              : Colors.white),
                      child: InkWell(child: Image.asset(images[index])),
                    ),
                  );
                },
                itemSize: 100,
                dynamicItemSize: true,
                onReachEnd: () {
                  print('Done!');
                },
                itemCount: data.length,
                onItemFocus: (int) {
                  setState(() {
                    print(int);
                  });
                },
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
