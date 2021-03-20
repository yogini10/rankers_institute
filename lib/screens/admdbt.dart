import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;

class AdmDoubt extends StatefulWidget {
  final List doubts;

  const AdmDoubt({Key key, this.doubts}) : super(key: key);
  @override
  _AdmDoubtState createState() => _AdmDoubtState();
}

class _AdmDoubtState extends State<AdmDoubt> {
  List<Widget> getlist(List map) {
    return List<Column>.generate(map.length, (index) {
      return Column(
        children: [
          ListTile(
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
                            color: map[index]['isSolved']
                                ? Colors.green
                                : Colors.red,
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
              child: Text('NO DOUBT...'),
            )
          : ListView(
              children: getlist(widget.doubts),
            ),
    );
  }
}
