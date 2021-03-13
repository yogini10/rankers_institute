import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/schedtile.dart';

class ScheduleStu extends StatefulWidget {
  final List sch;
  const ScheduleStu({Key key, this.sch}) : super(key: key);
  @override
  _ScheduleStuState createState() => _ScheduleStuState();
}

class _ScheduleStuState extends State<ScheduleStu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Center(
        child: Container(
          height: g.height * 0.82,
          width: g.width * 0.9,
          color: Colors.white.withOpacity(0.8),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: 'Day/Time',
                    ),
                    SchedTile(
                      text: 'Monday',
                    ),
                    SchedTile(
                      text: 'Tuesday',
                    ),
                    SchedTile(
                      text: 'Wednesday',
                    ),
                    SchedTile(
                      text: 'Thursday',
                    ),
                    SchedTile(
                      text: 'Friday',
                    ),
                    SchedTile(
                      text: 'Saturday',
                    ),
                    SchedTile(
                      text: 'Sunday',
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '9AM to 10AM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['9AM to 10AM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['9AM to 10AM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '10AM to 11AM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['10AM to 11AM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['10AM to 11AM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '11AM to 12PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['11AM to 12PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['11AM to 12PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '12PM to 1PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['12PM to 1PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['12PM to 1PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '1PM to 2PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['1PM to 2PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['1PM to 2PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '2PM to 3PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['2PM to 3PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['2PM to 3PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '3PM to 4PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['3PM to 4PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['3PM to 4PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '4PM to 5PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['4PM to 5PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['4PM to 5PM'],
                    )
                  ],
                ),
              ),
              Container(
                height: g.height * 0.82,
                width: g.width * 0.32,
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    SchedTile(
                      text: '5PM to 6PM',
                    ),
                    SchedTile(
                      text: widget.sch[1]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[5]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[6]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[4]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[0]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[2]['5PM to 6PM'],
                    ),
                    SchedTile(
                      text: widget.sch[3]['5PM to 6PM'],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
