import 'package:flutter/material.dart';

class homePageadmin extends StatelessWidget {
  homePageadmin({
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
            offset: Offset(4.0, 24.0),
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
            offset: Offset(4.0, 42.0),
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
            offset: Offset(110.0, -6.0),
            child: Text(
              ' ',
              style: TextStyle(
                fontFamily: 'Lucida Bright',
                fontSize: 35,
                color: const Color(0xff0e0d0d),
              ),
              textAlign: TextAlign.left,
            ),
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
            offset: Offset(18.0, 106.0),
            child:
                // Adobe XD layer: '1' (shape)
                Container(
              width: 174.0,
              height: 174.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(221.0, 109.0),
            child:
                // Adobe XD layer: '2' (shape)
                Container(
              width: 174.0,
              height: 174.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(4.0, 42.0),
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
            offset: Offset(18.0, 299.0),
            child:
                // Adobe XD layer: '9' (shape)
                Container(
              width: 177.0,
              height: 177.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.0, 497.0),
            child:
                // Adobe XD layer: '7' (shape)
                Container(
              width: 183.0,
              height: 183.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 498.0),
            child:
                // Adobe XD layer: '8' (shape)
                Container(
              width: 177.0,
              height: 177.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.0, 299.0),
            child:
                // Adobe XD layer: '10' (shape)
                Container(
              width: 178.0,
              height: 178.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
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
