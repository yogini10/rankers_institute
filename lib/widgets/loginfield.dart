import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;

class LogPgField extends StatefulWidget {
  final int len;
  final String hint;
  bool ispass;
  final TextEditingController ctrl;
  final Function fun;
  final bool pass;
  LogPgField(
      {Key key,
      this.ctrl,
      this.fun,
      this.hint,
      this.ispass,
      this.len,
      this.pass})
      : super(key: key);
  @override
  _LogPgFieldState createState() => _LogPgFieldState();
}

class _LogPgFieldState extends State<LogPgField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      validator: widget.fun,
      style: g.loginpgstyles(Color(0xff000000)),
      obscureText: widget.ispass, //if the field is for password
      maxLength: widget.len,
      maxLengthEnforced: true,
      decoration: InputDecoration(
        suffix: widget.pass
            ? IconButton(
                padding: EdgeInsets.all(0),
                icon: FaIcon(
                  widget.ispass
                      ? FontAwesomeIcons.solidEye
                      : FontAwesomeIcons.solidEyeSlash,
                ),
                onPressed: () {
                  setState(() {
                    widget.ispass = !widget.ispass;
                  });
                },
              )
            : SizedBox(
                height: g.height * 0.001,
              ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: EdgeInsets.only(
            left: g.width * 0.045,
            right: g.width * 0.045,
            top: g.height * 0.005,
            bottom: g.height * 0.005),
        filled: true,
        fillColor: const Color(0xe3ffffff),
        hintText: widget.hint,
        hintStyle: g.loginpgstyles(Color(0xff707070)),
      ),
    );
  }
}

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
      suffix: IconButton(
        icon: FaIcon(FontAwesomeIcons.search),
        onPressed: () {},
      ),
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
