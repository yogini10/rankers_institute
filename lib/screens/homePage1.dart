import 'package:flutter/material.dart';
import 'package:rankers_institute/addmanually.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/models/students.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/screens/Contacts.dart';
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/screens/stuhome.dart';
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
    var u = await DatabaseServices(uid: g.uid).currentUser();
    g.userGlob = User(
        uid: g.uid,
        email: u.get('email'),
        password: u.get('password'),
        usertype: u.get('usertype'));

    // var v = await DatabaseServices(uid: g.uid).currentStu();
    // g.stuGlob.classId = v.get('classID');
    // g.stuGlob.name = v.get('name');
    // g.stuGlob.contact = v.get('contact');
    // g.stuGlob.email = v.get('email');
    // g.stuGlob.rollNo = v.get('rollno');
    setState(() {});
  }

  bool isload = false;
  @override
  Widget build(BuildContext context) {
    update();
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
                        g.stuGlob.name,
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
                                  AddFeesdetail(),
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
                                  addmanually(),
                            ));
                      },
                    ),
                    ListTile(
                      title: Text('Your Profile'),
                    ),
                    ListTile(
                      title: Text('About us'),
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
                        await AuthServices().signOut();
                        setState(() {
                          isload = false;
                        });
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
                home: AdmHome(),
              ),
            ),
          );
  }
}
