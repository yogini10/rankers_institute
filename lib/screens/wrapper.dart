import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/homePage1.dart';
import 'package:rankers_institute/screens/loginPage.dart';

class WrapScreens extends StatefulWidget {
  @override
  _WrapScreensState createState() => _WrapScreensState();
}

class _WrapScreensState extends State<WrapScreens> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return LoginPage();
    }
    g.uid = user.uid;
    print(g.uid);
    return HomePage();
  }
}
