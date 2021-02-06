import 'package:flutter/material.dart';
import 'package:rankers_institute/screens/stuhome.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/listclassmaterial.dart';

class MaterialClass extends StatefulWidget {
  final List list;
  MaterialClass({Key key, this.list}) : super(key: key);
  @override
  _MaterialClassState createState() => _MaterialClassState();
}

class _MaterialClassState extends State<MaterialClass> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                      StuHome()),
            );
          },
        ),
      ),
    ]);
  }
}
