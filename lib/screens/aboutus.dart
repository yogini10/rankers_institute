import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/widgets/newcontappbar.dart';

class AboutUs extends StatefulWidget {
  final int index;

  const AboutUs({Key key, this.index}) : super(key: key);
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Column lista(index) {
    var j = index + 1;
    return Column(
      children: [
        Center(
          child: Container(
            width: g.width,
            height: g.height * 0.888,
            decoration: BoxDecoration(
              border: Border.all(width: 3.0, color: Colors.black),
              image: DecorationImage(
                image: AssetImage('lib/assets/aboutus/Title Page ($j).png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
          return Future.value(false);
        },
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > g.width * 0.02) {
              if (widget.index != 0) {
                Navigator.pop(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => AboutUs(
                      index: widget.index - 1,
                    ),
                    transitionsBuilder: (
                      BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                      Widget child,
                    ) =>
                        SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                );
              }
            } else if (details.delta.dx < -(g.width * 0.02)) {
              if (widget.index != 8) {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => AboutUs(
                        index: widget.index + 1,
                      ),
                      transitionsBuilder: (
                        BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child,
                      ) =>
                          SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      ),
                    ));
              }
            }
          },
          child: Scaffold(
            appBar: ncAppBaer(),
            body: lista(widget.index),
          ),
        ),
      ),
    );
  }
}
