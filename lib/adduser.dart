import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class adduser extends StatelessWidget {
  adduser({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Stack(
        children: <Widget>[
          SvgPicture.string(
            _svg_uroy5w,
            allowDrawingOutsideViewBox: true,
          ),
          Transform.translate(
            offset: Offset(96.0, 15.0),
            child: Text(
              'Ranker\'s Institute',
              style: TextStyle(
                fontFamily: 'Lucida Bright',
                fontSize: 25,
                color: const Color(0xff0e0d0d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(11.0, 43.0),
            child: Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(11.0, 29.0),
            child: Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(11.0, 15.0),
            child: Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 107.0),
            child: Container(
              width: 358.0,
              height: 654.0,
              decoration: BoxDecoration(
                color: const Color(0x9684d9eb),
                border: Border.all(width: 1.0, color: const Color(0x96707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(84.0, 305.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}].map((map) {
                  return SizedBox(
                    width: 264.0,
                    height: 213.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 263.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(1.0, 158.0),
                          child: Container(
                            width: 263.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(62.0, 8.0),
                          child: Text(
                            'Add User',
                            style: TextStyle(
                              fontFamily: 'Segoe UI Historic',
                              fontSize: 30,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(66.0, 166.0),
                          child: Text(
                            'Update ID',
                            style: TextStyle(
                              fontFamily: 'Segoe UI Historic',
                              fontSize: 30,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uroy5w =
    '<svg viewBox="0.0 0.0 414.0 70.0" ><path  d="M 0 0 L 414 0 L 414 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
