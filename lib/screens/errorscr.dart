import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class ErrorScr extends StatefulWidget {
  @override
  _ErrorScrState createState() => _ErrorScrState();
}

class _ErrorScrState extends State<ErrorScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0077b6),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: g.width / 14,
                right: g.width / 14,
                top: g.height / 20,
                bottom: g.height / 20),
            decoration: BoxDecoration(
              color: Color(0xff90e0ef).withOpacity(0.5),
            ),
          ),

          // background image
          Transform.translate(
            offset: Offset(0.0, g.height * 0.8 / 5),
            child:
                // Adobe XD layer: 'kisspng-student-lea…' (shape)
                Container(
              width: 418.0,
              height: 418.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('lib/assets/frontpageimg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 0),
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(
                  left: g.width * 0.1,
                  right: g.width * 0.1,
                  top: g.height * 0.6),
              child: Text(
                'Please Stand by we are rectifying the error....',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            )),
          ),
          //Logo
          Transform.translate(
            offset: Offset(g.width * 1.5 / 5, g.height * 0.6 / 5),
            child:
                // Adobe XD layer: 'r-removebg-preview …' (shape)
                Container(
              width: g.width * 0.4,
              height: g.height * 0.15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('lib/assets/rlogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
