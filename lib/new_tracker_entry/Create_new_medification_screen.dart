import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/new_tracker_entry/widgets/medification_widget_screen.dart';

class Create_new_medification_entry extends StatelessWidget {
  const Create_new_medification_entry({Key? key}) : super(key: key);

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
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () => Navigator.pop(context),
            color: Color(0xff4C5980),            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20),
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
                        text: 'Create a new\n',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Medication ',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(114, 101, 227, 1))),
                          TextSpan(
                            text: 'of water\n',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Richard',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
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
                      padding: EdgeInsets.only(
                          left: 20, right: 30, top: 30, bottom: 20),
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(244, 246, 250, 1),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  width: 285,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Text(
                                          'Medication:',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        child: Text(
                                          'Paracetamol',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                114, 101, 227, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        child: Icon(
                                          Icons.expand_more_outlined,size: 30,color: Color(0xffE3E3E3),
                                        ),


                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  width: 285,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Text(
                                          'Dose:',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        child: Text(
                                          '250mg',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                114, 101, 227, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  width: 285,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Text(
                                          'Time:',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromRGBO(76, 89, 128, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        child: Text(
                                          '14:18',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(
                                                114, 101, 227, 1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width: 285,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: TextField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        hintText: '  Add notes or comments..',
                                        hintStyle:
                                            TextStyle(color: Color(0xff9C9EB9),fontSize: 14.0),
                                        prefixStyle:
                                            TextStyle(color: Colors.grey),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  242, 242, 242, 1),
                                            )),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Add Media',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(76, 89, 128, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Image.asset('images/cock.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(height:58,width: 65,decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/duck2.png',),fit: BoxFit.fill),
                                    ), ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(height:58,width: 65,decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/empty.png',),fit: BoxFit.fill),
                                    ), ),                                  ],
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: buttons()
                                .largebuttons('Add Medication Entry', () {
                              medification_widget_screen()
                                  .choose_medification(context);
                            }),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
