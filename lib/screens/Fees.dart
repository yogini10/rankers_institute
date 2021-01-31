import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankers_institute/globals.dart' as g;

class Fees extends StatelessWidget {
  Fees({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
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
              offset: Offset(30.0, 93.0),
              child: SvgPicture.string(
                _svg_80eiyd,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(183.0, 107.0),
              child: Text(
                'FEES',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 24,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(58.0, 186.0),
              child: Text(
                'Name:',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 16,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(54.5, 236.5),
              child: SvgPicture.string(
                _svg_d9h9se,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(55.0, 258.0),
              child: SizedBox(
                width: 113.0,
                height: 34.0,
                child: Text(
                  'Amount Paid :',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(55.0, 342.0),
              child: SizedBox(
                width: 141.0,
                height: 21.0,
                child: Text(
                  'Remaining Amount:',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(54.5, 397.5),
              child: SvgPicture.string(
                _svg_6qip3b,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(55.0, 433.0),
              child: SizedBox(
                width: 185.0,
                height: 29.0,
                child: Text(
                  'Total Amount:',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(58.5, 491.5),
              child: SvgPicture.string(
                _svg_slam67,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_80eiyd =
    '<svg viewBox="30.0 93.0 354.0 675.0" ><path transform="translate(30.0, 93.0)" d="M 80 0 L 274 0 C 318.1827697753906 0 354 35.81721878051758 354 80 L 354 595 C 354 639.1828002929688 318.1827697753906 675 274 675 L 80 675 C 35.81721878051758 675 0 639.1828002929688 0 595 L 0 80 C 0 35.81721878051758 35.81721878051758 0 80 0 Z" fill="#ffffff" fill-opacity="0.55" stroke="#707070" stroke-width="1" stroke-opacity="0.55" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d9h9se =
    '<svg viewBox="54.5 236.5 283.0 71.0" ><path transform="translate(58.5, 236.5)" d="M -3.76251220703125 0 L 275.521240234375 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(54.5, 306.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6qip3b =
    '<svg viewBox="54.5 397.5 283.0 1.0" ><path transform="translate(54.5, 397.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_slam67 =
    '<svg viewBox="58.5 491.5 283.0 1.0" ><path transform="translate(58.5, 491.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
