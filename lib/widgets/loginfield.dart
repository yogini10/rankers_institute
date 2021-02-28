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

class TxtField extends StatefulWidget {
  final String hint;
  final TextEditingController ctrl;

  const TxtField({Key key, this.hint, this.ctrl}) : super(key: key);
  @override
  _TxtFieldState createState() => _TxtFieldState();
}

class _TxtFieldState extends State<TxtField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.ctrl,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        contentPadding: EdgeInsets.only(
            left: g.width * 0.014,
            right: g.width * 0.014,
            top: g.height * 0.001,
            bottom: g.height * 0.001),
        filled: true,
        fillColor: const Color(0xe3ffffff),
        hintText: widget.hint,
      ),
    );
  }
}

class ATSInpField extends StatefulWidget {
  final TextEditingController edit;

  ATSInpField({Key key, this.edit}) : super(key: key);
  @override
  _ATSInpFieldState createState() => _ATSInpFieldState();
}

class _ATSInpFieldState extends State<ATSInpField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.edit,
      style: g.adduserstyles(Color(0xff000000)),
      decoration: InputDecoration(isCollapsed: true),
    );
  }
}
