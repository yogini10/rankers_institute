import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/hpimg.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          elevation: 70,
          child: ListView(
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
              ),
              ListTile(
                title: Text('Contact us'),
              ),
              ListTile(
                title: Text('Your Profile'),
              ),
              ListTile(
                title: Text('About us'),
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
