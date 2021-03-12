import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class SchedTile extends StatefulWidget {
  @override
  _SchedTileState createState() => _SchedTileState();
}

class _SchedTileState extends State<SchedTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: g.height * 0.01, horizontal: g.width * 0.02),
      child: Container(
        height: g.height * 0.097,
        width: g.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(g.height * 0.015)),
          boxShadow: [
            BoxShadow(
              color: const Color(0x24000000),
              offset: Offset(0, 3),
              blurRadius: 9,
            ),
          ],
          color: const Color(0xffcaf0f8),
        ),
        child: Center(
          child: Text(''),
        ),
      ),
    );
  }
}
