import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:momly_app/Pregnancy/screen5.dart';

class screen4 extends StatefulWidget {
  const screen4({ Key? key }) : super(key: key);

  @override
  _screen4State createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
  crossAxisCount: 4,
  
  
  children:[
    InkWell(
      onTap: (){Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              screen5()),

                    );},
      child: Container(decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                    'assets/duck.png'),
              fit: BoxFit.fill,
            ),
        
        ),
      ),
    ),
     Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
     Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
                Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
                Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
                Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
                Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),
                Container(decoration: BoxDecoration(
         color: Color(0xffF4F6FA),
                border: Border.all(
                  color: Color(0xffE1DDF5),
                  width: 1,
                )),),

  ],
)
      ),
    );
  }
}