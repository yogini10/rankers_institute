import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/adduser.dart';
import 'package:rankers_institute/screens/addstudy.dart';
import 'package:rankers_institute/screens/admanalysis.dart';
import 'package:rankers_institute/screens/admdbt.dart';
import 'package:rankers_institute/screens/admschedule.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/addlecture.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/loginfield.dart';

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
                  top: g.height * 0.030),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () async {
                            setState(() {
                              isload = true;
                            });
                            List allC;
                            allC =
                                await DatabaseServices(uid: g.uid).allClasses();
                            isload = false;
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      AdmAnalysis(
                                        cls: allC,
                                      )),
                            );
                          },
                          child: hpImage('1')),
                      GestureDetector(
                        child: hpImage('2'),
                        onTap: () async {
                          setState(() {
                            isload = true;
                          });
                          List allC;
                          allC =
                              await DatabaseServices(uid: g.uid).allClasses();
                          isload = false;
                          Navigator.push(
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
                          isload = false;
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      AdmSmCls(list: allC),
                            ),
                          );
                        },
                      ),
                      GestureDetector(
                        child: hpImage('7'),
                        onTap: () async {
                          List allC;
                          allC =
                              await DatabaseServices(uid: g.uid).allClasses();
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String classid;
                              return StatefulBuilder(
                                  builder: (context, setState) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScopeNode currentFocus =
                                        FocusScope.of(context);
                                    if (!currentFocus.hasPrimaryFocus) {
                                      currentFocus.unfocus();
                                    }
                                  },
                                  child: AlertDialog(
                                    title: Text('Add Lecture'),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          TxtField(
                                            ctrl: g.leclink,
                                            hint: "Lecture Link",
                                          ),
                                          DropdownButton<String>(
                                            isExpanded: true,
                                            value: classid,
                                            elevation: 16,
                                            hint: Text('Class'),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                classid = newValue;
                                              });
                                            },
                                            items: allC
                                                .map<DropdownMenuItem<String>>(
                                                    (value) {
                                              return DropdownMenuItem<String>(
                                                value: value['class'],
                                                child: Text(
                                                  value['class'],
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Add'),
                                        onPressed: () {
                                          g.leclink.clear();
                                          DatabaseServices(uid: g.uid)
                                              .updateLecture(
                                                  g.leclink.text, classid);
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              });
                            },
                          );
                        },
                      )
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
                          isload = false;
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      AddUser(),
                            ),
                          );
                        },
                      ),
                      GestureDetector(
                          onTap: () async {
                            List allDbt;
                            allDbt = await DatabaseServices(uid: g.uid)
                                .getDoubtAdm();
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      AdmDoubt(
                                        doubts: allDbt,
                                      )),
                            );
                          },
                          child: hpImage('10')),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
