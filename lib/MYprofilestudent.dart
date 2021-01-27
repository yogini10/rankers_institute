import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MYprofilestudent extends StatelessWidget {
  MYprofilestudent({
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
            offset: Offset(29.0, 85.0),
            child: Container(
              width: 356.0,
              height: 683.0,
              decoration: BoxDecoration(
                color: const Color(0xb5ffffff),
                border: Border.all(width: 1.0, color: const Color(0xb5707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(148.8, 116.0),
            child:
                // Adobe XD layer: 'user' (shape)
                Container(
              width: 116.5,
              height: 116.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x7d000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.2, 329.5),
            child: SvgPicture.string(
              _svg_ak0qjy,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(252.0, 303.0),
            child: Text(
              'Surname',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 303.0),
            child: Text(
              'Middlename',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 303.0),
            child: Text(
              'Name',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(68.2, 400.0),
            child: SvgPicture.string(
              _svg_ai2pmi,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(68.0, 375.0),
            child: Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 446.0),
            child: Text(
              'Contact no',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(68.2, 611.5),
            child: SvgPicture.string(
              _svg_fvze9i,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 516.0),
            child: SizedBox(
              width: 60.0,
              height: 31.0,
              child: Text(
                'STD',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 13,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 587.0),
            child: Text(
              'ID',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_uroy5w =
    '<svg viewBox="0.0 0.0 414.0 70.0" ><path  d="M 0 0 L 414 0 L 414 70 L 0 70 L 0 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ak0qjy =
    '<svg viewBox="68.2 329.5 277.6 1.0" ><path transform="translate(71.95, 329.5)" d="M -3.76251220703125 0 L 273.86328125 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ai2pmi =
    '<svg viewBox="68.2 400.0 278.4 141.0" ><path transform="translate(71.95, 400.0)" d="M -3.76251220703125 0 L 273.86328125 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(72.76, 470.5)" d="M -3.76251220703125 0 L 273.86328125 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(71.95, 541.0)" d="M -3.76251220703125 0 L 273.86328125 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fvze9i =
    '<svg viewBox="68.2 611.5 277.6 1.0" ><path transform="translate(71.95, 611.5)" d="M -3.76251220703125 0 L 273.86328125 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
