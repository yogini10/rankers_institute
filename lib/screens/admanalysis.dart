import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/loginfield.dart';

class AdmAnalysis extends StatefulWidget {
  final List cls;

  const AdmAnalysis({Key key, this.cls}) : super(key: key);
  @override
  _AdmAnalysisState createState() => _AdmAnalysisState();
}

class _AdmAnalysisState extends State<AdmAnalysis> {
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
              List allS, allT;
              allS = await DatabaseServices(uid: g.uid)
                  .allTests(maps[index]['class']);
              allT = await DatabaseServices(uid: g.uid)
                  .allTeststes(maps[index]['class']);
              // allS = await DatabaseServices(uid: g.uid)
              //     .allSubs(maps[index]['class']);
              isload = false;
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AddTestData(
                    subs: allS,
                    tests: allT,
                    clss: maps[index]['class'],
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
        : WillPopScope(
            onWillPop: () {
              setState(() {
                isload = true;
              });
              Navigator.pop(context, false);
              return Future.value(false);
            },
            child: Stack(children: [
              bgclass(),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: g.height * 0.07,
                    ),
                    child: ListView(
                      children: lcmat(widget.cls),
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
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  AdmHome()),
                    );
                  },
                ),
              ),
            ]),
          );
  }
}

class AddTestData extends StatefulWidget {
  final List tests;
  final List subs;
  final String clss;

  const AddTestData({Key key, this.tests, this.subs, this.clss})
      : super(key: key);
  @override
  _AddTestDataState createState() => _AddTestDataState();
}

class _AddTestDataState extends State<AddTestData> {
  bool isload = false;
  String subs;
  String tess;
  String error = '';
  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingScreen()
        : WillPopScope(
            onWillPop: () {
              setState(() {
                isload = true;
              });
              g.stuEmail.clear();
              g.stuMarks.clear();
              isload = false;
              Navigator.pop(context, false);
              return Future.value(false);
            },
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Scaffold(
                backgroundColor: Color(0xffcaf0f8).withOpacity(0.7),
                body: Center(
                  child: Container(
                    height: g.height * 0.8,
                    width: g.width * 0.85,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff).withOpacity(0.55),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: g.height * 0.05,
                        left: g.width * 0.075,
                        right: g.width * 0.075,
                      ),
                      child: ListView(
                        children: [
                          Center(
                            child: Text(
                              'Add Test Details',
                              style: g.loginpgstyles(
                                Color(0xff000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: g.height * 0.05,
                          ),
                          Text('Student Email ID'),
                          SizedBox(
                            height: g.height * 0.01,
                          ),
                          ATSInpField(
                            edit: g.stuEmail,
                          ),
                          SizedBox(
                            height: g.height * 0.03,
                          ),
                          Text('Marks'),
                          SizedBox(
                            height: g.height * 0.01,
                          ),
                          ATSInpField(
                            edit: g.stuMarks,
                          ),
                          SizedBox(
                            height: g.height * 0.03,
                          ),
                          DropdownButton<String>(
                            isExpanded: true,
                            value: subs,
                            elevation: 16,
                            hint: Text('Subject'),
                            onChanged: (String newValue) {
                              setState(() {
                                subs = newValue;
                              });
                            },
                            items: widget.subs
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: g.height * 0.03,
                          ),
                          DropdownButton<String>(
                            isExpanded: true,
                            value: tess,
                            elevation: 16,
                            hint: Text('Test'),
                            onChanged: (String newValue) {
                              setState(() {
                                tess = newValue;
                              });
                            },
                            items: widget.tests
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: g.height * 0.03,
                          ),
                          Center(
                            child: RawMaterialButton(
                              onPressed: () async {
                                setState(() {
                                  isload = true;
                                });
                                if (g.stuEmail.text.isNotEmpty &&
                                    g.stuMarks.text.isNotEmpty &&
                                    subs != null &&
                                    tess != null &&
                                    num.tryParse(g.stuMarks.text) != null) {
                                  var v = await DatabaseServices(uid: g.uid)
                                      .addMarks(
                                          g.stuEmail.text,
                                          g.stuMarks.text,
                                          subs,
                                          tess,
                                          widget.clss);
                                  if (v != '') {
                                    setState(() {
                                      error = v;
                                      isload = false;
                                      subs = null;
                                      tess = null;
                                      g.stuEmail.clear();
                                      g.stuMarks.clear();
                                    });
                                  } else {
                                    isload = false;
                                    g.stuEmail.clear();
                                    g.stuMarks.clear();
                                    subs = null;
                                    tess = null;
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  }
                                } else {
                                  g.stuEmail.clear();
                                  g.stuMarks.clear();
                                  subs = null;
                                  tess = null;
                                  setState(() {
                                    error = 'One or more fields are left empty';
                                    isload = false;
                                  });
                                }
                              },
                              child: Container(
                                  width: g.width * 0.5,
                                  height: g.height * 0.055,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xff90e0ef),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add Test Details',
                                    ),
                                  )),
                            ),
                          ),
                          Center(
                            child: Text(
                              error,
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                resizeToAvoidBottomInset: false,
              ),
            ),
          );
  }
}
