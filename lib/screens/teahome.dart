import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/teaanalysis.dart';
import 'package:rankers_institute/screens/teadbt.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;

class TeaHome extends StatefulWidget {
  TeaHome({
    Key key,
  }) : super(key: key);

  @override
  _TeaHomeState createState() => _TeaHomeState();
}

class _TeaHomeState extends State<TeaHome> {
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
                  top: g.height * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              isload = true;
                            });
                            final Map testdata = {};
                            List allT =
                                await DatabaseServices(uid: g.uid).getcls();
                            for (int i = 0; i < allT.length; i++) {
                              var v = await DatabaseServices(uid: g.uid)
                                  .getTestt('classID', allT[i]);
                              if (v.isNotEmpty) {
                                testdata[allT[i]] = v;
                              }
                            }
                            isload = false;
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      TeaAnalysis(
                                        testd: testdata,
                                      )),
                            );
                          },
                          child: hpImage('1')),
                      hpImage('2')
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hpImage('3'),
                      GestureDetector(
                        onTap: () async {
                          List allDbt;
                          allDbt =
                              await DatabaseServices(uid: g.uid).getDoubtTe();
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        TeaDoubt(
                                          doubts: allDbt,
                                        )),
                          );
                        },
                        child: hpImage('4'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [hpImage('5'), hpImage('Online Lecture')],
                  ),
                ],
              ),
            ),
          );
  }
}
