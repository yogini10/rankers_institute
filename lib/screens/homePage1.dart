import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/Contacts.dart';
import 'package:rankers_institute/screens/Fees.dart';
import 'package:rankers_institute/screens/loc.dart';
import 'package:rankers_institute/services/auth.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isload = false;
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
                        'Student model',
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        'emailmodel@email.com',
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
                                  Fees(),
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
                                  Location(),
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
              body: Stack(
                children: <Widget>[
                  Transform.translate(
                      offset: Offset(g.width * 0.03, g.height * 0.02),
                      child: hpImage('1')),
                  Transform.translate(
                      offset: Offset(g.width * 0.52, g.height * 0.02),
                      child: hpImage('2')),
                  Transform.translate(
                      offset: Offset(g.width * 0.03, g.height * 0.27),
                      child: hpImage('3')),
                  Transform.translate(
                      offset: Offset(g.width * 0.52, g.height * 0.27),
                      child: hpImage('4')),
                  Transform.translate(
                      offset: Offset(g.width * 0.03, g.height * 0.52),
                      child: hpImage('5')),
                  Transform.translate(
                      offset: Offset(g.width * 0.52, g.height * 0.52),
                      child: hpImage('Online Lecture')),
                ],
              ),
            ),
          );
  }
}
