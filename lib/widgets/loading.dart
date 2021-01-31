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
                color: Colors.white,
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
                  color: Colors.white,
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
