import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/admhome.dart';
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
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          AddStudents(),
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
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
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
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Password'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Name'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Subject'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Contact no'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('ID'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.075,
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
  @override
  _AddStudentsState createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
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
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Password'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Name'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Class'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('Contact no'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text('ID'),
                  SizedBox(
                    height: g.height * 0.01,
                  ),
                  ATSInpField(),
                  SizedBox(
                    height: g.height * 0.075,
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
