import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankers_institute/screens/homePage1.dart';

class Contactus extends StatelessWidget {
  Contactus({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(30.0, 93.0),
            child: Container(
              width: 354.0,
              height: 675.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                color: const Color(0x8cffffff),
                border: Border.all(width: 1.0, color: const Color(0x8c707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(97.0, 107.0),
            child: Text(
              'SEND US A MESSAGE !',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 24,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 143.0),
            child: Text(
              'How can we help you today ?',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 16,
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
                fontSize: 13,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(54.7, 236.5),
            child: SvgPicture.string(
              _svg_sw9evi,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 259.0),
            child: SizedBox(
              width: 85.0,
              height: 21.0,
              child: Text(
                'Email/Contact:',
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
            offset: Offset(54.5, 306.5),
            child: SvgPicture.string(
              _svg_2zvgte,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(55.0, 330.0),
            child: SizedBox(
              width: 60.0,
              height: 31.0,
              child: Text(
                'Message:',
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
            offset: Offset(143.0, 406.0),
            child: Container(
              width: 101.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffcaf0f8),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(171.0, 413.0),
            child: Text(
              'SUBMIT',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(157.0, 463.0),
            child: Text(
              'CONTACT US',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 13,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(157.5, 486.5),
            child: SvgPicture.string(
              _svg_qz8t86,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 650.0),
            child: SizedBox(
              width: 280.0,
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 280.0, 60.0),
                    size: Size(280.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: const Color(0x00caf0f8),
                        border: Border.all(
                            width: 1.0, color: const Color(0x00707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(95.0, 671.0),
            child: Container(
              width: 19.0,
              height: 19.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(148.0, 666.0),
            child: Container(
              width: 26.0,
              height: 28.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(275.0, 664.0),
            child: Container(
              width: 31.0,
              height: 32.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 456.0),
            child: Container(
              width: 280.0,
              height: 161.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0x66ffffff),
                border: Border.all(width: 1.0, color: const Color(0x66707070)),
              ),
            ),
          ),
          // Transform.translate(
          //   offset: Offset(216.0, 668.0),
          //   child:
          //       // Adobe XD layer: 'kisspng-computer-ic…' (shape)
          //       PageLink(
          //     links: [
          //       PageLinkInfo(
          //         transition: LinkTransition.Fade,
          //         ease: Curves.easeOut,
          //         duration: 0.3,
          //         pageBuilder: () => HomePage(),
          //       ),
          //     ],
          //     child: Container(
          //       width: 20.0,
          //       height: 28.0,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: const AssetImage(''),
          //           fit: BoxFit.fill,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            width: 414.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(94.0, 17.0),
            child: SizedBox(
              width: 226.0,
              height: 34.0,
              child: Text(
                'Ranker\'s Institute',
                style: TextStyle(
                  fontFamily: 'Lucida Bright',
                  fontSize: 25,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(4.0, 9.0),
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
            offset: Offset(4.0, 45.0),
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
            offset: Offset(4.0, 27.0),
            child: Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_sw9evi =
    '<svg viewBox="54.7 236.5 279.3 1.0" ><path transform="translate(58.5, 236.5)" d="M -3.76251220703125 0 L 275.521240234375 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2zvgte =
    '<svg viewBox="54.5 306.5 283.0 84.0" ><path transform="translate(54.5, 306.5)" d="M 0 0 L 283 1" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(54.5, 390.5)" d="M 0 0 L 280 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qz8t86 =
    '<svg viewBox="157.5 486.5 78.0 1.0" ><path transform="translate(157.5, 486.5)" d="M 0 0 L 78 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
