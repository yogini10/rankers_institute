import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff90e0ef),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Container()),
              SpinKitRotatingCircle(
                color: Color(0xffcaf0f8),
                size: 50.0,
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                'Loading...',
                style: TextStyle(
                  fontFamily: 'Lucida Bright',
                  fontSize: 40,
                  color: const Color(0xffcaf0f8),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
