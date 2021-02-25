import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  List<Widget> lista() {
    return List<Column>.generate(9, (index) {
      return Column(
        children: [
          Center(
            child: Container(
              width: g.width * 0.45,
              height: g.height * 0.23,
            ),
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
