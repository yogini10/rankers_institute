import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './addstudent.dart';
import 'package:adobe_xd/page_link.dart';
import './addteacher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class addusertype extends StatelessWidget {
  addusertype({
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
            offset: Offset(75.0, 311.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => addstudent(),
                ),
              ],
              child: SizedBox(
                width: 263.0,
                height: 55.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 263.0, 55.0),
                      size: Size(263.0, 55.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(49.0, 8.0, 166.0, 40.0),
                      size: Size(263.0, 55.0),
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Text(
                        'Add Student',
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
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.0, 469.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => addteacher(),
                ),
              ],
              child: SizedBox(
                width: 263.0,
                height: 55.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 263.0, 55.0),
                      size: Size(263.0, 55.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(60.0, 0.0, 167.0, 40.0),
                      size: Size(263.0, 55.0),
                      pinRight: true,
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Add Teacher',
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
