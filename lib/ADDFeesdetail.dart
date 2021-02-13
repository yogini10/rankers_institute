import 'package:flutter/material.dart';

class ADDFeesdetail extends StatelessWidget {
  ADDFeesdetail({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffcaf0f8),
        body: Stack(
          children: <Widget>[
            Container(
              width: 414.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            Container(
              width: 36.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: const Color(0xff1c1616),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
            SizedBox(
              width: 218.0,
              height: 30.0,
              child: Text(
                'Ranker\'s Institute',
                style: TextStyle(
                  fontFamily: 'Lucida Bright',
                  fontSize: 24,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // SvgPicture.string(
            //   _svg_80eiyd,
            //   allowDrawingOutsideViewBox: true,
            // ),
            // Text(
            //   'Name:',
            //   style: TextStyle(
            //     fontFamily: 'Segoe UI',
            //     fontSize: 16,
            //     color: const Color(0xff707070),
            //   ),
            //   textAlign: TextAlign.left,
            // ),
            // Transform.translate(
            //   offset: Offset(54.7, 236.5),
            //   child: SvgPicture.string(
            //     _svg_z9ec6s,
            //     allowDrawingOutsideViewBox: true,
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(58.0, 255.0),
            //   child: SizedBox(
            //     width: 113.0,
            //     height: 34.0,
            //     child: Text(
            //       'ID :',
            //       style: TextStyle(
            //         fontFamily: 'Segoe UI',
            //         fontSize: 15,
            //         color: const Color(0xff707070),
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(54.7, 397.5),
            //   child: SvgPicture.string(
            //     _svg_egz1bq,
            //     allowDrawingOutsideViewBox: true,
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(123.0, 107.0),
            //   child: Text(
            //     'Add fees Detail ',
            //     style: TextStyle(
            //       fontFamily: 'Segoe UI',
            //       fontSize: 24,
            //       color: const Color(0xff707070),
            //     ),
            //     textAlign: TextAlign.left,
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(59.0, 527.0),
            //   child: SizedBox(
            //     width: 185.0,
            //     height: 29.0,
            //     child: Text(
            //       'Total Amount:',
            //       style: TextStyle(
            //         fontFamily: 'Segoe UI',
            //         fontSize: 15,
            //         color: const Color(0xff707070),
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(54.7, 603.0),
            //   child: SvgPicture.string(
            //     _svg_a3rpbb,
            //     allowDrawingOutsideViewBox: true,
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(53.0, 433.0),
            //   child: SizedBox(
            //     width: 141.0,
            //     height: 21.0,
            //     child: Text(
            //       'Remaining Amount:',
            //       style: TextStyle(
            //         fontFamily: 'Segoe UI',
            //         fontSize: 15,
            //         color: const Color(0xff707070),
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(58.0, 344.0),
            //   child: SizedBox(
            //     width: 113.0,
            //     height: 34.0,
            //     child: Text(
            //       'Amount Paid :',
            //       style: TextStyle(
            //         fontFamily: 'Segoe UI',
            //         fontSize: 15,
            //         color: const Color(0xff707070),
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //   ),
            // ),
            // Transform.translate(
            //   offset: Offset(105.0, 626.0),
            //   child: SingleChildScrollView(
            //     child: Wrap(
            //       alignment: WrapAlignment.center,
            //       spacing: 20,
            //       runSpacing: 20,
            //       children: [{}].map((map) {
            //         return SizedBox(
            //           width: 178.0,
            //           height: 40.0,
            //           child: Stack(
            //             children: <Widget>[
            //               Transform.translate(
            //                 offset: Offset(0.0, 1.0),
            //                 child: Container(
            //                   width: 178.0,
            //                   height: 39.0,
            //                   decoration: BoxDecoration(
            //                     color: const Color(0xffbef6ef),
            //                     border: Border.all(
            //                         width: 1.0, color: const Color(0xff707070)),
            //                   ),
            //                 ),
            //               ),
            // Transform.translate(
            //   offset: Offset(58.0, 0.0),
            //   child: Text(
            //     'Add ',
            //     style: TextStyle(
            //       fontFamily: 'Segoe UI Historic',
            //       fontSize: 30,
            //       color: const Color(0xff000000),
            //     ),
            //     textAlign: TextAlign.left,
            //   ),
            // ),
          ],
        ),
      ),
    );
    // }),
    // ),
    // ),
    // ),
    // ],
    // ),
    // );
  }
}
