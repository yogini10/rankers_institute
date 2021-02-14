import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class AdmSchedule extends StatelessWidget {
  AdmSchedule({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Center(
        child: Container(
          height: g.height * 0.2,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: g.height * 0.06,
                  width: g.width * 0.7,
                  color: const Color(0xffffffff),
                  child: Center(
                    child: Text('Add Schedule'),
                  ),
                ),
              ),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: g.height * 0.06,
                  width: g.width * 0.7,
                  color: const Color(0xffffffff),
                  child: Center(
                    child: Text('Update Schedule'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddUpdateSchedule extends StatefulWidget {
  @override
  _AddUpdateScheduleState createState() => _AddUpdateScheduleState();
}

class _AddUpdateScheduleState extends State<AddUpdateSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
