import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/stuhome.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';

class SMSub extends StatefulWidget {
  final List list;
  SMSub({Key key, this.list}) : super(key: key);
  @override
  _SMSubState createState() => _SMSubState();
}

class _SMSubState extends State<SMSub> {
  bool isload = false;
  List<Widget> lcmat(List maps) {
    return List<Column>.generate(maps.length, (index) {
      return Column(
        children: [
          ListTile(
            onTap: () async {
              setState(() {
                isload = true;
              });
              List allS;
              allS = await DatabaseServices(uid: g.uid)
                  .getMaterial(g.stuGlob.classId, maps[index]['subject']);
              isload = false;
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      StuMaterial(
                    mat: allS,
                  ),
                ),
              );
            },
            title: Container(
              color: Color(0xffffffff).withOpacity(0.75),
              height: g.height * 0.07,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: g.width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        maps[index]['subject'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: g.height * 0.02,
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      bgsubs(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Padding(
            padding: EdgeInsets.only(
              top: g.height * 0.07,
            ),
            child: ListView(
              children: lcmat(widget.list),
            ),
          ),
        ),
      ),
      Transform.translate(
        offset: Offset(0, 0),
        child: IconButton(
          icon: Icon(
            Icons.home,
            size: 40,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
      ),
    ]);
  }
}

class StuMaterial extends StatefulWidget {
  final List mat;

  const StuMaterial({Key key, this.mat}) : super(key: key);
  @override
  _StuMaterialState createState() => _StuMaterialState();
}

class _StuMaterialState extends State<StuMaterial> {
  List<Widget> list(List maps) {
    return List.generate(maps.length, (index) {
      return Column(
        children: [
          ListTile(
            onTap: () {
              launch(maps[index]['materialLink']);
            },
            title: Container(
              color: Color(0xffffffff).withOpacity(0.75),
              height: g.height * 0.07,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: g.width * 0.05),
                  child: Row(
                    children: [
                      Container(
                        width: g.width * 0.812,
                        child: Text(
                          p.basename(maps[index]['materialLink']),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: g.height * 0.02,
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: widget.mat.isEmpty
          ? Center(
              child: Text('No material for this subject'),
            )
          : Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: g.height * 0.01,
                ),
                child: ListView(
                  children: list(widget.mat),
                ),
              ),
            ),
    );
  }
}
