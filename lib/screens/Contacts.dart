import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/loc.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatelessWidget {
  Contactus({
    Key key,
  }) : super(key: key);
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
                      'Dummy Student Name',
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
                      'Dummy email',
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
                    Text(
                      'Dummy contact',
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
                      onPressed: null,
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
                            'SUBMIT',
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
