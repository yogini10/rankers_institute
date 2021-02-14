import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';

class AddUpdateSchedule extends StatefulWidget {
  final List list;

  AddUpdateSchedule({Key key, this.list}) : super(key: key);

  @override
  _AddUpdateScheduleState createState() => _AddUpdateScheduleState();
}

class _AddUpdateScheduleState extends State<AddUpdateSchedule> {
  bool isload = false;

  List<Widget> lcmat(List maps) {
    return List<Column>.generate(maps.length, (index) {
      return Column(
        children: [
          ListTile(
            onTap: () async {
              setState(() {
                isload = true;
              });
              List allS, allSCh;
              allSCh = await DatabaseServices(uid: g.uid)
                  .allSch(maps[index]['class']);
              allS = await DatabaseServices(uid: g.uid)
                  .allSubs(maps[index]['class']);
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AddorUpdateSch(
                    sched: allSCh,
                    subs: allS,
                  ),
                ),
              );
            },
            title: Container(
              color: Color(0xffffffff).withOpacity(0.75),
              height: g.height * 0.07,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: g.width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        maps[index]['class'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: g.height * 0.02,
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingScreen()
        : Stack(children: [
            bgclass(),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: g.height * 0.07,
                  ),
                  child: ListView(
                    children: lcmat(widget.list),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 0),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            AdmHome()),
                  );
                },
              ),
            ),
          ]);
  }
}

class AddorUpdateSch extends StatefulWidget {
  final List subs;
  final List sched;

  AddorUpdateSch({Key key, this.subs, this.sched}) : super(key: key);

  @override
  _AddorUpdateSchState createState() => _AddorUpdateSchState();
}

class _AddorUpdateSchState extends State<AddorUpdateSch> {
  String dropdownValue;
  String dropdownValue2;
  String dropdownValue3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AdmHome()),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffcaf0f8),
      body: Center(
        child: Container(
          width: g.width * 0.9,
          height: g.height * 0.6,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(g.width * 0.2),
            color: Color(0xffffffff).withOpacity(0.55),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: g.height * 0.01,
              left: g.width * 0.075,
              right: g.width * 0.075,
            ),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    widget.subs[0]['class'] + ' Class',
                    style: g.loginpgstyles(
                      Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: g.height * 0.02,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  elevation: 16,
                  style: g.loginpgstyles(
                    Color(0xff000000),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  hint: Text('Day'),
                  items: <String>[
                    'Monday',
                    'Tuesday',
                    'Wednesday',
                    'Thursday',
                    'Friday',
                    'Saturday',
                    'Sunday'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: g.height * 0.007,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue2,
                  elevation: 16,
                  hint: Text('Timeslot'),
                  style: g.loginpgstyles(
                    Color(0xff000000),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>[
                    '9 A.M to 10 A.M',
                    '10 A.M to 11 A.M',
                    '11 A.M to 12 P.M',
                    '12 P.M to 1 P.M',
                    '1 P.M to 2 P.M',
                    '2 P.M to 3 P.M',
                    '3 P.M to 4 P.M',
                    '4 P.M to 5 P.M',
                    '5 P.M to 6 P.M'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: g.height * 0.007,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue3,
                  elevation: 16,
                  hint: Text('Subject'),
                  style: g.loginpgstyles(
                    Color(0xff000000),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue3 = newValue;
                    });
                  },
                  items: widget.subs.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value['subject'],
                      child: Text(
                        value['subject'],
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: g.height * 0.025,
                ),
                Center(
                  child: RawMaterialButton(
                    onPressed: null,
                    child: Container(
                      width: g.width * 0.5,
                      height: g.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff90e0ef),
                      ),
                      child: Center(child: Text('Add/Update Schedule')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
