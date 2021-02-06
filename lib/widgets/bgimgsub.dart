import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/stuhome.dart';

class BGISub extends StatefulWidget {
  @override
  _BGISubState createState() => _BGISubState();
}

class _BGISubState extends State<BGISub> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.translate(
        offset: Offset(0, 0),
        child: Transform.scale(
          scale: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Color(0xffcaf0f8).withOpacity(0.7), BlendMode.dstATop),
                image: const AssetImage('lib/assets/creative.png'),
                fit: BoxFit.fitHeight,
              ),
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
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      StuHome()),
            );
          },
        ),
      ),
    ]);
  }
}
