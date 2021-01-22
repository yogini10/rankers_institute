import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00b4d8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-131.0, 0.0),
            child: SvgPicture.string(
              _svg_p9qcn6,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 84.0),
            child:
                // Adobe XD layer: 'r' (shape)
                Container(
              width: 380.0,
              height: 296.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 272.0),
            child: Container(
              width: 335.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xe3ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x24000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 367.0),
            child: Container(
              width: 335.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xe3ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x24000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 485.0),
            child: Container(
              width: 335.0,
              height: 65.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: const Color(0xe34caf50),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x24000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 293.0),
            child: Text(
              'Enter Username',
              style: TextStyle(
                fontFamily: 'Lucida Fax',
                fontSize: 22,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 388.0),
            child: Text(
              'Enter Password',
              style: TextStyle(
                fontFamily: 'Lucida Fax',
                fontSize: 22,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(148.0, 493.0),
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 40,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(206.0, 550.0),
            child: Text(
              'forget password',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 25,
                color: const Color(0xba0e0d0d),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_p9qcn6 =
    '<svg viewBox="-131.0 0.0 691.0 798.0" ><defs><radialGradient id="gradient" gradientTransform="matrix(1.0 0.0 0.0 1.0 0.0 0.0)" fx="0.5" fy="0.5" fr="0.0" cx="0.5" cy="0.5" r="0.5"><stop offset="0.0" stop-color="#90e0ef" /><stop offset="1.0" stop-color="#00b4d8" /></radialGradient></defs><path transform="translate(-131.0, 0.0)" d="M 345.5 0 C 536.3143920898438 0 691 178.6384124755859 691 399 C 691 619.361572265625 536.3143920898438 798 345.5 798 C 154.6856231689453 798 0 619.361572265625 0 399 C 0 178.6384124755859 154.6856231689453 0 345.5 0 Z" fill="url(#gradient)" fill-opacity="0.47" stroke="none" stroke-width="1" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
