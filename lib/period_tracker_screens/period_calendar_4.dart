import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import 'package:momly_app/period_tracker_screens/period_calendar2_screen.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'widgets/Widgets.dart';


class period_calendar_screen_4 extends StatefulWidget {
  const period_calendar_screen_4({Key? key}) : super(key: key);

  @override
  _period_calendar_screen_4State createState() => _period_calendar_screen_4State();
}

class _period_calendar_screen_4State extends State<period_calendar_screen_4> {
  final DateRangePickerController _controller = DateRangePickerController();
  String headerString = '';


  DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2022, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);

//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.black,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2019, 2, 25),
        new Event(
          date: new DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2019, 2, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double cellWidth = width / 9;
    /// Example with custom icon

    /// Example Calendar Carousel without header and custom prev & next button
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.black,
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.black,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 420.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      CircleBorder(side: BorderSide(color: Colors.black)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.black,
      ),

      todayButtonColor: Colors.black,
      selectedDayTextStyle: TextStyle(
        color: Colors.black,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          'PERIOD CALENDAR',
          style: TextStyle(fontSize: 12),
        ),
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
        trailing: Image.asset(
          'images/Bar Chart Up With Border.png',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.95,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: new Container(
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
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // Container(
                                    //   height: cellWidth,
                                    //   width: cellWidth + 10,
                                    // ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(25)),
                                        width: 30,
                                        height: 30,
                                        //color: Colors.transparent,
                                        child: Center(
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.chevron_left,size: 16,
                                              //color: Colors.black,
                                            ),
                                            color: Colors.white,
                                            //iconSize: 20,
                                            highlightColor: Colors.lightGreen,
                                            onPressed: () {
                                              setState(() {
                                                _controller.backward!();
                                              });
                                            },
                                          ),
                                        )),
                                    Center(
                                      child: Container(
                                        color: Colors.transparent,
                                        //height: cellWidth,
                                        width: cellWidth * 4,
                                        child: Text(headerString,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16, color: Colors.black,)),
                                      ),
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(25)),
                                        width: 30,
                                        height: 30,
                                        //color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.navigate_next,size: 16,
                                              //color: Colors.black,
                                            ),
                                            color: Colors.white,
                                            highlightColor: Colors.lightGreen,
                                            onPressed: () {
                                              setState(() {
                                                _controller.forward!();
                                              });
                                            },
                                          ),
                                        )),
                                    // Container(
                                    //   height: cellWidth,
                                    //   width: cellWidth,
                                    // )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                                child: Container(
                                  height: 295.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      elevation: 0.0,
                                      //margin: const EdgeInsets.fromLTRB(50, 0, 50, 50),
                                      child: SfDateRangePicker(
                                          todayHighlightColor: Colors.black,
                                          controller: _controller,
                                          selectionMode: DateRangePickerSelectionMode.multiple,
                                          view: DateRangePickerView.month,
                                          headerHeight: 0,
                                          onViewChanged: viewChanged,
                                          monthViewSettings: DateRangePickerMonthViewSettings(
                                              showTrailingAndLeadingDates: true,
                                              dayFormat: 'EEE',
                                              viewHeaderStyle: DateRangePickerViewHeaderStyle(
                                                  backgroundColor: Colors.white,textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))),
                                          monthCellStyle: DateRangePickerMonthCellStyle(

                                            todayTextStyle: TextStyle(color: Colors.black),
                                            cellDecoration: BoxDecoration(color: Colors.white),
                                            leadingDatesDecoration:
                                            BoxDecoration(color: Colors.white),
                                            // trailingDatesDecoration:
                                            // BoxDecoration(color: Colors.white)
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),

                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              period_Screen_widgets()
                                  .period_name(Color(0xffF91A6C), 'Pre-Period'),
                              SizedBox(
                                width: 10,
                              ),
                              period_Screen_widgets().period_name(
                                  Color(0xff4C5980), 'Period Days'),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              period_Screen_widgets().period_name(
                                  Color(0xffEE17F6), 'Post-Period'),
                              SizedBox(
                                width: 10,
                              ),
                              period_Screen_widgets().period_name(
                                  Color(0xff06AEEF), 'Peak-Ovulation'),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                            color: Color(0xff8C80F8),
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('images/congrats.png',color: Colors.white,height: 55,),
                            Text(
                              'Congratulations!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Your period has ended.    ',
      
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),Text(
                              'You can now see the fertile and ovulation\n days above.',
      
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
      
      
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
  void viewChanged(DateRangePickerViewChangedArgs args) {
    final DateTime visibleStartDate = args.visibleDateRange.startDate!;
    final DateTime visibleEndDate = args.visibleDateRange.endDate!;
    final int totalVisibleDays =
    (visibleStartDate.difference(visibleEndDate).inDays);
    final DateTime midDate =
    visibleStartDate.add(Duration(days: totalVisibleDays ~/ 2));
    headerString = DateFormat('MMMM yyyy').format(midDate).toString();
    SchedulerBinding.instance!.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}
