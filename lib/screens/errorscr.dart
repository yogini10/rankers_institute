import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class ErrorScr extends StatefulWidget {
  final String error;

  const ErrorScr({Key key, this.error}) : super(key: key);
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
          Transform.translate(
            offset: Offset(0, 0),
            child: Center(
                child: Padding(
              padding:
                  EdgeInsets.only(left: g.width * 0.1, right: g.width * 0.1),
              child: Text(
                widget.error,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
