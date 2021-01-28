import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff90e0ef),
      body: Center(
        child: SpinKitRotatingCircle(
          color: Color(0xffcaf0f8),
          size: 50.0,
        ),
      ),
    );
  }
}
