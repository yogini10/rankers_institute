import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/loc.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget {
  Contactus({
    Key key,
  }) : super(key: key);

  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  String error = '';
  @override
  Widget build(BuildContext context) {
    int maxlines = 5;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffcaf0f8),
          appBar: ncAppBaer(),
          body: Center(
            child: Container(
              width: g.width * 0.9,
              height: g.height * 0.8,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(g.width * 0.2),
                color: Color(0xffffffff).withOpacity(0.55),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: g.width * 0.05,
                  right: g.width * 0.05,
                  top: g.height * 0.05,
                  bottom: g.height * 0.05,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: g.width * 0.8,
                      child: Text(
                        'SEND US A MESSAGE !',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 24,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: g.width * 0.8,
                      child: Text(
                        'How can we help you today ?',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 16,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: g.height * 0.035,
                    ),
                    Text(
                      'Name:',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xff707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.005,
                    ),
                    Text(
                      g.userGlob.usertype == 'Teacher'
                          ? g.teaGlob.teacherName
                          : g.stuGlob.name,
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.025,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xff707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.005,
                    ),
                    Text(
                      g.userGlob.email,
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.025,
                    ),
                    Text(
                      'Contact no',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xff707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.005,
                    ),
                    g.userGlob.usertype == 'Student'
                        ? Text(
                            g.stuGlob.contact,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.left,
                          )
                        : Container(),
                    SizedBox(
                      height: g.height * 0.025,
                    ),
                    Text(
                      'Message:',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 13,
                        color: const Color(0xff707070),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: g.height * 0.005,
                    ),
                    Container(
                      height: maxlines * 24.0,
                      child: TextField(
                        maxLines: maxlines,
                        maxLength: 280,
                        autofocus: false,
                        controller: g.details,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xffcaf0f8),
                          hintText: 'Message',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                        ),
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () async {
                        if (g.details.text.isEmpty) {
                          setState(() {
                            error = 'Cannot send Empty Mail';
                          });
                        } else {
                          setState(() {
                            error = '';
                          });
                          final Email email = Email(
                              subject: 'Feedback: Rankers Institute',
                              recipients: ['gauravgarmode16@gmail.com'],
                              body: g.details.text);
                          String platformResponse = '';
                          try {
                            await FlutterEmailSender.send(email);
                            platformResponse = 'success';
                          } catch (error) {
                            platformResponse = error.toString();
                          }
                          g.details.clear();
                          Navigator.pop(context);
                        }
                      },
                      child: Container(
                        height: g.height * 0.04,
                        width: g.width * 0.3,
                        decoration:
                            BoxDecoration(color: Color(0xffcaf0f8), boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset.fromDirection(10, 9),
                              blurRadius: 10,
                              spreadRadius: 0.5),
                          BoxShadow(
                            color: Colors.blue[900],
                            offset: Offset.fromDirection(8, 6),
                            blurRadius: 15,
                          )
                        ]),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 13,
                              color: const Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        error,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: g.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.phoneAlt),
                            onPressed: () {
                              launch('tel://091679 87039');
                            }),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            onPressed: () {
                              launch(
                                  'https://instagram.com/rankersinstitute?igshid=puebgcuvslmz');
                            }),
                        IconButton(
                            icon: Icon(Icons.location_on_sharp),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            Location(),
                                  ));
                            }),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.facebookSquare),
                            onPressed: () {
                              launch('https://www.facebook.com/rankersinsti/');
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AdmContact extends StatefulWidget {
  @override
  _AdmContactState createState() => _AdmContactState();
}

class _AdmContactState extends State<AdmContact> {
  bool isEditName = false;
  bool isEditEmail = false;
  bool isEditContact = false;
  bool isEditSub = false;
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
              isEditEmail
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: g.width * 0.6,
                          child: TextField(
                            controller: g.stuEmail,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.arrowRight),
                            onPressed: () async {
                              g.email = g.stuEmail.text;
                              await DatabaseServices(uid: g.uid)
                                  .updateInfo(g.contact, g.email);
                              setState(() {
                                isEditEmail = false;
                              });
                            })
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(g.email),
                        IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                g.stuEmail.text = g.email;
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
                            onPressed: () async {
                              g.contact = g.stuContact.text;
                              await DatabaseServices(uid: g.uid)
                                  .updateInfo(g.contact, g.email);
                              setState(() {
                                isEditContact = false;
                              });
                            })
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(g.contact),
                        IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () async {
                              setState(() {
                                g.stuContact.text = g.contact;
                                isEditContact = true;
                              });
                            })
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
