import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/models/admin.dart';
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/screens/Contacts.dart';
import 'package:rankers_institute/screens/Fees.dart';
import 'package:rankers_institute/screens/aboutus.dart';
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/screens/stuhome.dart';
import 'package:rankers_institute/screens/teahome.dart';
import 'package:rankers_institute/services/auth.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/loading.dart';

import 'addfeesdetail.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void update() async {
    if (mounted) {
      setState(() {});
    }
    var u = await DatabaseServices(uid: g.uid).currentUser();
    g.userGlob = User(
        uid: g.uid,
        email: u.get('email'),
        password: u.get('password'),
        usertype: u.get('usertype'));
    if (g.userGlob.usertype == 'Student') {
      var stu = await DatabaseServices(uid: g.uid).currentStu();
      g.stuGlob = Student(
          classId: stu.get('classID'),
          contact: stu.get('contact'),
          email: stu.get('email'),
          name: stu.get('name'),
          rollNo: stu.get('rollno'),
          stuId: g.uid);
      g.name = g.stuGlob.name;
    } else if (g.userGlob.usertype == 'Teacher') {
      var tea = await DatabaseServices(uid: g.uid).currentTea();
      g.teaGlob = Teacher(
        subject: tea.get('subject'),
        tId: g.uid,
        teacherName: tea.get('teachername'),
      );
      g.name = g.teaGlob.teacherName;
    } else if (g.userGlob.usertype == 'Admin') {
      var adm = await DatabaseServices(uid: g.uid).currentAdm();
      g.admGlob = Admin(
        admId: g.uid,
        contact: adm.get('contact'),
        email: adm.get('email'),
        name: adm.get('name'),
      );
      g.name = g.admGlob.name;
    }
    if (mounted) {
      setState(() {});
    }
  }

  bool isload = false;
  @override
  Widget build(BuildContext context) {
    try {
      update();
    } catch (e) {
      print('hello');
    }
    //safe are not letting screen behind status bar
    return isload
        ? LoadingScreen()
        : SafeArea(
            child: Scaffold(
              drawer: Drawer(
                elevation: 70,
                child: Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xffcaf0f8),
                      ),
                      accountName: Text(
                        g.name,
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        g.userGlob.email,
                        style: TextStyle(color: Colors.black),
                      ),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('lib/assets/user.png'),
                      ),
                    ),
                    ListTile(
                      title: Text('Notice Board'),
                    ),
                    ListTile(
                      title: Text('Fees details'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  g.userGlob.usertype == 'Admin'
                                      ? AddFeesdetail()
                                      : Fees(),
                            ));
                      },
                    ),
                    ListTile(
                      title: Text('Contact us'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  Contactus(),
                            ));
                      },
                    ),
                    ListTile(
                      title: Text('Your Profile'),
                    ),
                    ListTile(
                      title: Text('About us'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  AboutUs(
                                index: 0,
                              ),
                            ));
                      },
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    ListTile(
                      trailing: Icon(Icons.logout),
                      tileColor: Color(0xffcaf0f8),
                      title: Text('Sign Out'),
                      onTap: () async {
                        setState(() {
                          isload = true;
                        });
                        try {
                          await AuthServices().signOut();
                        } catch (e) {
                          print('hi');
                        }
                      },
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 40,
                        ),
                        onPressed: () => Scaffold.of(context).openDrawer());
                  },
                ),
                backgroundColor: const Color(0xffffffff),
                title: Text(
                  'Ranker\'s Institute',
                  style: TextStyle(
                    fontFamily: 'Lucida Bright',
                    fontSize: 25,
                    color: const Color(0xff0e0d0d),
                  ),
                ),
              ),
              backgroundColor: const Color(0xffcaf0f8),
              body: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: g.userGlob.usertype == 'Admin'
                      ? AdmHome()
                      : g.userGlob.usertype == 'Teacher'
                          ? TeaHome()
                          : g.userGlob.usertype == 'Student'
                              ? StuHome()
                              : LoadingScreen()),
            ),
          );
  }
}
