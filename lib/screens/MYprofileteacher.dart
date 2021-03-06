import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/models/teachers.dart';
import 'package:rankers_institute/models/user.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';

class MYprofileteacher extends StatefulWidget {
  final List subs;
  MYprofileteacher({
    Key key,
    this.subs,
  }) : super(key: key);

  @override
  _MYprofileteacherState createState() => _MYprofileteacherState();
}

class _MYprofileteacherState extends State<MYprofileteacher> {
  bool isEditName = false;
  bool isEditEmail = false;
  bool isEditSub = false;
  String sub = g.teaGlob.subject;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: ncAppBaer(),
          backgroundColor: const Color(0xffcaf0f8),
          body: Padding(
            padding: EdgeInsets.only(
                top: g.height * 0.025,
                left: g.width * 0.1,
                right: g.width * 0.1),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    width: g.width * 0.4,
                    height: g.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(g.width * 0.2),
                      image: DecorationImage(
                        image: const AssetImage('lib/assets/user.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: g.height * 0.075,
                ),
                isEditName
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: g.width * 0.6,
                            child: TextField(
                              controller: g.teaName,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.arrowRight),
                              onPressed: () async {
                                if (g.teaName.text.isNotEmpty) {
                                  setState(() {
                                    g.teaGlob.teacherName = g.teaName.text;
                                  });
                                  await DatabaseServices(uid: g.uid)
                                      .updateTeaInfo(
                                          Teacher(
                                              tId: g.teaGlob.tId,
                                              subject: sub,
                                              teacherName: g.teaName.text),
                                          false);
                                }
                                setState(() {
                                  isEditName = false;
                                });
                              })
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(g.teaGlob.teacherName),
                          IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                g.teaName.text = g.teaGlob.teacherName;
                                setState(() {
                                  isEditName = true;
                                });
                              })
                        ],
                      ),
                SizedBox(
                  height: g.height * 0.035,
                ),
                isEditEmail
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: g.width * 0.6,
                            child: TextField(
                              controller: g.teaEmail,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.arrowRight),
                              onPressed: () async {
                                if (g.teaEmail.text.isNotEmpty) {
                                  setState(() {
                                    g.userGlob.email = g.teaEmail.text;
                                  });
                                  await DatabaseServices(uid: g.uid)
                                      .updateUserInfo(
                                          User(
                                              uid: g.teaGlob.tId,
                                              email: g.teaEmail.text,
                                              password: g.userGlob.password,
                                              usertype: g.userGlob.usertype),
                                          false);
                                }
                                setState(() {
                                  isEditEmail = false;
                                });
                              })
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(g.userGlob.email),
                          IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                setState(() {
                                  g.teaEmail.text = g.userGlob.email;
                                  isEditEmail = true;
                                });
                              })
                        ],
                      ),
                SizedBox(
                  height: g.height * 0.035,
                ),
                isEditSub
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: g.width * 0.6,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: sub,
                              elevation: 16,
                              hint: Text('Subjects'),
                              onChanged: (String newValue) {
                                setState(() {
                                  sub = newValue;
                                });
                              },
                              items: widget.subs
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.arrowRight),
                              onPressed: () {
                                setState(() {
                                  g.teaGlob.subject = sub;
                                  DatabaseServices(uid: g.uid).updateTeaInfo(
                                      Teacher(
                                          tId: g.teaGlob.tId,
                                          subject: sub,
                                          teacherName: g.teaName.text),
                                      false);
                                  isEditSub = false;
                                });
                              })
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(g.teaGlob.subject),
                          IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                setState(() {
                                  sub = g.teaGlob.subject;
                                  isEditSub = true;
                                });
                              })
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
