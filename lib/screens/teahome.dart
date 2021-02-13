import 'package:flutter/material.dart';
import 'package:rankers_institute/widgets/hpimg.dart';
import 'package:rankers_institute/widgets/loading.dart';
import 'package:rankers_institute/globals.dart' as g;

class TeaHome extends StatelessWidget {
  TeaHome({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isload = false;
    return isload
        ? LoadingScreen()
        : Scaffold(
            backgroundColor: const Color(0xffcaf0f8),
            body: Padding(
              padding: EdgeInsets.only(
                  left: g.width * 0.03,
                  right: g.width * 0.03,
                  top: g.height * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [hpImage('1'), hpImage('2')],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [hpImage('3'), hpImage('4')],
                  ),
                  SizedBox(
                    height: g.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [hpImage('5'), hpImage('Online Lecture')],
                  ),
                ],
              ),
            ),
            // body: Stack(
            //   children: <Widget>[
            //     // Transform.translate(
            //     //   offset: Offset(18.0, 109.0),
            //     //   child:
            //     //       // Adobe XD layer: '1' (shape)
            //     //       Container(
            //     //     width: 174.0,
            //     //     height: 174.0,
            //     //     decoration: BoxDecoration(
            //     //       image: DecorationImage(
            //     //         image: const AssetImage(''),
            //     //         fit: BoxFit.fill,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     // Transform.translate(
            //     //   offset: Offset(221.0, 109.0),
            //     //   child:
            //     //       // Adobe XD layer: '2' (shape)
            //     //       Container(
            //     //     width: 174.0,
            //     //     height: 174.0,
            //     //     decoration: BoxDecoration(
            //     //       image: DecorationImage(
            //     //         image: const AssetImage(''),
            //     //         fit: BoxFit.fill,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     // Transform.translate(
            //     //   offset: Offset(221.0, 300.0),
            //     //   child:
            //     //       // Adobe XD layer: '4' (shape)
            //     //       Container(
            //     //     width: 174.0,
            //     //     height: 174.0,
            //     //     decoration: BoxDecoration(
            //     //       image: DecorationImage(
            //     //         image: const AssetImage(''),
            //     //         fit: BoxFit.fill,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     // Transform.translate(
            //     //   offset: Offset(13.0, 497.0),
            //     //   child:
            //     //       // Adobe XD layer: '5' (shape)
            //     //       Container(
            //     //     width: 183.0,
            //     //     height: 183.0,
            //     //     decoration: BoxDecoration(
            //     //       image: DecorationImage(
            //     //         image: const AssetImage(''),
            //     //         fit: BoxFit.fill,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     // Transform.translate(
            //     //   offset: Offset(217.0, 497.0),
            //     //   child:
            //     //       // Adobe XD layer: '7' (shape)
            //     //       Container(
            //     //     width: 183.0,
            //     //     height: 183.0,
            //     //     decoration: BoxDecoration(
            //     //       image: DecorationImage(
            //     //         image: const AssetImage(''),
            //     //         fit: BoxFit.fill,
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //   ],
            // ),
          );
  }
}
