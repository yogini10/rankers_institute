import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/newcontappbar.dart';

class MYprofilestudent extends StatefulWidget {
  List subs;
  MYprofilestudent({
    Key key,
  }) : super(key: key);

  @override
  _MYprofilestudentState createState() => _MYprofilestudentState();
}

class _MYprofilestudentState extends State<MYprofilestudent> {
  bool isEditName = false;
  bool isEditEmail = false;
  bool isEditContact = false;
  bool isEditSub = false;
  String sub;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ncAppBaer(),
        backgroundColor: const Color(0xffcaf0f8),
        body: Padding(
          padding: EdgeInsets.only(
              top: g.height * 0.025, left: g.width * 0.1, right: g.width * 0.1),
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
                            controller: g.stuName,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.arrowRight),
                            onPressed: null)
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(g.stuGlob.name),
                        IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              g.teaName.text = g.teaGlob.teacherName;
                              setState(() {});
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
                            onPressed: null)
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
              isEditContact
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: g.width * 0.6,
                          child: TextField(
                            controller: g.stuContact,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.arrowRight),
                            onPressed: null)
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(g.stuGlob.contact),
                        IconButton(icon: Icon(Icons.edit), onPressed: null)
                      ],
                    ),
              SizedBox(
                height: g.height * 0.035,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Class: ' + g.stuGlob.classId),
                ],
              ),
              SizedBox(
                height: g.height * 0.065,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Roll no: ' + g.stuGlob.rollNo),
                ],
              ),
            ],
          ),
        ),
        // body: Stack(
        //   children: <Widget>[
        //
        //
        //     Transform.translate(
        //       offset: Offset(69.0, 587.0),
        //       child: Text(
        //         'ID',
        //         style: TextStyle(
        //           fontFamily: 'Segoe UI',
        //           fontSize: 13,
        //           color: const Color(0xff707070),
        //         ),
        //         textAlign: TextAlign.left,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
