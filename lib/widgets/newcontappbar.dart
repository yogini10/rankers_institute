import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

AppBar ncAppBaer() {
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              g.stuEmail.clear();
              g.stuContact.clear();
              Navigator.pop(context);
            });
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
  );
}
