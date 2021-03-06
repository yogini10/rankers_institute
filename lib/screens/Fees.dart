import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/models/feesm.dart';
import 'package:rankers_institute/widgets/newcontappbar.dart';

class Fees extends StatefulWidget {
  final FeesM fees;
  Fees({
    Key key,
    this.fees,
  }) : super(key: key);

  @override
  _FeesState createState() => _FeesState();
}

class _FeesState extends State<Fees> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ncAppBaer(), //new appbar
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
                        g.stuGlob.name,
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
                        widget.fees.amtpaid.toString(),
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
                        (widget.fees.amttotal - widget.fees.amtpaid).toString(),
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
                        widget.fees.amttotal.toString(),
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
