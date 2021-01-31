import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:flutter_svg/flutter_svg.dart';

class Fees extends StatelessWidget {
  Fees({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  });
            },
          ),
          backgroundColor: const Color(0xffffffff),
          title: Text(
            'Ranker\'s Institute',
            style: TextStyle(
              fontFamily: 'Lucida Bright',
              fontSize: 25,
              color: const Color(0xff0e0d0d),
            ),
          ),
        ),
        backgroundColor: const Color(0xffcaf0f8),
        body: Center(
          child: Container(
            width: g.width * 0.9,
            height: g.height * 0.6,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(g.width * 0.2),
              color: Color(0xffffffff).withOpacity(0.55),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FEES',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 24,
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: g.height * 0.035,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 16,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Dummy Student Name',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Amount Paid :',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Dummy Amount Paid',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Remaining Amount:',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Dummy Remaining amount',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Total Amount:',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: const Color(0xff707070),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: g.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: g.width * 0.08),
                  child: Row(
                    children: [
                      Text(
                        'Dummy Total Amount',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                        ),
                      ),
                    ],
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
