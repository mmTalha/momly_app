import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class profile_tab extends StatefulWidget {
  const profile_tab({Key? key}) : super(key: key);

  @override
  State<profile_tab> createState() => _profile_tabState();
}

class _profile_tabState extends State<profile_tab> {
  TabController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xffE4DFFF)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/girl.png"))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Richard @ Today",
                                    style: TextStyle(
                                        color: Color(0xff2D3142),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 50.0, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/moon.png',
                                  height: 24,
                                ),
                                Image.asset(
                                  'assets/feeder.png',
                                  height: 24,
                                ),
                                Image.asset(
                                  'assets/water.png',
                                  height: 24,
                                ),
                                Image.asset(
                                  'assets/shit.png',
                                  height: 24,
                                ),
                                Image.asset(
                                  'assets/born.png',
                                  height: 24,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "00:00",
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Divider(height: 5, color: Colors.grey),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            children: [
                              Text(
                                "06:00",
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Divider(height: 5, color: Colors.grey),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            children: [
                              Text(
                                "12:00",
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Divider(height: 5, color: Colors.grey),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            children: [
                              Text(
                                "18:00",
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Divider(height: 5, color: Colors.grey),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            children: [
                              Text(
                                "21:00",
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 9),
                              ),
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Divider(height: 5, color: Colors.grey),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                              height: 100,
                              width: double.infinity,
                              color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 100,
                    child: Container(
                      height: 50,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 170,
                    child: Container(
                      height: 30,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.345,
                    top: 115,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.345,
                    top: 135,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.345,
                    top: 160,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.345,
                    top: 200,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 99,
                    child: Container(
                      height: 8,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 130,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 145,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 160,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 175,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.489,
                    top: 190,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.657,
                    top: 115,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.657,
                    top: 140,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.83,
                    top: 115,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.83,
                    top: 155,
                    child: Container(
                      height: 5,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Color(0xff8C80F8),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 300,
                color: Color(0xffF4F6FA),
                child: Column(
                  children: [
                    Column(children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(226, 232, 240, 40),
                              borderRadius: BorderRadius.circular(10)),
                          child: TabBar(
                            indicator: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              Tab(
                                child: Center(child: Text('History')),
                              ),
                              Tab(
                                  icon: Text('Processing'
                                      '')),
                            ],
                          )),
                      Flexible(
                          // this will host our Tab Views
                          child: TabBarView(
                        // and it is controlled by the controller
                        controller: _controller,
                        children: <Widget>[
                          // our Tab Views
                          Container(
                            color: Colors.amber,
                          ),
                          Container(
                            color: Colors.red,
                          )
                        ],
                      ))
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
