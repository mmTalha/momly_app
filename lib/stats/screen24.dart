import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class screen24 extends StatefulWidget {
  const screen24({Key? key}) : super(key: key);

  @override
  _screen24State createState() => _screen24State();
}

class _screen24State extends State<screen24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8C80F8),
      appBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(
          top: 20,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Icon(Icons.arrow_back_ios_outlined,
              size: 21, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Color(0xff8C80F8),
        middle: Text(
          "STATS",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 115,
                color: Color(0xff8C80F8),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 50, top: 30),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AVERAGE",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffE4DFFF)),
                            ),
                            Text(
                              "120/110",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Brain.png"))),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffE4DFFF)),
                            ),
                            Text(
                              "161/110",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF4F6FA),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Blood Pressure",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xff2D3142),
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffE4DFFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weekly",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff7265E3),
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down_outlined,
                                      color: Color(0xff7265E3)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 200,
                        child: Directionality(
                          textDirection: TextDirection.rtl,

                          child: SfCartesianChart(

                              primaryYAxis: NumericAxis(
                                  isInversed: true
                              ),
                              primaryXAxis: CategoryAxis(


                              ),
                              series: <LineSeries<SalesData, String>>[
                                LineSeries<SalesData, String>(
                                  color: Color(0xffAF8EFF),

                                    width: 5,

                                    dataSource: <SalesData>[

                                      SalesData('20', 20),
                                      SalesData('21', 28),
                                      SalesData('22', 34),
                                      SalesData('23', 32),
                                      SalesData('24/03', 40)
                                    ],
                                    xValueMapper: (SalesData sales, _) =>
                                        sales.year,
                                    yValueMapper: (SalesData sales, _) =>
                                        sales.sales)
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "History",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff2D3142)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff2D3142)),
                          ),
                          Text(
                            "120/70",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2D3142),
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Wednesday, 23",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff2D3142)),
                          ),
                          Text(
                            "120/70",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2D3142),
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Divider(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tuesday, 22",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff2D3142)),
                          ),
                          Text(
                            "120/70",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2D3142),
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
