import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/adduser.dart';
import 'package:rankers_institute/screens/addstudy.dart';
import 'package:rankers_institute/screens/admschedule.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;

class AdmHome extends StatefulWidget {
  AdmHome({
    Key key,
  }) : super(key: key);

  @override
  _AdmHomeState createState() => _AdmHomeState();
}

class _AdmHomeState extends State<AdmHome> {
  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingScreen()
        : Scaffold(
            backgroundColor: const Color(0xffcaf0f8),
            body: Padding(
              padding: EdgeInsets.only(
                  left: g.width * 0.03,
                  right: g.width * 0.03,
                  top: g.height * 0.070),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hpImage('1'),
                      GestureDetector(
                        child: hpImage('2'),
                        onTap: () async {
                          setState(() {
                            isload = true;
                          });
                          List allC;
                          allC =
                              await DatabaseServices(uid: g.uid).allClasses();
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        AddUpdateSchedule(
                                          list: allC,
                                        )),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: hpImage('9'),
                        onTap: () async {
                          setState(() {
                            isload = true;
                          });
                          List allC;
                          allC =
                              await DatabaseServices(uid: g.uid).allClasses();
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      AdmSmCls(list: allC),
                            ),
                          );
                        },
                      ),
                      hpImage('7')
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: hpImage('8'),
                        onTap: () async {
                          setState(() {
                            isload = true;
                          });
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      AddUser(),
                            ),
                          );
                        },
                      ),
                      hpImage('10'),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
