import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';



class add_water extends StatelessWidget {
  const add_water({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Material(
          child: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Notification.png'),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  text: 'Today you took\n',

                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: '750 ml ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(114, 101, 227, 1))),
                    TextSpan(
                      text: 'of water',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
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
                  padding:
                  EdgeInsets.only(left: 20, right: 30, top: 15, bottom: 20),
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

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(

                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(114, 101, 227, 1),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                width: 35,
                                height: 35,
                                 child: Center(
                                   child: Icon(Icons.remove,color: Colors.white,),
                                 ),
                              ),
                              SizedBox(width: 30,),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                width: 80,
                                height: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('images/glass.png',fit: BoxFit.fitHeight,height: 20,),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(114, 101, 227, 1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                width: 35,
                                height: 35,
                                child: Center(
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Center(
                            child: RichText(
                              text: TextSpan(

                                children: const <TextSpan>[
                                  TextSpan(
                                      text: '1x ',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(114, 101, 227, 1))),
                                  TextSpan(
                                    text: 'Glass 200 ml',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
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
                                    hintText: 'Add notes or comments..',
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                          Color.fromRGBO(242, 242, 242, 1),
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color:
                                          Color.fromRGBO(242, 242, 242, 1),
                                        )),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                        BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Media',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(76, 89, 128, 1),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset('images/cock.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('images/cock.png'),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: buttons().largebuttons('Add Drink', () {}),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
