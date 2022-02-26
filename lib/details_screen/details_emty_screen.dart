import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/apptheme/buttons.dart';
import 'package:momly_app/apptheme/modal_sheet.dart';
import 'package:momly_app/dashboard_screens/dashboard_screen.dart';
import 'package:momly_app/details_screen/mood_%20details.dart';
import 'package:momly_app/new_tracker_entry/new_tracker_entry.dart';

class Empty_details_screens extends StatelessWidget {
  const Empty_details_screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      key:_scaffoldKey ,
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
          iconSize: 30,
        ),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset('images/Notification.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                   onTap: (){
                     modelsheet().filterevents(context);
                   },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Everything',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Color.fromRGBO(156, 158, 185, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Color.fromRGBO(156, 158, 185, 1),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    modelsheet().choosedaterange(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 246, 250, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    width: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'This Month',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                              color: Color.fromRGBO(156, 158, 185, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Color.fromRGBO(156, 158, 185, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                 height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: new Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  decoration: new BoxDecoration(
                      color: Color.fromRGBO(244, 246, 250, 1),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )),
                  child: Column(


                    children: [
                      Image.asset('images/Lock (Close).png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'No Items to Display',
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'You do not have a tracker entry matching with the given filters. ',

                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            color: Color.fromRGBO(76, 89, 128, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Tap the button below to create a new tracker entry.',

                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            color: Color.fromRGBO(76, 89, 128, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(

                        child: buttons().largebuttons('Create New Tracker Entry', () {

                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (BuildContext context) =>
                                    mood_details()),
                          );

                        }),
                      ),
                    ],
                  ),
                ),

            )

          ],
        ),
      ),
    );
  }
}
