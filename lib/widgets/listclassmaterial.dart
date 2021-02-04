import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

List<Widget> lcmat(List maps) {
  return List<Column>.generate(maps.length, (index) {
    return Column(
      children: [
        Container(
          color: Color(0xffffffff).withOpacity(0.75),
          height: g.height * 0.07,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: g.width * 0.05),
              child: Row(
                children: [
                  Text(
                    maps[index]['class'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
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
