import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

Container hpImage(name) {
  return Container(
    width: g.width * 0.45,
    height: g.height * 0.23,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('lib/assets/$name.png'),
        fit: BoxFit.fill,
      ),
    ),
  );
}
