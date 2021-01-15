import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FrontPage extends StatelessWidget {
  FrontPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff0077b6),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-162.0, 2.0),
            child: SvgPicture.string(
              _svg_e8meo3,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          //Login button box
          Transform.translate(
            offset: Offset(width * 1 / 5, 527.0),
            child: Container(
              width: 222.0,
              height: 63.0,
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
          //Login button text
          Transform.translate(
            offset: Offset(width * 1 / 3, 530.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => FrontPage(),
                ),
              ],
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'Lucida Bright',
                  fontSize: 40,
                  color: const Color(0xff0e0d0d),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // background image
          Transform.translate(
            offset: Offset(0.0, 125.0),
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
          //Logo
          Transform.translate(
            offset: Offset(width * 1.5 / 5, 86.0),
            child:
                // Adobe XD layer: 'r-removebg-preview …' (shape)
                Container(
              width: 143.0,
              height: 112.0,
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

//round shape for background
const String _svg_e8meo3 =
    '<svg viewBox="-162.0 2.0 691.0 798.0" ><path transform="translate(-162.0, 2.0)" d="M 345.5 0 C 536.3143920898438 0 691 178.6384124755859 691 399 C 691 619.361572265625 536.3143920898438 798 345.5 798 C 154.6856231689453 798 0 619.361572265625 0 399 C 0 178.6384124755859 154.6856231689453 0 345.5 0 Z" fill="#90e0ef" fill-opacity="0.47" stroke="none" stroke-width="1" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
