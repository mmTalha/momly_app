import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen11 extends StatefulWidget {
  const screen11({Key? key}) : super(key: key);

  @override
  _screen11State createState() => _screen11State();
}

class _screen11State extends State<screen11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 30,
        ),
        leading: Icon(Icons.arrow_back_ios_outlined,
            size: 21, color: Color(0xff4C5980)),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'images/Avatar.png',
                    fit: BoxFit.cover,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Tommy Parker',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                  Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffE1DDF5)),
                    child: Center(
                      child: Text('Sponsored',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff7265E3),
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
              subtitle: Text('Congrats you just hit your goal!',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(76, 89, 128, 1),
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }
}
