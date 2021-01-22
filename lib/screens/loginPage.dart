import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/loginfield.dart';

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
            offset: Offset(g.width * 1.5 / 5, g.height * 0.6 / 5),
            child:
                // Adobe XD layer: 'r' (shape)
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
          Transform.translate(
            offset: Offset(0, g.height * 0.371),
            child: Padding(
              padding:
                  EdgeInsets.only(left: g.width * 0.11, right: g.width * 0.11),
              child: logPgField(26, 'Enter Username', false),
            ),
          ),
          Transform.translate(
            offset: Offset(0, g.height * 0.469),
            child: Padding(
              padding:
                  EdgeInsets.only(left: g.width * 0.11, right: g.width * 0.11),
              child: logPgField(26, 'Enter Password', true),
            ),
          ),
          Transform.translate(
            offset: Offset(g.width * 0.125, g.height * 0.63),
            child: RawMaterialButton(
              onPressed: null,
              child: Container(
                width: g.width * 0.75,
                height: g.height * 0.085,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: g.width * 0.2,
                      right: g.width * 0.2,
                      top: g.height * 0.015,
                      bottom: g.height * 0.015),
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
          ),
          Transform.translate(
            offset: Offset(g.width * 0.55, g.height * 0.73),
            child: RawMaterialButton(
              onPressed: null,
              child: Text(
                'Forget Password',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 16,
                  color: const Color(0xba0e0d0d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_p9qcn6 =
    '<svg viewBox="-131.0 0.0 691.0 798.0" ><defs><radialGradient id="gradient" gradientTransform="matrix(1.0 0.0 0.0 1.0 0.0 0.0)" fx="0.5" fy="0.5" fr="0.0" cx="0.5" cy="0.5" r="0.5"><stop offset="0.0" stop-color="#90e0ef" /><stop offset="1.0" stop-color="#00b4d8" /></radialGradient></defs><path transform="translate(-131.0, 0.0)" d="M 345.5 0 C 536.3143920898438 0 691 178.6384124755859 691 399 C 691 619.361572265625 536.3143920898438 798 345.5 798 C 154.6856231689453 798 0 619.361572265625 0 399 C 0 178.6384124755859 154.6856231689453 0 345.5 0 Z" fill="url(#gradient)" fill-opacity="0.47" stroke="none" stroke-width="1" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
