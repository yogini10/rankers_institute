import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ADDFeesdetail extends StatelessWidget {
  ADDFeesdetail({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Stack(
        children: <Widget>[
          Container(
            width: 414.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(4.0, 48.0),
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
            offset: Offset(4.0, 29.0),
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
            offset: Offset(4.0, 10.0),
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
            offset: Offset(102.0, 20.0),
            child: SizedBox(
              width: 218.0,
              height: 30.0,
              child: Text(
                'Ranker\'s Institute',
                style: TextStyle(
                  fontFamily: 'Lucida Bright',
                  fontSize: 24,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 93.0),
            child: SvgPicture.string(
              _svg_80eiyd,
              allowDrawingOutsideViewBox: true,
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
            offset: Offset(54.7, 236.5),
            child: SvgPicture.string(
              _svg_z9ec6s,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 255.0),
            child: SizedBox(
              width: 113.0,
              height: 34.0,
              child: Text(
                'ID :',
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
            offset: Offset(54.7, 397.5),
            child: SvgPicture.string(
              _svg_egz1bq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(123.0, 107.0),
            child: Text(
              'Add fees Detail ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 24,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(59.0, 527.0),
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
            offset: Offset(54.7, 603.0),
            child: SvgPicture.string(
              _svg_a3rpbb,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 433.0),
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
            offset: Offset(58.0, 344.0),
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
            offset: Offset(105.0, 626.0),
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}].map((map) {
                  return SizedBox(
                    width: 178.0,
                    height: 40.0,
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0.0, 1.0),
                          child: Container(
                            width: 178.0,
                            height: 39.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffbef6ef),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(58.0, 0.0),
                          child: Text(
                            'Add ',
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

const String _svg_80eiyd =
    '<svg viewBox="30.0 93.0 354.0 675.0" ><path transform="translate(30.0, 93.0)" d="M 80 0 L 274 0 C 318.1827697753906 0 354 35.81721878051758 354 80 L 354 595 C 354 639.1828002929688 318.1827697753906 675 274 675 L 80 675 C 35.81721878051758 675 0 639.1828002929688 0 595 L 0 80 C 0 35.81721878051758 35.81721878051758 0 80 0 Z" fill="#ffffff" fill-opacity="0.55" stroke="#707070" stroke-width="1" stroke-opacity="0.55" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z9ec6s =
    '<svg viewBox="54.7 236.5 283.3 78.0" ><path transform="translate(58.5, 236.5)" d="M -3.76251220703125 0 L 275.521240234375 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(55.0, 313.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_egz1bq =
    '<svg viewBox="54.7 397.5 283.3 104.5" ><path transform="translate(55.0, 397.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(54.74, 501.0)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a3rpbb =
    '<svg viewBox="54.7 603.0 283.0 1.0" ><path transform="translate(54.74, 603.0)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
