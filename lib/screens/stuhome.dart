import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/screens/smclasses.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/loading.dart';
import 'package:url_launcher/url_launcher.dart';

class StuHome extends StatefulWidget {
  @override
  _StuHomeState createState() => _StuHomeState();
}

class _StuHomeState extends State<StuHome> {
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
                    children: [hpImage('1'), hpImage('2')],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: hpImage('3'),
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
                                        SMClasses(
                                          list: allC,
                                        )),
                          );
                        },
                      ),
                      hpImage('4')
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          List link;
                          link = await DatabaseServices(uid: g.uid)
                              .getLink(g.stuGlob.classId);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (context, setState) {
                                return AlertDialog(
                                  title: Text('Current Lecture'),
                                  content: SingleChildScrollView(
                                    child: RawMaterialButton(
                                      onPressed: () {
                                        launch(link[0]['link']);
                                      },
                                      child: Text(
                                        link[0]['link'],
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text('Ok'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              });
                            },
                          );
                        },
                        child: hpImage('5'),
                      ),
                      hpImage('Online Lecture')
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
