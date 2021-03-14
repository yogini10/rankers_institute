import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/teadbt.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;

class TeaHome extends StatelessWidget {
  TeaHome({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isload = false;
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
                    children: [hpImage('1'), hpImage('2')],
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
