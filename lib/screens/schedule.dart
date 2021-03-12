import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/schedtile.dart';

class ScheduleStu extends StatefulWidget {
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
                    SchedTile(),
                    SchedTile(),
                    SchedTile(),
                    SchedTile(),
                    SchedTile(),
                    SchedTile(),
                    SchedTile(),
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
