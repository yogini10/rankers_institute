import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

Container hpImage(name) {
  return Container(
    width: g.width * 0.45,
    height: g.height * 0.23,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      image: DecorationImage(
        image: AssetImage('lib/assets/$name.png'),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget bgclass() {
  return Transform.translate(
    offset: Offset(-(g.width * 0.5), 0),
    child: Transform.scale(
      scale: 2.9,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Color(0xffcaf0f8).withOpacity(0.7), BlendMode.dstATop),
            image: const AssetImage('lib/assets/book2.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ),
  );
}

Widget bgsubs() {
  return Transform.translate(
    offset: Offset(0, 0),
    child: Transform.scale(
      scale: 1.5,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Color(0xffcaf0f8).withOpacity(0.3), BlendMode.dstATop),
            image: const AssetImage('lib/assets/creative.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ),
  );
}
