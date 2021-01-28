import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

//for the textfields in login page that are of same type
TextFormField logPgField(len, hint, ctrl, ispass, fun) {
  return TextFormField(
    controller: ctrl,
    validator: fun,
    style: g.loginpgstyles(Color(0xff000000)),
    obscureText: ispass, //if the field is for password
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
      hintStyle: g.loginpgstyles(Color(0xff707070)),
    ),
  );
}
