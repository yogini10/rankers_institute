import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

TextFormField logPgField(len, hint, ispass) {
  return TextFormField(
    style: TextStyle(
      fontFamily: 'Lucida Fax',
      fontSize: 22,
      color: const Color(0xff000000),
    ),
    obscureText: ispass,
    maxLength: len,
    maxLengthEnforced: true,
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      contentPadding: EdgeInsets.only(
          left: g.width * 0.045,
          right: g.width * 0.045,
          top: g.height * 0.018,
          bottom: g.height * 0.018),
      filled: true,
      fillColor: const Color(0xe3ffffff),
      hintText: hint,
      hintStyle: TextStyle(
        fontFamily: 'Lucida Fax',
        fontSize: 22,
        color: const Color(0xff707070),
      ),
    ),
  );
}
