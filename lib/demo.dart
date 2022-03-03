import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class graphh extends StatefulWidget {
  graphh({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<graphh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF4F6FA)),
                      ),
                    ),
                    Positioned(
                      //  top: 20,
                      left: 10,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/gi.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Richard  (1 mo) ",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff2D3142)),
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 160,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFF0F4),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.help_outline_outlined,
                                            size: 12,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/bag.png'),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "8.7kg",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff2D3142),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 160,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFF0F4),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.help_outline_outlined,
                                            size: 12,
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            "112cm",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff2D3142),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 430,
                  decoration: BoxDecoration(
                      color: Color(0xffE4DFFF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 13),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/girl.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Richard @ Today",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff2D3142),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: Color(0xff7265E3),
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, right: 50, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            graph_icon().icons('assets/moon.png'),
                            graph_icon().icons('assets/feeder.png'),
                            graph_icon().icons('assets/water.png'),
                            graph_icon().icons('assets/shit.png'),
                            graph_icon().icons('assets/born.png'),
                          ],
                        ),
                      ),
                      graph().graphh("00:00", 15.0),
                      graph().graphh("06:00", 15.0),
                      graph().graphh("12:00", 15.0),
                      graph().graphh("18:00", 15.0),
                      graph().graphh("21:00", null),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          width: double.infinity,
                          height: 85,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            color: Color(0xff7265E3),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            "OCT\n13",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: 'Weight\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                          children: [
                                            TextSpan(
                                              text: '12m ago',
                                              style: TextStyle(
                                                color: Color(0xff4C5980),
                                                fontSize: 14,
                                              ),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                                Text(
                                  "18,7 kg",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff7265E3),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF4F6FA),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                height: 1000,
                width: double.infinity,
                child: Column(
                  children: [
                    DefaultTabController(
                        length: 2,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TabBar(
                              indicator: BoxDecoration(
                                  color: Color(0xff8C81F8),
                                  borderRadius: BorderRadius.circular(10)),
                              tabs: [
                                Text("d"),
                                Text("d"),
                              ]),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class graph {
  Widget graphh(txt, sze) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              txt,
              style: TextStyle(
                fontSize: 9,
                color: Color(0xff707070),
              ),
            ),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Divider(
                    color: Color(0xff707070),
                    height: 36,
                  )),
            ),
          ],
        ),
        SizedBox(
          height: sze,
        ),
      ],
    );
  }
}

class graph_icon {
  Widget icons(namee) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(namee),
        ),
      ),
    );
  }
}
