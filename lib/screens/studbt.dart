import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/loginfield.dart';
import 'package:url_launcher/url_launcher.dart';

class StuDoubt extends StatefulWidget {
  final List doubts;

  const StuDoubt({Key key, this.doubts}) : super(key: key);
  @override
  _StuDoubtState createState() => _StuDoubtState();
}

class _StuDoubtState extends State<StuDoubt> {
  List<Widget> getlist(List map) {
    return List<Column>.generate(map.length, (index) {
      return Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        StuFullDoubt(
                          doubt: map[index],
                        )),
              );
            },
            title: Container(
              color: Color(0xffffffff).withOpacity(0.75),
              height: g.height * 0.14,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: g.width * 0.05, right: g.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Text(
                            map[index]['dtitle'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.image),
                          Icon(
                            Icons.message,
                            color: Colors.green,
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: ListView(
        children: getlist(widget.doubts),
      ),
      // body: Center(
      //   child: Text('ADD ANY DOUBT...'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List allS;
          allS = await DatabaseServices(uid: g.uid).allSubs(g.stuGlob.classId);
          Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    NewDoubt(
                      subs: allS,
                    )),
          );
        },
        backgroundColor: Color(0xff90e0ef),
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}

class StuFullDoubt extends StatefulWidget {
  final Map doubt;

  const StuFullDoubt({Key key, this.doubt}) : super(key: key);
  @override
  _StuFullDoubtState createState() => _StuFullDoubtState();
}

class _StuFullDoubtState extends State<StuFullDoubt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: g.width * 0.15,
                right: g.width * 0.15,
                bottom: g.height * 0.05),
            child: Row(
              children: [
                Text(
                  widget.doubt['dtitle'],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: g.width * 0.1,
                right: g.width * 0.1,
                bottom: g.height * 0.05),
            child: Text(widget.doubt['details']),
          ),
          RawMaterialButton(
            onPressed: () {
              launch(widget.doubt['fileID']);
            },
            child: Container(
              height: g.height * 0.07,
              width: g.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xff0077b6).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                'Show related file',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
            ),
          ),
          SizedBox(
            height: g.height * 0.02,
          ),
          RawMaterialButton(
            onPressed: null,
            child: Container(
              height: g.height * 0.07,
              width: g.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xff0077b6).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                'Show solution',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class NewDoubt extends StatefulWidget {
  final List subs;

  const NewDoubt({Key key, this.subs}) : super(key: key);
  @override
  _NewDoubtState createState() => _NewDoubtState();
}

class _NewDoubtState extends State<NewDoubt> {
  Future uploadFile(File f) async {
    try {
      await FirebaseStorage.instance
          .ref('doubts/${p.basename(f.path)}')
          .putFile(f);
      String downloadURL = await FirebaseStorage.instance
          .ref('doubts/${p.basename(f.path)}')
          .getDownloadURL();
      return downloadURL;
    } on FirebaseException catch (e) {
      return null;
    }
  }

  File file;
  String subs;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: const Color(0xffcaf0f8),
        body: Center(
          child: Container(
            width: g.width * 0.9,
            height: g.height * 0.82,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(g.width * 0.15),
              color: Color(0xffffffff).withOpacity(0.55),
            ),
            padding: EdgeInsets.only(
              top: g.height * 0.05,
              left: g.width * 0.075,
              right: g.width * 0.075,
            ),
            child: ListView(
              children: [
                Text(
                  'Add Doubt',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 24,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: g.height * 0.035,
                ),
                Row(
                  children: [
                    Text('Title'),
                  ],
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                ATSInpField(edit: g.title),
                SizedBox(
                  height: g.height * 0.03,
                ),
                Row(
                  children: [
                    Text('Description'),
                  ],
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                ATSInpField(edit: g.details),
                SizedBox(
                  height: g.height * 0.03,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: subs,
                  elevation: 16,
                  hint: Text('Subject'),
                  style: g.loginpgstyles(
                    Color(0xff000000),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      subs = newValue;
                    });
                  },
                  items: widget.subs.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value['subject'],
                      child: Text(
                        value['subject'],
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: g.height * 0.03,
                ),
                Center(
                  child: RawMaterialButton(
                    onPressed: () async {
                      file = await FilePicker.getFile();
                    },
                    child: Container(
                      width: g.width * 0.5,
                      height: g.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff90e0ef),
                      ),
                      child: Center(child: Text('Choose a File')),
                    ),
                  ),
                ),
                Center(
                  child: RawMaterialButton(
                    onPressed: () async {
                      var url = await uploadFile(file);
                      DatabaseServices(uid: g.uid)
                          .addDoubt(g.details.text, g.title.text, url, subs);
                      g.details.clear();
                      g.title.clear();
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: g.width * 0.5,
                      height: g.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff90e0ef),
                      ),
                      child: Center(child: Text('Add the doubt')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
