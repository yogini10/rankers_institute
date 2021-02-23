import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/services/auth.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/widgets/loginfield.dart';

class AddUser extends StatefulWidget {
  AddUser({
    Key key,
  }) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Center(
        child: Container(
          height: g.height * 0.8,
          width: g.width * 0.85,
          decoration: BoxDecoration(
            color: const Color(0x9684d9eb),
            border: Border.all(width: 1.0, color: const Color(0x96707070)),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              RawMaterialButton(
                onPressed: () async {
                  setState(() {
                    isload = true;
                  });
                  List allC;
                  allC = await DatabaseServices(uid: g.uid).allClasses();
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          AddStudents(
                        subs: allC,
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    height: g.height * 0.07,
                    width: g.width * 0.70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 3.0, color: const Color(0x96707070)),
                    ),
                    child: Center(
                      child: Text(
                        'Add Student',
                        style: g.loginpgstyles(Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: g.height * 0.1,
              ),
              RawMaterialButton(
                onPressed: () async {
                  setState(() {
                    isload = true;
                  });
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          AddTeachers(),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    height: g.height * 0.07,
                    width: g.width * 0.70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 3.0, color: const Color(0x96707070)),
                    ),
                    child: Center(
                      child: Text(
                        'Add Teacher',
                        style: g.loginpgstyles(Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddTeachers extends StatefulWidget {
  @override
  _AddTeachersState createState() => _AddTeachersState();
}

class _AddTeachersState extends State<AddTeachers> {
  final AuthServices _auth = AuthServices();
  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingScreen()
        : GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xffcaf0f8),
              body: Center(
                child: Container(
                  height: g.height * 0.8,
                  width: g.width * 0.85,
                  color: Color(0xffffffff).withOpacity(0.55),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: g.height * 0,
                      left: g.width * 0.075,
                      right: g.width * 0.075,
                    ),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                g.teaContact.clear();
                                g.teaEmail.clear();
                                g.teaName.clear();
                                g.teaPass.clear();
                                g.teaSubject.clear();
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          AdmHome()),
                                );
                              },
                            ),
                            Expanded(child: Container()),
                            Center(
                              child: Text(
                                'Add Teacher',
                                style: g.loginpgstyles(
                                  Color(0xff000000),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: g.height * 0.05,
                        ),
                        Text('Email'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.teaEmail),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Password'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.teaPass),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Name'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.teaName),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Subject'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.teaSubject),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Contact no'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.teaContact),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        SizedBox(
                          height: g.height * 0.075,
                        ),
                        Center(
                          child: RawMaterialButton(
                            onPressed: () async {
                              isload = true;
                              var c = await _auth.registerWithEmailAndPassword(
                                  g.teaEmail.text, g.teaPass.text, 'Teacher');
                              await DatabaseServices(uid: g.uid).updateTeaInfo(
                                  Teacher(
                                      teacherName: g.teaName.text,
                                      subject: g.teaSubject.text,
                                      tId: c.uid),
                                  true);
                              g.teaContact.clear();
                              g.teaEmail.clear();
                              g.teaName.clear();
                              g.teaPass.clear();
                              g.teaSubject.clear();
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        AdmHome()),
                              );
                            },
                            child: Container(
                              width: g.width * 0.5,
                              height: g.height * 0.055,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color(0xff90e0ef),
                              ),
                              child: Center(child: Text('Add Teacher')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

class AddStudents extends StatefulWidget {
  final List subs;

  AddStudents({Key key, this.subs}) : super(key: key);
  @override
  _AddStudentsState createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  final AuthServices _auth = AuthServices();
  bool isload = false;
  String dropdownValue3;
  @override
  Widget build(BuildContext context) {
    return isload
        ? LoadingScreen()
        : GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xffcaf0f8),
              body: Center(
                child: Container(
                  height: g.height * 0.8,
                  width: g.width * 0.85,
                  color: Color(0xffffffff).withOpacity(0.55),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: g.height * 0,
                      left: g.width * 0.075,
                      right: g.width * 0.075,
                    ),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                g.stuContact.clear();
                                g.stuEmail.clear();
                                g.stuID.clear();
                                g.stuName.clear();
                                g.stuPass.clear();
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          AdmHome()),
                                );
                              },
                            ),
                            Expanded(child: Container()),
                            Center(
                              child: Text(
                                'Add Student',
                                style: g.loginpgstyles(
                                  Color(0xff000000),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: g.height * 0.05,
                        ),
                        Text('Email'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(
                          edit: g.stuEmail,
                        ),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Password'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(edit: g.stuPass),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Name'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(
                          edit: g.stuName,
                        ),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue3,
                          elevation: 16,
                          hint: Text('Class'),
                          style: g.loginpgstyles(
                            Color(0xff000000),
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue3 = newValue;
                            });
                          },
                          items: widget.subs
                              .map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value['class'],
                              child: Text(
                                value['class'],
                                style: g.loginpgstyles(
                                  Color(0xff000000),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Contact no'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(
                          edit: g.stuContact,
                        ),
                        SizedBox(
                          height: g.height * 0.03,
                        ),
                        Text('Roll no'),
                        SizedBox(
                          height: g.height * 0.01,
                        ),
                        ATSInpField(
                          edit: g.stuID,
                        ),
                        SizedBox(
                          height: g.height * 0.075,
                        ),
                        Center(
                          child: RawMaterialButton(
                            onPressed: () async {
                              isload = true;
                              var c = await _auth.registerWithEmailAndPassword(
                                  g.stuEmail.text, g.stuPass.text, 'Student');
                              await DatabaseServices(uid: g.uid).updateStuInfo(
                                  Student(
                                      classId: dropdownValue3,
                                      contact: g.stuContact.text,
                                      email: g.stuEmail.text,
                                      name: g.stuName.text,
                                      rollNo: g.stuID.text,
                                      stuId: c.uid),
                                  true);
                              g.stuContact.clear();
                              g.stuEmail.clear();
                              g.stuID.clear();
                              g.stuName.clear();
                              g.stuPass.clear();
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        AdmHome()),
                              );
                            },
                            child: Container(
                              width: g.width * 0.5,
                              height: g.height * 0.055,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Color(0xff90e0ef),
                              ),
                              child: Center(child: Text('Add Student')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
