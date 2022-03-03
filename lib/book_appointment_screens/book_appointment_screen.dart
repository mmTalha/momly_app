import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/book_appointment_screens/widgets/Widgets.dart';

import 'book_appointment_screen2.dart';

class Book_Appointment_screen extends StatelessWidget {
  const Book_Appointment_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset(
                    'images/doctorimg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 33,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                bottom: 0,
                child: Container(
                    height: MediaQuery.of(context).size.height + 10,
                    width: MediaQuery.of(context).size.width,
                    // padding: EdgeInsets.only(
                    //     left: 30, right: 30, top: 30, bottom: 20),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(35.0),
                          topRight: const Radius.circular(35.0),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 30, right: 30, top: 30, bottom: 20),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Momly Consultıng servıces',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Book Appointment',
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        widgets_appointmentscreen()
                                            .choosedaterange(context);
                                      },
                                      child: Container(
                                        child: Image.asset(
                                            'images/Bar Chart Up With Border.png'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Book a telemedicine or clinic appointment from our specialists. ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(45, 49, 66, 1),
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().speciality(
                                  null,
                                  'Choose a speciality',
                                  'Speciality',
                                  Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().speciality(
                                  null,
                                  'Choose appointment type',
                                  'Appointment Type',
                                  Image.asset('images/Hospital Building.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().speciality(
                                  null,
                                  'Choose a date',
                                  'Date / Time',
                                  Image.asset('images/Calendar.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                widgets_appointmentscreen().speciality(
                                  null,
                                  'Choose a date',
                                  'Appointment Time',
                                  Image.asset('images/Time Clock.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset('images/Pencil.png'),
                                    Text(
                                      'Write your questions',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Container(
                                    width: 285,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(244, 246, 250, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: TextField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                          hintText:
                                              'Write your questions and comments',
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    244, 246, 250, 1),
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color.fromRGBO(
                                                    244, 246, 250, 1),
                                              )),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.red))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Center(
                                        child: Image.asset(
                                            'images/Image (Single).png')),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Choose your video / photo',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Attach photos so your physician can review your condition better. ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      color: Color.fromRGBO(76, 89, 128, 1)
                                          .withOpacity(0.5),
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'images/emptyphotos.png',
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'images/emptyphotos.png',
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'images/emptyphotos.png',
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, bottom: 20),
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(244, 246, 250, 1),
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(35.0),
                                    topRight: const Radius.circular(35.0),
                                  )),
                              child: ListTile(
                                title: Text(
                                  'US\$29',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                subtitle: Text('pay with card'),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (BuildContext context) =>
                                                book_appointment_screen_2()));
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(114, 101, 227, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Text(
                                        'Purchase',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
