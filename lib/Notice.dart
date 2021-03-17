import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/loginfield.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';
import 'package:rankers_institute/globals.dart' as g;

class AdmNotice extends StatefulWidget {
  AdmNotice({
    Key key,
  }) : super(key: key);

  @override
  _AdmNoticeState createState() => _AdmNoticeState();
}

class _AdmNoticeState extends State<AdmNotice> {
  Future uploadFile(File f) async {
    try {
      await FirebaseStorage.instance
          .ref('notice/${p.basename(f.path)}')
          .putFile(f);
      String downloadURL = await FirebaseStorage.instance
          .ref('notice/${p.basename(f.path)}')
          .getDownloadURL();
      return downloadURL;
    } on FirebaseException catch (e) {
      return '';
    }
  }

  File file;
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
          resizeToAvoidBottomInset: true,
          body: Center(
            child: Container(
              height: g.height * 0.8,
              width: g.width * 0.85,
              decoration: BoxDecoration(
                color: Color(0xffffffff).withOpacity(0.55),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: g.height * 0.05,
                  left: g.width * 0.075,
                  right: g.width * 0.075,
                ),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        'Add a Notice',
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: g.height * 0.05,
                    ),
                    Text('Title'),
                    SizedBox(
                      height: g.height * 0.01,
                    ),
                    ATSInpField(edit: g.title),
                    SizedBox(
                      height: g.height * 0.03,
                    ),
                    Text('Description'),
                    SizedBox(
                      height: g.height * 0.01,
                    ),
                    ATSInpField(
                      edit: g.details,
                    ),
                    SizedBox(
                      height: g.height * 0.03,
                    ),
                    Center(
                      child: RawMaterialButton(
                        onPressed: () async {
                          file = await FilePicker.getFile(type: FileType.image);
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
                          if (file != null) {
                            var url = await uploadFile(file);
                            DatabaseServices(uid: g.uid)
                                .addNotice(g.details.text, g.title.text, url);
                          }
                          g.details.clear();
                          g.title.clear();
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: g.width * 0.5,
                          height: g.height * 0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff90e0ef),
                          ),
                          child: Center(child: Text('Add')),
                        ),
                      ),
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

class Notice extends StatefulWidget {
  final List mylist;

  const Notice({Key key, this.mylist}) : super(key: key);
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  List<Widget> list(List map) {
    return List.generate(map.length, (index) {
      return ListTile(
        onTap: () async {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => FullNotice(
                        notice: map[index],
                      )));
        },
        title: Container(
          height: g.height * 0.1,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: g.width * 0.1, top: g.height * 0.02),
                    child: Text(
                      map[index]['title'],
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: g.width * 0.1, top: g.height * 0.02),
                    child: Text('Date :' +
                        map[index]['date'].toString() +
                        '-' +
                        map[index]['month'].toString() +
                        '-' +
                        map[index]['year'].toString()),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ncAppBaer(),
        backgroundColor: const Color(0xffcaf0f8),
        body: widget.mylist.length == 0
            ? Center(
                child: Text('No Notice for you'),
              )
            : ListView(
                padding: EdgeInsets.only(top: g.height * 0.03),
                children: list(widget.mylist),
              ),
      ),
    );
  }
}

class FullNotice extends StatefulWidget {
  final Map notice;

  const FullNotice({Key key, this.notice}) : super(key: key);
  @override
  _FullNoticeState createState() => _FullNoticeState();
}

class _FullNoticeState extends State<FullNotice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ncAppBaer(),
        backgroundColor: const Color(0xffcaf0f8),
        body: ListView(
          children: [
            SizedBox(
              height: g.height * 0.03,
            ),
            Container(
              color: Colors.white.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.only(
                  left: g.width * 0.15,
                  right: g.width * 0.15,
                ),
                child: Row(
                  children: [
                    Text(
                      widget.notice['title'],
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: g.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: g.width * 0.1,
                  right: g.width * 0.1,
                  bottom: g.height * 0.05),
              child: Text(widget.notice['details']),
            ),
            SizedBox(
              height: g.height * 0.05,
            ),
            Container(
              height: g.height * 0.2,
              child: Image.network(widget.notice['fileID']),
            )
          ],
        ),
      ),
    );
  }
}
