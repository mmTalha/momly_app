import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class main_screen extends StatelessWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SleekCircularSlider(

            innerWidget: (double value) {
              //This the widget that will show current value
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('hello'),
                  Text('hello'),
                  Text('hello'),
                ],
              );
            },
            appearance: CircularSliderAppearance(

                customWidths: CustomSliderWidths(progressBarWidth: 15)),
            min: 10,
            max: 28,
            initialValue: 25,
          )
        ],
      ),
    );
  }
}
