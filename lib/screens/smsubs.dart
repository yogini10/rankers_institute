import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/stuhome.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/globals.dart' as g;

class SMSub extends StatefulWidget {
  final List list;
  SMSub({Key key, this.list}) : super(key: key);
  @override
  _SMSubState createState() => _SMSubState();
}

class _SMSubState extends State<SMSub> {
  bool isload = false;
  List<Widget> lcmat(List maps) {
    return List<Column>.generate(maps.length, (index) {
      return Column(
        children: [
          ListTile(
            // onTap: () async {
            //   setState(() {
            //     isload = true;
            //   });
            //   List allS;
            //   allS = await DatabaseServices(uid: g.uid).allSubs('5th');
            //   Navigator.pushReplacement(
            //     context,
            //     PageRouteBuilder(
            //       pageBuilder: (context, animation, secondaryAnimation) =>
            //           SMSub(
            //         list: allS,
            //       ),
            //     ),
            //   );
            // },
            title: Container(
              color: Color(0xffffffff).withOpacity(0.75),
              height: g.height * 0.07,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: g.width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        maps[index]['subject'],
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
    return Stack(children: [
      //bgsubs(),
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
                      StuHome()),
            );
          },
        ),
      ),
    ]);
  }
}