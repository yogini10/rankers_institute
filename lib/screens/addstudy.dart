import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/admhome.dart';
import 'package:rankers_institute/services/dbser.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/loginfield.dart';

class AdmSmCls extends StatefulWidget {
  final List list;

  AdmSmCls({Key key, this.list}) : super(key: key);
  @override
  _AdmSmClsState createState() => _AdmSmClsState();
}

class _AdmSmClsState extends State<AdmSmCls> {
  bool isload = false;

  List<Widget> lcmat(List maps) {
    return List<Column>.generate(maps.length, (index) {
      return Column(
        children: [
          ListTile(
            onTap: () async {
              List allS;
              allS = await DatabaseServices(uid: g.uid)
                  .allSubs(maps[index]['class']);
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AddManually(
                    subs: allS,
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
                        maps[index]['class'],
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
    return isload
        ? LoadingScreen()
        : Stack(children: [
            bgclass(),
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
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            AdmHome()),
                  );
                },
              ),
            ),
          ]);
  }
}

class AddManually extends StatefulWidget {
  final List subs;
  AddManually({
    Key key,
    this.subs,
  }) : super(key: key);

  @override
  _AddManuallyState createState() => _AddManuallyState();
}

class _AddManuallyState extends State<AddManually> {
  String dropdownValue3;
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
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffcaf0f8),
        body: Center(
          child: Container(
            height: g.height * 0.8,
            width: g.width * 0.85,
            color: Color(0xffffffff).withOpacity(0.55),
            child: Padding(
              padding: EdgeInsets.only(
                top: g.height * 0,
                left: g.width * 0.075,
                right: g.width * 0.075,
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        AdmHome()),
                          );
                        },
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: Text(
                          'Add Material',
                          style: g.loginpgstyles(
                            Color(0xff000000),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(
                    height: g.height * 0.05,
                  ),
                  TxtField(hint: 'Name of Material'),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  Text(
                    widget.subs[0]['class'] + ' Class',
                    style: g.loginpgstyles(Colors.black),
                  ),
                  SizedBox(
                    height: g.height * 0.03,
                  ),
                  DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue3,
                    elevation: 16,
                    hint: Text('Subject'),
                    style: g.loginpgstyles(
                      Color(0xff000000),
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue3 = newValue;
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
                    height: g.height * 0.1,
                  ),
                  Center(
                    child: RawMaterialButton(
                      onPressed: null,
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
                      onPressed: null,
                      child: Container(
                        width: g.width * 0.5,
                        height: g.height * 0.055,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xff90e0ef),
                        ),
                        child: Center(child: Text('Add the material')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
