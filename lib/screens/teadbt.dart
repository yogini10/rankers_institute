import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/services/dbser.dart';
import 'package:url_launcher/url_launcher.dart';

class TeaDoubt extends StatefulWidget {
  final List doubts;

  const TeaDoubt({Key key, this.doubts}) : super(key: key);
  @override
  _TeaDoubtState createState() => _TeaDoubtState();
}

class _TeaDoubtState extends State<TeaDoubt> {
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
                        TeaFullDoubt(
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
      body: widget.doubts == null || widget.doubts.isEmpty
          ? Center(
              child: Text('NO DOUBT FOR YOU TO SOLVE...'),
            )
          : ListView(
              children: getlist(widget.doubts),
            ),
    );
  }
}

class TeaFullDoubt extends StatefulWidget {
  final Map doubt;

  const TeaFullDoubt({Key key, this.doubt}) : super(key: key);
  @override
  _TeaFullDoubtState createState() => _TeaFullDoubtState();
}

class _TeaFullDoubtState extends State<TeaFullDoubt> {
  Future uploadFile(File f) async {
    try {
      await FirebaseStorage.instance
          .ref('solution/${p.basename(f.path)}')
          .putFile(f);
      String downloadURL = await FirebaseStorage.instance
          .ref('solution/${p.basename(f.path)}')
          .getDownloadURL();
      return downloadURL;
    } on FirebaseException catch (e) {
      return null;
    }
  }

  File file;
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
            onPressed: () async {
              file = await FilePicker.getFile();
              if (file != null) {
                var url = await uploadFile(file);
                await DatabaseServices(uid: g.uid)
                    .addSoln(widget.doubt['fileID'], url);
              }
              Navigator.pop(context);
              Navigator.pop(context);
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
                'Add solution',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
            ),
          )
        ],
      ),
    );
  }
}
